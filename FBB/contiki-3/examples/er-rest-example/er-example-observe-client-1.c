/*
 * Copyright (c) 2014, Daniele Alessandrelli.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the Contiki operating system.
 */

/**
 * \file
 *      Erbium (Er) CoAP observe client example.
 * \author
 *      Daniele Alessandrelli <daniele.alessandrelli@gmail.com>
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "contiki.h"
#include "contiki-net.h"
#include "er-coap-engine.h"
#include "dev/button-sensor.h"
//#include "shell.h"
//#include "serial-shell.h"
//#include "collect-view.h"

/*----------------------------------------------------------------------------*/
#define DEBUG 1
#if DEBUG
#define PRINTF(...) printf(__VA_ARGS__)
#define PRINTFLN(format, ...) printf(format "\n", ##__VA_ARGS__)
#define PRINT6ADDR(addr) PRINTF("[%02x%02x:%02x%02x:%02x%02x:%02x%02x:" \
                                "%02x%02x:%02x%02x:%02x%02x:%02x%02x]", \
                                ((uint8_t *)addr)[0], ((uint8_t *)addr)[1], \
                                ((uint8_t *)addr)[2], ((uint8_t *)addr)[3], \
                                ((uint8_t *)addr)[4], ((uint8_t *)addr)[5], \
                                ((uint8_t *)addr)[6], ((uint8_t *)addr)[7], \
                                ((uint8_t *)addr)[8], ((uint8_t *)addr)[9], \
                                ((uint8_t *)addr)[10], ((uint8_t *)addr)[11], \
                                ((uint8_t *)addr)[12], ((uint8_t *)addr)[13], \
                                ((uint8_t *)addr)[14], ((uint8_t *)addr)[15])
#else
#define PRINTF(...)
#define PRINT6ADDR(addr)
#define PRINTFLN(...)
#endif

/*----------------------------------------------------------------------------*/
/* FIXME: This server address is hard-coded for Cooja */
//#define SERVER_NODE(ipaddr)   uip_ip6addr(ipaddr, 0xfe80, 0, 0, 0, 0x0212,0x7402, 0x0002, 0x0202)
#define use_br 0
#if use_br
	
	#define SERVER_NODE1(ipaddr)   uip_ip6addr(ipaddr, 0xfe80, 0, 0, 0, 0xc30c,0, 0, 0x0002)
	
#else
	#define SERVER_NODE1(ipaddr)   uip_ip6addr(ipaddr, 0xaaaa, 0, 0, 0, 0xc30c, 0, 0, 0x2)
	
#endif


#define REMOTE_PORT     UIP_HTONS(COAP_DEFAULT_PORT)
/* Toggle interval in seconds */
#define TOGGLE_INTERVAL 100
/* The path of the resource to observe */
#define OBS_RESOURCE_URI "test/push"

static coap_observee_t *obs;

static coap_packet_t request[1];

static	int r=0;
static 	int con=1;
static int test_node=7;
static int i=0;

/*----------------------------------------------------------------------------*/
PROCESS(er_example_observe_client, "Erbium Coap Observe Client Example");
AUTOSTART_PROCESSES(&er_example_observe_client);


uip_ipaddr_t	server_ipaddr1;

/*----------------------------------------------------------------------------*/
/*
 * Handle the response to the observe request and the following notifications
 */

