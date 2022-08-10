load("nashorn:mozilla_compat.js"); //fix java importPackage(java.io) error
importPackage(java.io); //import Java Package to JavaScript

username=new com.sun.security.auth.module.UnixSystem().getUsername(); //get current user name
today = new Date(); // get current date

date=today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();//date format
sl="/home/"+username+"/LabWork/"; //save location
sf=sl+date+"_Test_Normal_Random_1+0_1s_log_"; //save file name  
ob_node="Observe OK form 12";   
i=1; //file index
checkfile= new File(sf+i+".txt"); //define check file name
    while(checkfile.exists()){//check if file is exist
        i=i+1;
        checkfile= new File(sf+i+".txt");        
    }
savefile=new FileWriter(sf+i+".txt"); //create file
//Connect_Mote=3;
/* Function Clock on Mote */
/*
function click_on_mote(stopcode){
        if(stopcode==1){
            return;
        }    
        get_sim = mote.getSimulation();
        mote_click=get_sim.getMote(1);
        mote_click.getInterfaces().getButton().clickButton();
        Connect_Mote = Connect_Mote+1;
       // log.log("Conect to mote "+Connect_Mote+" StopCode = "+stopcode+"\n");      
} */
/*End CLick on Mote*/
start_calculate=0;
delay = 0;
jitter=0;
throughput=0;
Packet_delivery_ratio=0;
loss_ratio=0;
data_length = 20;
Average_delay = 0;
timeReceived= new Array();
timeSent = new Array();
delay = new Array();
sendingArray=[];
receiveArray=[];

