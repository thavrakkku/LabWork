/*
 * Copyright (c) 2013, Institute for Pervasive Computing, ETH Zurich
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
 *      Example resource
 * \author
 *      Matthias Kovatsch <kovatsch@inf.ethz.ch>
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "rest-engine.h"
#include "er-coap.h"
// added 12:02 22-06-22
#include "lib/random.h"
/* added 11:08 08-02-22 */
//#include "net/ip/uip.h"

//#include "net/ip/uip-debug.h"

//#define UIP_IP_BUF   ((struct uip_ip_hdr *)&uip_buf[UIP_LLH_LEN])

/* End 11:08 08-02-22 */
/* adde 04-08-22 */
//#ifndef PERIOD
//#define PERIOD 1
//#endif
//
//#define START_INTERVAL		(15 * CLOCK_SECOND)
//#define SEND_INTERVAL		(PERIOD * CLOCK_SECOND)
//#define SEND_TIME		(random_rand() % (SEND_INTERVAL))
//#define CTR_TEST  srand(clock_time())

/* End adde 04-08-22 */

static void res_get_handler(void *request, void *response, uint8_t *buffer, uint16_t preferred_size, int32_t *offset);
static void res_periodic_handler(void);

// Driver code
PERIODIC_RESOURCE(res_push,
                  "title=\"Periodic TEST CTR\";obs",
                  res_get_handler,
                  NULL,
                  NULL,
                  NULL,
                 1*CLOCK_SECOND,
                  res_periodic_handler);
// RANDWAIT *CLOCK_SECOND,
//random_rand() % (CLOCK_SECOND * RANDWAIT)
/*
 * Use local resource state that is accessed by res_get_handler() and altered by res_periodic_handler() or PUT or POST.
 */
static int32_t temperature = 0;
static int32_t oldtemp =0;
static int32_t j=0;
static void
res_get_handler(void *request, void *response, uint8_t *buffer, uint16_t preferred_size, int32_t *offset)
{
  
  /*
   * For minimal complexity, request query and options should be ignored for GET on observable resources.
   * Otherwise the requests must be stored with the observer list and passed by REST.notify_subscribers().
   * This would be a TODO in the corresponding files in contiki/apps/erbium/!
   */
	/* added 11:08 08-02-22 */


	/* End 11:08 08-02-22 */


  REST.set_header_content_type(response, REST.type.TEXT_PLAIN);
 // REST.set_header_max_age(response, 10 / CLOCK_SECOND);
  REST.set_header_max_age(response, res_push.periodic->period / CLOCK_SECOND);
  REST.set_response_payload(response, buffer, snprintf((char *)buffer, preferred_size,"%lu|%lu", temperature,oldtemp));


  /* The REST.subscription_handler() will be called for observable resources by the REST framework. */
}
/*
 * Additionally, a handler function named [resource name]_handler must be implemented for each PERIODIC_RESOURCE.
 * It will be called by the REST manager process with the defined period.
 */
static int32_t i=0;


static int32_t randomsend(max,min,i){	
			srand(i);
	unsigned long 	num =(rand()%(max-min+1))+min;
			return num;
}

/*static int32_t randomsend1(max,min,i){	
			srand(i);
	unsigned long 	num =(rand()%(max-min+1))+min;
			return num;
}
random_rand()
                                         %
                                         (clock_time_t)
*/

static void
res_periodic_handler()
{
  /* Do a periodic task here, e.g., sampling a sensor. */
  //temperature=randomsend(30,25);
 temperature=randomsend(30,25,i);
	i++;
	if (i==5){
		i=0;	
	}
//temperature=randomsend;
	
  /* Usually a condition is defined under with subscribers are notified, e.g., large enough delta in sensor reading. */
  if(temperature!=oldtemp) {
 // if(1) {
  //if(j<1000) {

/* Notify the registered observers which will trigger the res_get_handler to create the response. */
	
//make change
//**make it sleep for ....second
      
    	REST.notify_subscribers(&res_push);
	  oldtemp=temperature;
	//j++;
	  //}
  }
}