/*CTR Note Function to Auto Connect to all the server */
static void increase_conn(int num){
	if (num>con){
		con=num;
	}
	//printf("con still running=%d\n",con);
}
/* end of CTR Note */
static void
notification_callback(coap_observee_t *obs, void *notification,
                      coap_notification_flag_t flag)
{
  int len = 0;
  const uint8_t *payload = NULL;

/* CTR note check IP */
	//printf("R: %d\n",r);
  	//printf("IP:");PRINT6ADDR(&obs->addr);printf("\n");
  	//printf("IP2:");PRINT6ADDR(&server_ipaddr1);printf("\n");
	//printf("Con: %d\n",con);
/* end of CTR note */

  	printf("Notification handler\n");
  	printf("Observee URI: %s\n", obs->url);
  if(notification) {
    len = coap_get_payload(notification, &payload);
  }
  
  switch(flag) {
  case NOTIFICATION_OK:

/* CTR Note check incoming observe IP for connection condition */
    if(uip_ipaddr_cmp(&obs->addr,&server_ipaddr1)){
		printf("Observe OK form 2\n");
		increase_conn(50);
	}
	
/* End of CTR Note */

	printf("NOTIFICATION OK: %*s\n", len, (char *)payload);
	break;
  case OBSERVE_OK: /* server accepeted observation request */
    printf("OBSERVE_OK: %*s\n", len, (char *)payload);
	
    break;
  case OBSERVE_NOT_SUPPORTED:
    printf("OBSERVE_NOT_SUPPORTED: %*s\n", len, (char *)payload);
    obs = NULL;
    break;
  case ERROR_RESPONSE_CODE:
    printf("ERROR_RESPONSE_CODE: %*s\n", len, (char *)payload);
    obs = NULL;
    break;
  case NO_REPLY_FROM_SERVER:
    printf("NO_REPLY_FROM_SERVER: "
           "removing observe registration with token %x%x\n",
           obs->token[0], obs->token[1]);
    obs = NULL;
    break;
  }
}

void
client_chunk_handler(void *response)
{
  const uint8_t *chunk;

  int len = coap_get_payload(response, &chunk);

  printf("|%.*s", len, (char *)chunk);
}

PROCESS_THREAD(er_example_observe_client, ev, data)
{

  PROCESS_BEGIN();
	
//	shell_collect_view_init();
  	static struct etimer et;

  /* store server address in server_ipaddr */


  	SERVER_NODE1(&server_ipaddr1);
	

  /* receives all CoAP messages */
  coap_init_engine();
  /* init timer and button (if available) */
  etimer_set(&et, TOGGLE_INTERVAL * CLOCK_SECOND);

#if PLATFORM_HAS_BUTTON
  SENSORS_ACTIVATE(button_sensor);
 	// printf("Press a button to start/stop observation of remote resource\n");
#endif
  
  while(1) {

    PROCESS_YIELD();
	if(r==1) {
		      printf("--Toggle Block-Wise Transfer--\n");

			coap_init_message(request, COAP_TYPE_CON, COAP_GET, 0);
		     	//coap_set_header_uri_path(request,"test/push_blockwise");
			coap_set_header_uri_path(request,"test/chunks");
		     	const char msg[] = "Toggle!";

		     	coap_set_payload(request, (uint8_t *)msg, sizeof(msg) - 1);

		     	PRINT6ADDR(&server_ipaddr1);
		     	PRINTF(" : %u\n", UIP_HTONS(REMOTE_PORT));

		     	COAP_BLOCKING_REQUEST(&server_ipaddr1, REMOTE_PORT, request,client_chunk_handler);
	
			r=0;

			}
    
	switch(con){	
		case 50:			
			//obs = coap_obs_request_registration(&server_ipaddr1, REMOTE_PORT,"test/push_blockwise", notification_callback1, NULL);
			printf("--Start Calculation--\n");
			break;
		case 1:			
			//obs = coap_obs_request_registration(&server_ipaddr1, REMOTE_PORT,"test/push_blockwise", notification_callback, NULL);
			obs = coap_obs_request_registration(&server_ipaddr1, REMOTE_PORT,"test/push", notification_callback, NULL);
			printf("--Connecting to number 3--\n");
			break; 
	
	}
	//if(con>17){con=0;}

	if(etimer_expired(&et)) {
		//ctr
		
		printf("Con: %d\n",con);

		printf("R: %d\n",r);
		//end
		//con=0;
      
	  //toggle_observation();

      	etimer_reset(&et);

	
#if PLATFORM_HAS_BUTTON
     }  else if(ev == sensors_event && data == &button_sensor) {
	 //printf("\n--Toggle Button--\n");
	//con=50;
	//con++;
	//etimer_reset(&et);
		
#endif
    }
  }
  PROCESS_END();{
		/* code */
	}
	
}