stopcode=0;
Total_Packet_recieving      =0;Total_Packet_Sent_to_2      =0;Total_m2_Packet_Sent        =0;
Total_m2_Packet_recieving   =0;Total_Packet_loss           =0;
m2_send_to_3 =0;m2_send_to_4 =0;m2_send_to_5 =0;m2_send_to_6 =0;m2_send_to_7 =0;m2_send_to_8 =0;m2_send_to_9 =0;m2_send_to_10 =0;m2_send_to_11 =0;m2_send_to_12 =0;
m2_send_to_13 =0;m2_send_to_14 =0;m2_send_to_15 =0;m2_send_to_16 =0;m2_send_to_17 =0;m2_send_to_18 =0;m2_send_to_19 =0;m2_send_to_20 =0;
m2_receive_from_3 =0;m2_receive_from_4 =0;m2_receive_from_5 =0;m2_receive_from_6 =0;m2_receive_from_7 =0;m2_receive_from_8 =0;m2_receive_from_9 =0;
m2_receive_from_10 =0;m2_receive_from_11 =0;m2_receive_from_12 =0;m2_receive_from_13 =0;m2_receive_from_14 =0;m2_receive_from_15 =0;m2_receive_from_16 =0;
m2_receive_from_17 =0;m2_receive_from_18 =0;m2_receive_from_19 =0;m2_receive_from_20 =0;
m3_sending =0;m3_receiving =0;m4_sending =0;m4_receiving =0;m5_sending =0;m5_receiving =0;m6_sending =0;m6_receiving =0;
m7_sending =0;m7_receiving =0;m8_sending =0;m8_receiving =0;m9_sending =0;m9_receiving =0;m10_sending =0;m10_receiving =0;
m11_sending =0;m11_receiving =0;m12_sending =0;m12_receiving =0;m13_sending =0;m13_receiving =0;m14_sending =0;m14_receiving =0;
m15_sending =0;m15_receiving =0;m16_sending =0;m16_receiving =0;m17_sending =0;m17_receiving =0;m18_sending =0;m18_receiving =0;
m19_sending =0;m19_receiving =0;m20_sending =0;m20_receiving =0;
stoptime=0;
simulate_time=300000;
function start_measure(a){
    if(start_calculate>1){
        return 0;
    }
    stoptime=parseInt(a)+simulate_time;
    log.log("start calcualte.\n");
    log.log(stoptime+"\n");
    TIMEOUT(300000000000);
}
timeout_function = function () {
    log.log("Script timed out.\n");
    log.log("m2_send_to_3: "+m2_send_to_3+"\n"+"m2_send_to_4: "+m2_send_to_4+"\n"+"m2_send_to_5: "+m2_send_to_5+"\n"+"m2_send_to_6: "+m2_send_to_6+"\n"+"m2_send_to_7: "+m2_send_to_7+"\n"+"m2_send_to_8: "+m2_send_to_8+"\n"+"m2_send_to_9: "+m2_send_to_9+"\n"+"m2_send_to_10: "+m2_send_to_10+"\n"+"m2_send_to_11: "+m2_send_to_11+"\n"+"m2_send_to_12: "+m2_send_to_12+"\n"+"m2_send_to_13: "+m2_send_to_13+"\n"+"m2_send_to_14: "+m2_send_to_14+"\n"+"m2_send_to_15: "+m2_send_to_15+"\n"+"m2_send_to_16: "+m2_send_to_16+"\n"+"m2_send_to_17: "+m2_send_to_17+"\n"+"m2_send_to_18: "+m2_send_to_18+"\n"+"m2_send_to_19: "+m2_send_to_19+"\n"+"m2_send_to_20: "+m2_send_to_20+"\n");
    log.log("\n"+"m2_receive_from_3: "+m2_receive_from_3+"\n"+"m2_receive_from_4: "+m2_receive_from_4+"\n"+"m2_receive_from_5: "+m2_receive_from_5+"\n"+"m2_receive_from_6: "+m2_receive_from_6+"\n"+"m2_receive_from_7: "+m2_receive_from_7+"\n"+"m2_receive_from_8: "+m2_receive_from_8+"\n"+"m2_receive_from_9: "+m2_receive_from_9+"\n"+"m2_receive_from_10: "+m2_receive_from_10+"\n"+"m2_receive_from_11: "+m2_receive_from_11+"\n"+"m2_receive_from_12: "+m2_receive_from_12+"\n"+"m2_receive_from_13: "+m2_receive_from_13+"\n"+"m2_receive_from_14: "+m2_receive_from_14+"\n"+"m2_receive_from_15: "+m2_receive_from_15+"\n"+"m2_receive_from_16: "+m2_receive_from_16+"\n"+"m2_receive_from_17: "+m2_receive_from_17+"\n"+"m2_receive_from_18: "+m2_receive_from_18+"\n"+"m2_receive_from_19: "+m2_receive_from_19+"\n"+"m2_receive_from_20: "+m2_receive_from_20+"\n");
    log.log("\n"+"m20_sending :"+m20_sending+"\n"+"m19_sending :"+m19_sending+"\n"+"m18_sending :"+m18_sending+"\n"+"m17_sending :"+m17_sending+"\n"+"m16_sending :"+m16_sending+"\n"+"m15_sending :"+m15_sending+"\n"+"m14_sending :"+m14_sending+"\n"+"m13_sending :"+m13_sending+"\n"+"m12_sending :"+m12_sending+"\n"+"m11_sending :"+m11_sending+"\n"+"m10_sending :"+m10_sending+"\n"+"m9_sending :"+m9_sending+"\n"+"m8_sending :"+m8_sending+"\n"+"m7_sending :"+m7_sending+"\n"+"m6_sending :"+m6_sending+"\n"+"m5_sending :"+m5_sending+"\n"+"m4_sending :"+m4_sending+"\n"+"m3_sending :"+m3_sending+"\n");
    log.log("Total_Packet_Sent_to_2 : "+Total_Packet_Sent_to_2 +"\n"+"Total_m2_Packet_recieving: "+Total_m2_Packet_recieving+"\n"+"Total_Packet_loss: "+Total_Packet_loss+"\n"+"Packet_delivery_ratio: "+Packet_delivery_ratio+"\n"+"loss_ratio: "+loss_ratio+"\n");
    savefile.close();
    log.testOK();
}

