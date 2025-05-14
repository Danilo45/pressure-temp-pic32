#include <stdio.h> 
#include <stddef.h>                     
#include <stdbool.h>                   
#include <stdlib.h>                    
#include <stdint.h>
#include "definitions.h"                
#include "ESP8266.h"
#include "MS8607.h"
#include "fonts.h"
#include "ili9341.h"
#include "bmp.h"
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************
int main ( void )
{
    SYS_Initialize ( NULL );
    char temp[10]={0};
    char pritisak[10]={0};
    float t; 
    float  t_bar;
    float tp=0;
    float tp_bar=0;
    uint8_t i=0;
    uint8_t j=0;
    font_t font = {10,19,font_lucida_sans_10x19};  
    ili9341_init();
    ili9341_clear_display(COLOR_WHITE);
    ili9341_draw_raw_image(0,0,bmp,317,234);
    
    MS8607_sens_t senzor;
    
    STATUS_MSG_t status = CWMODE;
    MS8607_reset_PTsens();
    bool prekidna_zastavica = true;
    
    MS8607_read_PT_calibration_data(&senzor);
  
    CORETIMER_DelayMs(1000);
   
    while ( true ) {
        CORETIMER_DelayMs(1000);
   
        switch(status){
            case CWMODE:
                status = ESP8266_set_mode();                                    
                printf("CWMODE\r\n");
                
                if(status==MODE_OK){                                           
                    status = CWJAP;
                    printf("CWMODE OK ----> CWJAP\r\n");
                }
                else{
                    status = CWMODE;                                         
                    printf("CWMODE ERROR\r\n");
                }
                break;
            case CWJAP:
                CORETIMER_DelayMs(1000);
                status = ESP8266_connect_to_AP();                             
                printf("CWJAP\r\n");
                if(status==WIFI_OK){                                          
                    status = CIPSTART;
                    printf("CWJAP OK ----> CIPSTART\r\n");
                }
                else{
                    status = CWJAP;                                            
                    printf("CWJAP ERROR\r\n");
                }
                break;
            case CIPSTART:
                status = ESP8266_TCP_connection();                            
                printf("CIPSTART\r\n");
                
                if(status==TCP_CLOSED){                                       
                    status = CIPSTART;
                    printf("TCP CLOSED\r\n");
                }
                else if(status == TCP_ALREADY_CONNECTED)
                {
                    status = CIPSEND;
                    printf("TCP ALREADY CONNECTED ----> CIPSEND\r\n");
                }
                else{                                                           
                    status = CIPSEND;
                    printf("TCP OK ----> CIPSEND\r\n");
                }
                break;
            case CIPSEND:
                status = ESP8266_cipsend();                                     
                printf("CIPSEND\r\n");
                
                if(status==CIPSEND_OK && prekidna_zastavica){
                    status = SEND2;
                    printf("CIPSEND OK ----> SEND2\r\n");
                }else if(status==CIPSEND_OK && prekidna_zastavica == false){                                                      
                     status = SEND1;
                    printf("CIPSEND OK ----> SEND1\r\n");
                }else{
                    status = CIPSTART;                  
                    printf("CIPSEND CLOSED\r\n");
                }
                break;
            case SEND1  :
                prekidna_zastavica = true;
                MS8607_read_temperature(&senzor,MS8607_PT_D2_CONVERSION_OSR2048);
                printf("\n Temperatura je : %f! \n", senzor.temperature/100);
                sprintf(temp, "%.0f", senzor.temperature/100); 
                status = ESP8266_data_to_thingspeak_t(temp); 
                //status = ESP8266_data_to_thingspeak_t(temp);
                t = senzor.temperature/100;       
                if(i>10){
                    ili9341_clear_display(COLOR_WHITE);                                        
                    ili9341_draw_raw_image(0,0,bmp,317,234); 
                    i=0;
                    tp = 0;
                }
                ili9341_draw_filled_circle(25*i+22,72+4*t,3,COLOR_RED);                                                                      
                
                if(i>0){                                                                    
                ili9341_draw_line(25*(i-1)+22, 72+4*tp, 25*i+22, 72+4*t, COLOR_RED, 1); 
                }
                i++;
                
                ili9341_write_text(31,20,temp,COLOR_RED,&font); 
                CORETIMER_DelayMs(2000);
                
                 
                printf("SEND1\r\n");
                tp = t;
                if(status==SEND1_OK){                                           
                    printf("SEND1 OK\r\n");
                }
                else{                                                        
                    printf("SEND1 ERROR\r\n");
                }
                /*status = ESP8266_TCP_connection_close();
                if(status == TCP_CLOSED){
                    printf("TCP closed \n");
                }
                else{
                    printf("TCP on closing error \n");
                }*/
                CORETIMER_DelayMs(15000);
                status = CIPSTART;
                break;
                
            case SEND2: 
                prekidna_zastavica = false;
                MS8607_read_pressure(&senzor,MS8607_PT_D1_CONVERSION_OSR2048);
                printf("\n Pritisak je : %f! \n", senzor.pressure/100);
                sprintf(pritisak, "%.0f", senzor.pressure/100);
                status = ESP8266_data_to_thingspeak_p(pritisak);
                t_bar = senzor.pressure/100;       
                if(j>10){
    
                    j=0;
                    tp_bar = 0;
                }
                ili9341_draw_filled_circle(25*j+22,72+4*(t_bar-990),3,COLOR_BLUE);                                                                     
                
                if(j>0){                                                                    
                ili9341_draw_line(25*(j-1)+22, 72+4*(tp_bar-990), 25*j+22, 72+4*(t_bar-990), COLOR_BLUE, 1);
                }
               
                j++;
               
                
                ili9341_write_text(145,20,pritisak,COLOR_BLUE,&font); 
                
                
                
                printf("SEND2\r\n");
                CORETIMER_DelayMs(15000);
                ili9341_draw_filled_rectangle(141,15,91,34, COLOR_WHITE); 
                ili9341_draw_filled_rectangle(27,15,62,28, COLOR_WHITE); 
                tp_bar = t_bar;
                if(status==SEND2_OK){                                           
                    printf("SEND2 OK\r\n");
                }
                else{                                                        
                    printf("SEND2 ERROR\r\n");
                }
                status = CIPSTART;
                break;
            
            default:
                status = CWMODE;
                printf("default\r\n");
                break;
        }
        CORETIMER_DelayMs(2000);
        
        
      
        
    }
    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );}




/*******************************************************************************
 End of File
*/
