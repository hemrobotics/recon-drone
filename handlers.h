#ifndef HANDLERS_H
#define HANDLERS_H

#include "esp_http_server.h"

esp_err_t index_handler(httpd_req_t *req);

esp_err_t go_handler(httpd_req_t *req);

esp_err_t back_handler(httpd_req_t *req);

esp_err_t left_handler(httpd_req_t *req);

esp_err_t right_handler(httpd_req_t *req);

esp_err_t stop_handler(httpd_req_t *req);

esp_err_t ledon_handler(httpd_req_t *req);

esp_err_t ledoff_handler(httpd_req_t *req);

void WheelAct(int nLf, int nLb, int nRf, int nRb);

#endif