while(1) { 
    a=sim.getSimulationTimeMillis(); //get simulation time in milisecond

array = new Array();
YIELD();
//log.log(start_calculate+"\n");
    msgs= msg + "_TIME:" + time + "_ID:" + id + "_Time2:"+ a + "\n";
    
    msgArray = msgs.split('_');
    if(msgArray[0].equals(ob_node)){
        start_calculate = start_calculate+1; 
        start_measure(msgArray[3].split(':')[1]); 
        //log.log(msgArray[3]+"\n") ;
    }
    if(parseInt(msgArray[3].split(':')[1]) >= stoptime && start_calculate>1){
        log.log(msgArray[3].split(':')[1]+" | "+stoptime+"\n");
        SCRIPT_TIMEOUT();
        //SCRIPT_KILL()
    }
    if(start_calculate >= 1){
    if(msgArray[0].equals("CTR")){
    //log.log(msgArray[0]+"_"+msgArray[1]+"_"+msgArray[2]+"_"+msgArray[3]+"_"+msgArray[4]+"_"+msgArray[5]+"_"+msgArray[6]+"_"+msgArray[7]+"_"+msgArray[8]+"\n");    
    savefile.write(msgs);

    
    
    }

    if(id==2){
    //splite the message
    //log.log("1-"+msgArray[0]+"\n"); //test message after splite
        
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
        //log.log("leng:"+msgArray.length+"\n");
        // log.log(msgArray[0]+"_"+msgArray[1]+"_"+msgArray[2]+"_"+msgArray[3]+"_"+msgArray[4]+"_"+msgArray[5]+"_"+msgArray[6]+"_"+msgArray[7]+"_"+msgArray[8]+"\n");
            //log.log(msgArray[4]+"\n");
                
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0003]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0003]")){
                    m2_send_to_3 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0004]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0004]")){
                    m2_send_to_4 ++;
                }
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0005]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0005]")){
                    m2_send_to_5 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0006]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0006]")){
                    m2_send_to_6 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0007]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0007]")){
                    m2_send_to_7 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0008]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0008]")){
                    m2_send_to_8 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0009]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0009]")){
                    m2_send_to_9 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000a]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000a]")){
                    m2_send_to_10 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000b]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000b]")){
                    m2_send_to_11 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000c]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000c]")){
                    m2_send_to_12 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000d]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000d]")){
                    m2_send_to_13 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000e]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000e]")){
                    m2_send_to_14 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000f]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000f]")){
                    m2_send_to_15 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0010]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0010]")){
                    m2_send_to_16 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0011]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0011]")){
                    m2_send_to_17 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0012]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0012]")){
                    m2_send_to_18 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0013]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0013]")){
                    m2_send_to_19 ++;
                } 
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0014]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0014]")){
                    m2_send_to_20 ++;
                } 
                Total_m2_Packet_Sent= m2_send_to_20+m2_send_to_19+m2_send_to_18+m2_send_to_17+m2_send_to_16+m2_send_to_15+m2_send_to_14+m2_send_to_13+m2_send_to_12+m2_send_to_11+m2_send_to_10+m2_send_to_9+m2_send_to_8+m2_send_to_7+m2_send_to_6+m2_send_to_5+m2_send_to_4+m2_send_to_3;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")) {
            //log.log(msgArray[4]+"\n");
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0003]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0003]")){
                m2_receive_from_3 ++;
                //click_on_mote(stopcode);
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0004]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0004]")){
                m2_receive_from_4 ++;
                //click_on_mote(stopcode);
            // stopcodecode);
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0006]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0006]")){
                m2_receive_from_6 ++;
                //click_on_mote(stopcode);
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0007]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0007]")){
                m2_receive_from_7 ++;
                //click_on_mote(stopcode);
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0008]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0008]")){
                m2_receive_from_8 ++;
                //click_on_mote(stopcode);
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0009]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0009]")){
                m2_receive_from_9 ++;
                //click_on_mote(stopcode);
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000a]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000a]")){
                m2_receive_from_10 ++;
                //click_on_mote(stopcode);
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000b]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000b]")){
                m2_receive_from_11 ++;
                //click_on_mote(stopcode);
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000c]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000c]")){
                m2_receive_from_12 ++;
                //stopcode=1;
                //click_on_mote(stopcode);
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000d]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000d]")){
                m2_receive_from_13 ++;
            // click_on_mote();
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000e]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000e]")){
                m2_receive_from_14 ++;
            // click_on_mote();
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000f]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000f]")){
                m2_receive_from_15 ++;
                //click_on_mote();
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0010]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0010]")){
                m2_receive_from_16 ++;
                //click_on_mote();
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0011]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0011]")){
                m2_receive_from_17 ++;
            // click_on_mote();
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0012]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0012]")){
                m2_receive_from_18 ++;
                //click_on_mote();
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0013]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0013]")){
                m2_receive_from_19 ++;
                //click_on_mote();
            } 
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0014]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0014]")){
                m2_receive_from_20 ++;
                //click_on_mote();
            } 
            Total_m2_Packet_recieving=m2_receive_from_20+m2_receive_from_19+m2_receive_from_18+m2_receive_from_17+m2_receive_from_16+m2_receive_from_15+m2_receive_from_14+m2_receive_from_13+m2_receive_from_12+m2_receive_from_11+m2_receive_from_10+m2_receive_from_9+m2_receive_from_8+m2_receive_from_7+m2_receive_from_6+m2_receive_from_5+m2_receive_from_4+m2_receive_from_3;
            }
        }
    if(id==3){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m3_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m3_receiving ++
            }
    }
    if(id==4){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m4_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m4_receiving ++
            }
    }
    if(id==5){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m5_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m5_receiving ++
            }
    }
    if(id==6){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m6_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m6_receiving ++
            }
    }
    if(id==7){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m7_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m7_receiving ++
            }
    }
    if(id==8){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m8_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m8_receiving ++
            }
    }
    if(id==9){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m9_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m9_receiving ++
            }
    }
    if(id==10){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m10_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m10_receiving ++
            }
    }
    if(id==11){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m11_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m11_receiving ++
            }
    }
    if(id==12){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m12_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m12_receiving ++
            }
    }
    if(id==13){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m13_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m13_receiving ++
            }
    }
    if(id==14){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m14_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m14_receiving ++
            }
    }
    if(id==15){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m15_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m15_receiving ++
            }
    }
    if(id==16){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m16_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m16_receiving ++
            }
    }
    if(id==17){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m17_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m17_receiving ++
            }
    }
    if(id==18){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m18_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m18_receiving ++
            }
    }
    if(id==19){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m19_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m19_receiving ++
            }
    }
    if(id==20){
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Sending")) {
            m20_sending ++;
            }
        if(msgArray[0].equals("CTR") && msgArray[1].equals("Receiving")){
            m20_receiving ++
            }
    }
    Total_Packet_Sent_to_2 = m3_sending+m4_sending+m5_sending+m6_sending+m7_sending+m8_sending+m9_sending+m10_sending+m11_sending+m12_sending+m13_sending+m14_sending+m15_sending+m16_sending+m17_sending+m18_sending+m19_sending+m20_sending;
    Total_Packet_loss=Total_Packet_Sent_to_2 - Total_m2_Packet_recieving;
    //log.log("m2_send_to_3: "+m2_send_to_3+"\n"+"m2_send_to_4: "+m2_send_to_4+"\n"+"m2_send_to_5: "+m2_send_to_5+"\n"+"m2_send_to_6: "+m2_send_to_6+"\n"+"m2_send_to_7: "+m2_send_to_7+"\n"+"m2_send_to_8: "+m2_send_to_8+"\n"+"m2_send_to_9: "+m2_send_to_9+"\n"+"m2_send_to_10: "+m2_send_to_10+"\n"+"m2_send_to_11: "+m2_send_to_11+"\n"+"m2_send_to_12: "+m2_send_to_12+"\n"+"m2_send_to_13: "+m2_send_to_13+"\n"+"m2_send_to_14: "+m2_send_to_14+"\n"+"m2_send_to_15: "+m2_send_to_15+"\n"+"m2_send_to_16: "+m2_send_to_16+"\n"+"m2_send_to_17: "+m2_send_to_17+"\n"+"m2_send_to_18: "+m2_send_to_18+"\n"+"m2_send_to_19: "+m2_send_to_19+"\n"+"m2_send_to_20: "+m2_send_to_20+"\n"+"m2_receive_from_3: "+m2_receive_from_3+"\n"+"m2_receive_from_4: "+m2_receive_from_4+"\n"+"m2_receive_from_5: "+m2_receive_from_5+"\n"+"m2_receive_from_6: "+m2_receive_from_6+"\n"+"m2_receive_from_7: "+m2_receive_from_7+"\n"+"m2_receive_from_8: "+m2_receive_from_8+"\n"+"m2_receive_from_9: "+m2_receive_from_9+"\n"+"m2_receive_from_10: "+m2_receive_from_10+"\n"+"m2_receive_from_11: "+m2_receive_from_11+"\n"+"m2_receive_from_12: "+m2_receive_from_12+"\n"+"m2_receive_from_13: "+m2_receive_from_13+"\n"+"m2_receive_from_14: "+m2_receive_from_14+"\n"+"m2_receive_from_15: "+m2_receive_from_15+"\n"+"m2_receive_from_16: "+m2_receive_from_16+"\n"+"m2_receive_from_17: "+m2_receive_from_17+"\n"+"m2_receive_from_18: "+m2_receive_from_18+"\n"+"m2_receive_from_19: "+m2_receive_from_19+"\n"+"m2_receive_from_20: "+m2_receive_from_20+"\n"+"\n"+"m20_sending :"+m20_sending+"\n"+"m20_sending :"+m19_sending+"\n"+"m19_sending :"+m18_sending+"\n"+"m17_sending :"+m17_sending+"\n"+"m16_sending :"+m16_sending+"\n"+"m15_sending :"+m15_sending+"\n"+"m14_sending :"+m14_sending+"\n"+"m13_sending :"+m13_sending+"\n"+"m12_sending :"+m12_sending+"\n"+"m11_sending :"+m11_sending+"\n"+"m10_sending :"+m10_sending+"\n"+"m9_sending :"+m9_sending+"\n"+"m8_sending :"+m8_sending+"\n"+"m7_sending :"+m7_sending+"\n"+"m6_sending :"+m6_sending+"\n"+"m5_sending :"+m5_sending+"\n"+"m4_sending :"+m4_sending+"\n"+"m3_sending :"+m3_sending+"\n"+"Total_Packet_Sent_to_2 : "+Total_Packet_Sent_to_2 +"\n"+"Total_m2_Packet_recieving: "+Total_m2_Packet_recieving+"\n"+"Total_Packet_loss: "+Total_Packet_loss+"\n");    
    Packet_delivery_ratio= Total_m2_Packet_recieving*100/Total_Packet_Sent_to_2;
    loss_ratio=(Total_Packet_Sent_to_2-Total_m2_Packet_recieving)*100/Total_Packet_Sent_to_2;
    //log.log("m2_send_to_3: "+m2_send_to_3+"\n"+"m2_send_to_4: "+m2_send_to_4+"\n"+"m2_send_to_5: "+m2_send_to_5+"\n"+"m2_send_to_6: "+m2_send_to_6+"\n"+"m2_send_to_7: "+m2_send_to_7+"\n"+"m2_send_to_8: "+m2_send_to_8+"\n"+"m2_send_to_9: "+m2_send_to_9+"\n"+"m2_send_to_10: "+m2_send_to_10+"\n"+"m2_send_to_11: "+m2_send_to_11+"\n"+"m2_send_to_12: "+m2_send_to_12+"\n"+"m2_send_to_13: "+m2_send_to_13+"\n"+"m2_send_to_14: "+m2_send_to_14+"\n"+"m2_send_to_15: "+m2_send_to_15+"\n"+"m2_send_to_16: "+m2_send_to_16+"\n"+"m2_send_to_17: "+m2_send_to_17+"\n"+"m2_send_to_18: "+m2_send_to_18+"\n"+"m2_send_to_19: "+m2_send_to_19+"\n"+"m2_send_to_20: "+m2_send_to_20+"\n");
    //log.log("m2_receive_from_3: "+m2_receive_from_3+"\n"+"m2_receive_from_4: "+m2_receive_from_4+"\n"+"m2_receive_from_5: "+m2_receive_from_5+"\n"+"m2_receive_from_6: "+m2_receive_from_6+"\n"+"m2_receive_from_7: "+m2_receive_from_7+"\n"+"m2_receive_from_8: "+m2_receive_from_8+"\n"+"m2_receive_from_9: "+m2_receive_from_9+"\n"+"m2_receive_from_10: "+m2_receive_from_10+"\n"+"m2_receive_from_11: "+m2_receive_from_11+"\n"+"m2_receive_from_12: "+m2_receive_from_12+"\n"+"m2_receive_from_13: "+m2_receive_from_13+"\n"+"m2_receive_from_14: "+m2_receive_from_14+"\n"+"m2_receive_from_15: "+m2_receive_from_15+"\n"+"m2_receive_from_16: "+m2_receive_from_16+"\n"+"m2_receive_from_17: "+m2_receive_from_17+"\n"+"m2_receive_from_18: "+m2_receive_from_18+"\n"+"m2_receive_from_19: "+m2_receive_from_19+"\n"+"m2_receive_from_20: "+m2_receive_from_20+"\n");
    //log.log("\n"+"m20_sending :"+m20_sending+"\n"+"m19_sending :"+m19_sending+"\n"+"m18_sending :"+m18_sending+"\n"+"m17_sending :"+m17_sending+"\n"+"m16_sending :"+m16_sending+"\n"+"m15_sending :"+m15_sending+"\n"+"m14_sending :"+m14_sending+"\n"+"m13_sending :"+m13_sending+"\n"+"m12_sending :"+m12_sending+"\n"+"m11_sending :"+m11_sending+"\n"+"m10_sending :"+m10_sending+"\n"+"m9_sending :"+m9_sending+"\n"+"m8_sending :"+m8_sending+"\n"+"m7_sending :"+m7_sending+"\n"+"m6_sending :"+m6_sending+"\n"+"m5_sending :"+m5_sending+"\n"+"m4_sending :"+m4_sending+"\n"+"m3_sending :"+m3_sending+"\n");
    //log.log("Total_Packet_Sent_to_2 : "+Total_Packet_Sent_to_2 +"\n"+"Total_m2_Packet_recieving: "+Total_m2_Packet_recieving+"\n"+"Total_Packet_loss: "+Total_Packet_loss+"\n"+"Packet_delivery_ratio: "+Packet_delivery_ratio+"\n"+"loss_ratio: "+loss_ratio+"\n");
}
    
}