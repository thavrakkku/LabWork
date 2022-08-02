TIMEOUT(900000, log.log("server_3_sending: "+server_3_sending+" Recieving: "+server_3_recieving+"\n"+"server_4_sending: "+server_4_sending+"\n"+"server_5_sending: "+server_5_sending+"\n"+"server_6_sending: "+server_6_sending+"\n"+"server_7_sending: "+server_7_sending+"\n"+"server_8_sending: "+server_8_sending+"\n"+"server_9_sending: "+server_9_sending+"\n"+"server_10_sending: "+server_10_sending+"\n"+"Total_Packet_Sent: " + Total_Packet_Sent  + "\n"));
Total_Packet_recieving     = 0;
Total_Packet_Sent         = 0;
server_2_sending        = 0;
server_3_sending        = 0;
server_4_sending    = 0;
server_5_sending    = 0;
server_6_sending    = 0;
server_7_sending    = 0;
server_8_sending    = 0;
server_9_sending    = 0;
server_10_sending   = 0;
server_11_sending   = 0;
server_12_sending   = 0;
server_13_sending   = 0;
server_14_sending   = 0;
server_15_sending   = 0;
server_16_sending   = 0;
server_17_sending   = 0;
server_18_sending   = 0;
server_19_sending   = 0;
server_20_sending   = 0;
server_2_recieving  =0;
server_3_recieving   = 0;
server_4_recieving    = 0;
server_5_recieving    = 0;
server_6_recieving    = 0;
server_7_recieving   = 0;
server_8_recieving    = 0;
server_9_recieving    = 0;
server_10_recieving  = 0;
server_11_recieving   = 0;
server_12_recieving   = 0;
server_13_recieving   = 0;
server_14_recieving   = 0;
server_15_recieving   = 0;
server_16_recieving   = 0;
server_17_recieving   = 0;
server_18_recieving   = 0;
server_19_recieving   = 0;
server_20_recieving   = 0;
/*
for(i = 0; i <= nodeCount; i++) {
  packetsReceived[i] = 0;
  packetsSent[i] = 0;
}
*/

while(1) { 
  YIELD();

    if(id==2){
    msgArray = msg.split('_'); //splite the message
    log.log("1-"+msgArray[0]+"\n"); //test message after splite
        if(msgArray[0].equals("CTR")) {
        //log.log("leng:"+msgArray.length+"\n");
            //log.log(msgArray[1]);

            if(msgArray[1].equals("Sending")) {
                //log.log(msgArray[4]+"\n");
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0002]")){
                    server_2_sending ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0003]")){
                    server_3_sending ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0004]")){
                    server_4_sending ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0005]")){
                    server_5_sending ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0006]")){
                    server_6_sending ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0007]")){
                    server_7_sending ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0008]")){
                    server_8_sending ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0009]")){
                    server_9_sending ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000a]")){
                    server_10_sending ++;
                } 
                Total_Packet_Sent=server_10_sending + server_9_sending + server_8_sending + server_7_sending + server_6_sending + server_5_sending + server_4_sending + server_3_sending
            }
            if(msgArray[1].equals("Receiving")) {
                //log.log(msgArray[4]+"\n");
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0002]")){
                server_2_recieving ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0003]")){
                server_3_recieving ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0004]")){
                server_4_recieving ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0005]")){
                server_5_recieving ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0006]")){
                server_6_recieving ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0007]")){
                server_7_recieving ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0008]")){
                server_8_recieving ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0009]")){
                server_9_recieving ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000a]")){
                server_10_recieving ++;
                } 
                Total_Packet_recieving=server_10_recieving + server_9_recieving + server_8_recieving + server_7_recieving + server_6_recieving + server_5_recieving+ server_4_recieving+ server_3_recieving
            }
        }
    }
}