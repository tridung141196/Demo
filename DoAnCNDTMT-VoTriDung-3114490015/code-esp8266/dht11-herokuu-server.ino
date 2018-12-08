#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <ESP8266WiFiMulti.h>
#include <ESP8266HTTPClient.h>
#include "DHT.h"

#define Serial Serial
#define DHTPIN 2
#define DHTTYPE DHT11

int limTemp = 15;
int limHumd = 15;
ESP8266WiFiMulti WiFiMulti;
DHT dht(DHTPIN, DHTTYPE);
void setup() {
  pinMode(16, OUTPUT);
  Serial.begin(115200);
  Serial.println();
  Serial.println();
  Serial.println();
  for(uint8_t t = 4; t > 0; t--) {
      Serial.printf("[SETUP] WAIT %d...\n", t);
      Serial.flush();
      delay(1000);
  }
  WiFiMulti.addAP("Wifi", "quenpassroi");
  WiFiMulti.addAP("Samsung", "12345678");
}

void loop() {
  String ledsta;
  float h = random(10,20);//dht.readHumidity();
  float t = random(10,20);//dht.readTemperature();
  if( t > limTemp ){
    digitalWrite(16,HIGH);
    ledsta = "On";
  }
  else{
    digitalWrite(16,LOW);
    ledsta = "Off";
  }
  String url = "http://server-dht.herokuapp.com/update?temp=" + String(t, 1) + "&humd=" + String(h, 1)+"&status="+ledsta;
  if((WiFiMulti.run() == WL_CONNECTED)) {
      updateServer(url);
  }
  delay(1000);
}

void updateServer(String str){
  HTTPClient http;
  Serial.print("[HTTP] begin...\n");
  http.begin(str);
  Serial.print("[HTTP] GET...\n");
  int httpCode = http.GET();
  if(httpCode > 0) {
    Serial.printf("[HTTP] GET... code: %d\n", httpCode);
    if(httpCode == HTTP_CODE_OK) {
      int len = http.getSize();
      uint8_t buff[128] = { 0 };
      WiFiClient * stream = http.getStreamPtr();
      while(http.connected() && (len > 0 || len == -1)) {
        size_t size = stream->available();
        if(size) {
          int c = stream->readBytes(buff, ((size > sizeof(buff)) ? sizeof(buff) : size));
          // write it to Serial
          Serial.write(buff, c);

          if(len > 0) {
            len -= c;
          }
        }
        delay(1);
      }
      Serial.println();
      Serial.print("[HTTP] connection closed or file end.\n");
    }
  } else {
      Serial.printf("[HTTP] GET... failed, error: %s\n", http.errorToString(httpCode).c_str());
  }
  http.end();
}

