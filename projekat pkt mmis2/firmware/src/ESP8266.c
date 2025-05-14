#include "ESP8266.h"


// Potrebne AT komande:
char WIFI_ST_MODE_CMD[] = "AT+CWMODE=1\r\n";
char JOIN_AN_AP_CMD[] = "AT+CWJAP=\"Danilo!\",\"danilo123\"\r\n";
char START_TCP_CONNECTION_CMD[] = "AT+CIPSTART=\"TCP\",\"api.thingspeak.com\",80\r\n";
char SEND_DATA_LENGTH_CMD[] = "AT+CIPSEND=77\r\n";
char QUIT_AP_CMD[] = "AT+CWQAP";
char TCP_CLOSE_CMD[]="AT+CIPCLOSE\r\n";

STATUS_MSG_t ESP8266_set_mode(){
    char answ[128];
    
    UART2_Write((uint8_t*)WIFI_ST_MODE_CMD, strlen(WIFI_ST_MODE_CMD));        
    while(UART2_WriteCountGet()!=0);                                           
   
    CORETIMER_DelayMs(100);
    UART2_Read((uint8_t*)answ, sizeof(answ));                                 
    
    char* find_ok = strstr(answ, "OK\r\n");                                  
    
    if(find_ok!=NULL){                                                          
        return MODE_OK;                      
    }
    else{
        return MODE_ERROR;                                                 
    }
}

STATUS_MSG_t ESP8266_connect_to_AP(){
    char answ[128];
    
    UART2_Write((uint8_t*)JOIN_AN_AP_CMD, strlen(JOIN_AN_AP_CMD));             
    while(UART2_WriteCountGet()!=0);
    
    CORETIMER_DelayMs(500);
    UART2_Read((uint8_t*)answ, sizeof(answ));                                   
    
    char* find_error = strstr(answ, "+CWJAP=\r\n");                             
    
    if(find_error!=NULL){
        return WIFI_ERROR;
    }
    else{
        return WIFI_OK;
    }
}

STATUS_MSG_t ESP8266_TCP_connection(){
    char answ[128];
    
    UART2_Write((uint8_t*)START_TCP_CONNECTION_CMD, strlen(START_TCP_CONNECTION_CMD));  
    while(UART2_WriteCountGet()!=0);
    
    CORETIMER_DelayMs(100);
    UART2_Read((uint8_t*)answ, sizeof(answ));
    
    char* find_ok = strstr(answ, "OK\r\n");                                     
    char* find_connected = strstr(answ, "ALREADY CONNECTED\r\n");               
    
    if(find_ok!=NULL){
        return TCP_OK;
    }
    else if(find_connected){
        return TCP_ALREADY_CONNECTED;
    }
    else{
        return TCP_CLOSED;                                                      
    }
}

STATUS_MSG_t ESP8266_TCP_connection_close(){
        char answ[128];
    
    UART2_Write((uint8_t*)TCP_CLOSE_CMD, strlen(TCP_CLOSE_CMD));  
    while(UART2_WriteCountGet()!=0);
    
    CORETIMER_DelayMs(100);
    UART2_Read((uint8_t*)answ, sizeof(answ));
    
    char* find_ok = strstr(answ, "OK\r\n");                                                   
    
    if(find_ok!=NULL){
        return TCP_CLOSED;
    }
    else{
        return TCP_ERROR;                                                      
    }
}

STATUS_MSG_t ESP8266_cipsend(){
    char answ[128];
    
    UART2_Write((uint8_t*)SEND_DATA_LENGTH_CMD, strlen(SEND_DATA_LENGTH_CMD));  
    while(UART2_WriteCountGet()!=0);
    
    CORETIMER_DelayMs(100);
    UART2_Read((uint8_t*)answ, sizeof(answ));
    
    char* find_ok = strstr(answ, "OK\r\n");                                     
    if(find_ok!=NULL){
        return CIPSEND_OK;
    }
    else{
        return CIPSEND_CLOSED;
    }
}

STATUS_MSG_t ESP8266_data_to_thingspeak_t(char* temperature){

    static char answ[128];
    char write_a_channel_feed[100];
    strcpy(write_a_channel_feed,"GET https://api.thingspeak.com/update?api_key=7T1V1DB2MXH19NE3&field1=");  
    strcat(write_a_channel_feed,temperature);
    strcat(write_a_channel_feed,"\r\n");                                            
    UART2_Write((uint8_t*)write_a_channel_feed, strlen(write_a_channel_feed));  
    while(UART2_WriteCountGet()!=0);

    CORETIMER_DelayMs(100);
    UART2_Read((uint8_t*)answ, sizeof(answ));
    printf("%s\n",answ);
        
    char* find_ok = strstr(answ, "Recv");   

    if(find_ok!=NULL){
        return SEND1_OK;
    }
    else{
        return SEND_ERROR;
    }
}

STATUS_MSG_t ESP8266_data_to_thingspeak_p(char* pritisak){

    static char answ[128];
    char write_a_channel_feed[100];
    strcpy(write_a_channel_feed,"GET https://api.thingspeak.com/update?api_key=7T1V1DB2MXH19NE3&field2=");
    strcat(write_a_channel_feed,pritisak);
    strcat(write_a_channel_feed,"\r\n");                                        
            
    UART2_Write((uint8_t*)write_a_channel_feed, strlen(write_a_channel_feed));  
    while(UART2_WriteCountGet()!=0);
    
    CORETIMER_DelayMs(100);
    UART2_Read((uint8_t*)answ, sizeof(answ));
    printf("%s\n",answ);
    
    char* find_ok = strstr(answ, "Recv");   

    if(find_ok!=NULL){
        return SEND2_OK;
    }
    else{
        return SEND_ERROR;
    }
}

