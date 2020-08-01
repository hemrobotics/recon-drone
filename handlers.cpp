#include "esp_http_server.h"
#include "Arduino.h"

extern int gpLb;
extern int gpLf;
extern int gpRb;
extern int gpRf;
extern int gpLed;
extern String WiFiAddr;

void WheelAct(int nLf, int nLb, int nRf, int nRb);

esp_err_t index_handler(httpd_req_t *req){
    httpd_resp_set_type(req, "text/html");
    String page = R"=="==(
<!DOCTYPE html>
<html>
  <meta http-equiv="content-type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <script>var xhttp = new XMLHttpRequest();</script><script>function getsend(arg) { xhttp.open('GET', arg +'?' + new Date().getTime(), true); xhttp.send() } </script>

  <div class="boxbox">
    <img src="http://)=="==";

    page += WiFiAddr;

    page += R"=="==(:81/stream">

    <button class="lg-button sm-button" onclick="window.open('/cp')" >Settings</button>
    <button class="col3" onmousedown="getsend('ledon')">LED ON</button>
    <button class="col4" onmousedown="getsend('ledoff')">LED OFF</button>

    <button class="col3 row2 noselect" onmousedown="getsend('go')" onmouseup="getsend('stop')" ontouchstart="getsend('go')" ontouchend="getsend('stop')">U</button>
    <button class="col2 row3 noselect" onmousedown="getsend('left')" onmouseup="getsend('stop')" ontouchstart="getsend('left')" ontouchend="getsend('stop')">L</button>
    <button class="col3 row3" onmousedown="getsend('stop')" onmouseup="getsend('stop')"></button>
    <button class="col4 row3 noselect" onmousedown="getsend('right')" onmouseup="getsend('stop')" ontouchstart="getsend('right')" ontouchend="getsend('stop')">R</button>
    <button class="col3 row4 noselect" onmousedown="getsend('back')" onmouseup="getsend('stop')" ontouchstart="getsend('back')" ontouchend="getsend('stop')">D</button>
  </div>

  <style>
    .boxbox {
	display: grid;
	grid-template-columns: 60% repeat(3, 1fr);
	grid-template-rows: 40px repeat(3, 1fr);
	grid-gap: 0.2em;
    }
    img {
	transform: rotate(90deg);
	grid-row: 1 / 4;
    }
    .col1 {
	grid-column: 1;
    }
    .col2 {
	grid-column: 2;
    }
    .col3 {
	grid-column: 3;
    }
    .col4 {
	grid-column: 4;
    }
    .row1 {
	grid-row: 1;
    }
    .row2 {
	grid-row: 2;
    }
    .row3 {
	grid-row: 3;
    }
    .row4 {
	grid-row: 4;
    }
    /* Code block from https://stackoverflow.com/a/4407335/6202405 is
	licensed under CC BY-SA 4.0 */
    .noselect {
      -webkit-touch-callout: none; /* iOS Safari */
	-webkit-user-select: none; /* Safari */
	 -khtml-user-select: none; /* Konqueror HTML */
	   -moz-user-select: none; /* Old versions of Firefox */
	    -ms-user-select: none; /* Internet Explorer/Edge */
		user-select: none; /* Non-prefixed version, currently
				      supported by Chrome, Edge, Opera and Firefox */
    }
    /* End of code block */
  </style>
</html>
)=="==";

    return httpd_resp_send(req, &page[0], strlen(&page[0]));
}

esp_err_t go_handler(httpd_req_t *req){
    WheelAct(HIGH, LOW, HIGH, LOW);
    Serial.println("Go");
    httpd_resp_set_type(req, "text/html");
    return httpd_resp_send(req, "OK", 2);
}

esp_err_t back_handler(httpd_req_t *req){
    WheelAct(LOW, HIGH, LOW, HIGH);
    Serial.println("Back");
    httpd_resp_set_type(req, "text/html");
    return httpd_resp_send(req, "OK", 2);
}

esp_err_t left_handler(httpd_req_t *req){
    WheelAct(HIGH, LOW, LOW, HIGH);
    Serial.println("Left");
    httpd_resp_set_type(req, "text/html");
    return httpd_resp_send(req, "OK", 2);
}

esp_err_t right_handler(httpd_req_t *req){
    WheelAct(LOW, HIGH, HIGH, LOW);
    Serial.println("Right");
    httpd_resp_set_type(req, "text/html");
    return httpd_resp_send(req, "OK", 2);
}

esp_err_t stop_handler(httpd_req_t *req){
    WheelAct(LOW, LOW, LOW, LOW);
    Serial.println("Stop");
    httpd_resp_set_type(req, "text/html");
    return httpd_resp_send(req, "OK", 2);
}

esp_err_t ledon_handler(httpd_req_t *req){
    digitalWrite(gpLed, HIGH);
    Serial.println("LED ON");
    httpd_resp_set_type(req, "text/html");
    return httpd_resp_send(req, "OK", 2);
}

esp_err_t ledoff_handler(httpd_req_t *req){
    digitalWrite(gpLed, LOW);
    Serial.println("LED OFF");
    httpd_resp_set_type(req, "text/html");
    return httpd_resp_send(req, "OK", 2);
}

void WheelAct(int nLf, int nLb, int nRf, int nRb) {
    digitalWrite(gpLf, nLf);
    digitalWrite(gpLb, nLb);
    digitalWrite(gpRf, nRf);
    digitalWrite(gpRb, nRb);
}
