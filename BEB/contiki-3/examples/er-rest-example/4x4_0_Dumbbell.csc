<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <project EXPORT="discard">[APPS_DIR]/mrm</project>
  <project EXPORT="discard">[APPS_DIR]/mspsim</project>
  <project EXPORT="discard">[APPS_DIR]/avrora</project>
  <project EXPORT="discard">[APPS_DIR]/serial_socket</project>
  <project EXPORT="discard">[APPS_DIR]/collect-view</project>
  <project EXPORT="discard">[APPS_DIR]/powertracker</project>
  <simulation>
    <title>4x4-0_Dumbbell</title>
    <randomseed>generated</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      org.contikios.cooja.radiomediums.UDGM
      <transmitting_range>15.0</transmitting_range>
      <interference_range>30.0</interference_range>
      <success_ratio_tx>1.0</success_ratio_tx>
      <success_ratio_rx>1.0</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>40000</logoutput>
    </events>
    <motetype>
      org.contikios.cooja.mspmote.Z1MoteType
      <identifier>z11</identifier>
      <description>BR</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/ipv6/rpl-udp/udp-server.c</source>
      <commands EXPORT="discard">make udp-server.z1 TARGET=z1</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/ipv6/rpl-udp/udp-server.z1</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDefaultSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
    </motetype>
    <motetype>
      org.contikios.cooja.mspmote.Z1MoteType
      <identifier>z12</identifier>
      <description>CN</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/er-rest-example/er-example-observe-client-16-0.c</source>
      <commands EXPORT="discard">make er-example-observe-client-16-0.z1 TARGET=z1</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/er-rest-example/er-example-observe-client-16-0.z1</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDefaultSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
    </motetype>
    <motetype>
      org.contikios.cooja.mspmote.Z1MoteType
      <identifier>z13</identifier>
      <description>NOB</description>
      <source EXPORT="discard">[CONTIKI_DIR]/examples/er-rest-example/er-example-server.c</source>
      <commands EXPORT="discard">make er-example-server.z1 TARGET=z1</commands>
      <firmware EXPORT="copy">[CONTIKI_DIR]/examples/er-rest-example/er-example-server.z1</firmware>
      <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.IPAddress</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
      <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspClock</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspMoteID</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspButton</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.Msp802154Radio</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDefaultSerial</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspLED</moteinterface>
      <moteinterface>org.contikios.cooja.mspmote.interfaces.MspDebugOutput</moteinterface>
    </motetype>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-9.866805555882404</x>
        <y>-0.21900626576833443</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>1</id>
      </interface_config>
      <motetype_identifier>z11</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-0.3040536622969885</x>
        <y>0.08031504638862796</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>2</id>
      </interface_config>
      <motetype_identifier>z12</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>9.624778442982269</x>
        <y>0.02767067994142902</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>3</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>9.627820797844862</x>
        <y>9.627820797844857</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>4</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>9.657536294134506</x>
        <y>-10.087675491799766</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>5</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-29.888618771028078</x>
        <y>20.06680043565912</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>6</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>19.356934333668473</x>
        <y>20.197444535093705</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>7</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-19.743963735090077</x>
        <y>20.113312576225063</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>8</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>10.069712554295506</x>
        <y>-19.970076335230665</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>9</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-19.83195870847639</x>
        <y>10.140829125789285</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>10</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-19.702518006638684</x>
        <y>0.39957688973420247</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>11</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-20.263546576587157</x>
        <y>-19.8617930667512</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>12</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-30.11246300828238</x>
        <y>-20.26783559322117</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>13</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>-19.918289614070407</x>
        <y>-10.063130491864518</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>14</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>19.793821545287113</x>
        <y>-20.069902243293914</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>15</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
    <mote>
      <breakpoints />
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>10.125228650242937</x>
        <y>19.745234112557903</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspClock
        <deviation>1.0</deviation>
      </interface_config>
      <interface_config>
        org.contikios.cooja.mspmote.interfaces.MspMoteID
        <id>16</id>
      </interface_config>
      <motetype_identifier>z13</motetype_identifier>
    </mote>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.SimControl
    <width>280</width>
    <z>3</z>
    <height>160</height>
    <location_x>400</location_x>
    <location_y>0</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.Visualizer
    <plugin_config>
      <moterelations>true</moterelations>
      <skin>org.contikios.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.GridVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.TrafficVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.UDGMVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.MoteTypeVisualizerSkin</skin>
      <viewport>5.384396021538346 0.0 0.0 5.384396021538346 220.73655956923275 169.68732282828287</viewport>
    </plugin_config>
    <width>400</width>
    <z>1</z>
    <height>400</height>
    <location_x>1</location_x>
    <location_y>1</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.LogListener
    <plugin_config>
      <filter>Observe OK</filter>
      <formatted_time />
      <coloring />
    </plugin_config>
    <width>584</width>
    <z>5</z>
    <height>663</height>
    <location_x>400</location_x>
    <location_y>160</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.TimeLine
    <plugin_config>
      <mote>0</mote>
      <mote>1</mote>
      <mote>2</mote>
      <mote>3</mote>
      <mote>4</mote>
      <mote>5</mote>
      <mote>6</mote>
      <mote>7</mote>
      <mote>8</mote>
      <mote>9</mote>
      <mote>10</mote>
      <mote>11</mote>
      <mote>12</mote>
      <mote>13</mote>
      <mote>14</mote>
      <mote>15</mote>
      <showRadioRXTX />
      <showRadioHW />
      <showLEDs />
      <zoomfactor>500.0</zoomfactor>
    </plugin_config>
    <width>1646</width>
    <z>4</z>
    <height>166</height>
    <location_x>0</location_x>
    <location_y>827</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.Notes
    <plugin_config>
      <notes>Enter notes here</notes>
      <decorations>true</decorations>
    </plugin_config>
    <width>966</width>
    <z>2</z>
    <height>160</height>
    <location_x>680</location_x>
    <location_y>0</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script>load("nashorn:mozilla_compat.js"); //fix java importPackage(java.io) error&#xD;
importPackage(java.io); //import Java Package to JavaScript&#xD;
&#xD;
username=new com.sun.security.auth.module.UnixSystem().getUsername(); //get current user name&#xD;
today = new Date(); // get current date&#xD;
&#xD;
date=today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();//date format&#xD;
sl="/home/"+username+"/LabWork/"; //save location&#xD;
sf=sl+date+"_Test_BEB_Dumbbell_4x4-0_1s_log_"; //save file name  &#xD;
ob_node="Observe OK form 16"; &#xD;
simulate_time=300000; //simulate time after start measure  &#xD;
i=1; //file index&#xD;
checkfile= new File(sf+i+".txt"); //define check file name&#xD;
    while(checkfile.exists()){//check if file is exist&#xD;
        i=i+1;&#xD;
        checkfile= new File(sf+i+".txt");        &#xD;
    }&#xD;
savefile=new FileWriter(sf+i+".txt"); //create file&#xD;
//Connect_Mote=3;&#xD;
/* Function Clock on Mote */&#xD;
/*&#xD;
function click_on_mote(stopcode){&#xD;
        if(stopcode==1){&#xD;
            return;&#xD;
        }    &#xD;
        get_sim = mote.getSimulation();&#xD;
        mote_click=get_sim.getMote(1);&#xD;
        mote_click.getInterfaces().getButton().clickButton();&#xD;
        Connect_Mote = Connect_Mote+1;&#xD;
    // log.log("Conect to mote "+Connect_Mote+" StopCode = "+stopcode+"\n");      &#xD;
} */&#xD;
/*End CLick on Mote*/&#xD;
start_calculate=0;&#xD;
delay = 0;&#xD;
jitter=0;&#xD;
throughput=0;&#xD;
Packet_delivery_ratio=0;&#xD;
loss_ratio=0;&#xD;
data_length = 20;&#xD;
Average_delay = 0;&#xD;
timeReceived= new Array();&#xD;
timeSent = new Array();&#xD;
delay = new Array();&#xD;
sendingArray=[];&#xD;
receiveArray=[];&#xD;
&#xD;
stopcode=0;&#xD;
Total_Packet_recieving      =0;Total_Packet_Sent_to_2      =0;Total_m2_Packet_Sent        =0;&#xD;
Total_m2_Packet_recieving   =0;Total_Packet_loss           =0;&#xD;
&#xD;
m2_send_to_3 =0;m2_send_to_4 =0;m2_send_to_5 =0;m2_send_to_6 =0;m2_send_to_7 =0;m2_send_to_8 =0;m2_send_to_9 =0;m2_send_to_10 =0;m2_send_to_11 =0;m2_send_to_12 =0;&#xD;
m2_send_to_13 =0;m2_send_to_14 =0;m2_send_to_15 =0;m2_send_to_16 =0;m2_send_to_17 =0;m2_send_to_18 =0;m2_send_to_19 =0;m2_send_to_20 =0;&#xD;
m2_send_to_21 =0;m2_send_to_22 =0;m2_send_to_23 =0;m2_send_to_24 =0;m2_send_to_25 =0;&#xD;
&#xD;
&#xD;
m2_receive_from_3 =0;m2_receive_from_4 =0;m2_receive_from_5 =0;m2_receive_from_6 =0;m2_receive_from_7 =0;m2_receive_from_8 =0;m2_receive_from_9 =0;&#xD;
m2_receive_from_10 =0;m2_receive_from_11 =0;m2_receive_from_12 =0;m2_receive_from_13 =0;m2_receive_from_14 =0;m2_receive_from_15 =0;m2_receive_from_16 =0;&#xD;
m2_receive_from_17 =0;m2_receive_from_18 =0;m2_receive_from_19 =0;m2_receive_from_20 =0;m2_receive_from_21 =0;m2_receive_from_22 =0;m2_receive_from_23 =0;&#xD;
m2_receive_from_24 =0;m2_receive_from_25 =0;&#xD;
&#xD;
m3_sending =0;m3_receiving =0;m4_sending =0;m4_receiving =0;m5_sending =0;m5_receiving =0;m6_sending =0;m6_receiving =0;&#xD;
m7_sending =0;m7_receiving =0;m8_sending =0;m8_receiving =0;m9_sending =0;m9_receiving =0;m10_sending =0;m10_receiving =0;&#xD;
m11_sending =0;m11_receiving =0;m12_sending =0;m12_receiving =0;m13_sending =0;m13_receiving =0;m14_sending =0;m14_receiving =0;&#xD;
m15_sending =0;m15_receiving =0;m16_sending =0;m16_receiving =0;m17_sending =0;m17_receiving =0;m18_sending =0;m18_receiving =0;&#xD;
m19_sending =0;m19_receiving =0;m20_sending =0;m20_receiving =0;m21_sending =0;m21_receiving =0;m22_sending =0;m22_receiving =0;&#xD;
m23_sending =0;m23_receiving =0;m24_sending =0;m24_receiving =0;m25_sending =0;m25_receiving =0;&#xD;
stoptime=0;&#xD;
&#xD;
function start_measure(a){&#xD;
    if(start_calculate&gt;1){&#xD;
        return 0;&#xD;
    }&#xD;
    stoptime=parseInt(a)+simulate_time;&#xD;
    log.log("start calcualte.\n");&#xD;
    log.log(stoptime+"\n");&#xD;
    TIMEOUT(300000000000);&#xD;
}&#xD;
timeout_function = function () {&#xD;
    log.log("Script timed out.\n");&#xD;
    log.log("m2_send_to_3: "+m2_send_to_3+"\n"+"m2_send_to_4: "+m2_send_to_4+"\n"+"m2_send_to_5: "+m2_send_to_5+"\n"+"m2_send_to_6: "+m2_send_to_6+"\n"+"m2_send_to_7: "+m2_send_to_7+"\n"+"m2_send_to_8: "+m2_send_to_8+"\n"+"m2_send_to_9: "+m2_send_to_9+"\n"+"m2_send_to_10: "+m2_send_to_10+"\n"+"m2_send_to_11: "+m2_send_to_11+"\n"+"m2_send_to_12: "+m2_send_to_12+"\n"+"m2_send_to_13: "+m2_send_to_13+"\n"+"m2_send_to_14: "+m2_send_to_14+"\n"+"m2_send_to_15: "+m2_send_to_15+"\n"+"m2_send_to_16: "+m2_send_to_16+"\n"+"m2_send_to_17: "+m2_send_to_17+"\n"+"m2_send_to_18: "+m2_send_to_18+"\n"+"m2_send_to_19: "+m2_send_to_19+"\n"+"m2_send_to_20: "+m2_send_to_20+"\n"+"m2_send_to_21: "+m2_send_to_21+"\n"+"m2_send_to_22: "+m2_send_to_22+"\n"+"m2_send_to_23: "+m2_send_to_23+"\n"+"m2_send_to_24: "+m2_send_to_24+"\n"+"m2_send_to_25: "+m2_send_to_25+"\n");&#xD;
    log.log("\n"+"m2_receive_from_3: "+m2_receive_from_3+"\n"+"m2_receive_from_4: "+m2_receive_from_4+"\n"+"m2_receive_from_5: "+m2_receive_from_5+"\n"+"m2_receive_from_6: "+m2_receive_from_6+"\n"+"m2_receive_from_7: "+m2_receive_from_7+"\n"+"m2_receive_from_8: "+m2_receive_from_8+"\n"+"m2_receive_from_9: "+m2_receive_from_9+"\n"+"m2_receive_from_10: "+m2_receive_from_10+"\n"+"m2_receive_from_11: "+m2_receive_from_11+"\n"+"m2_receive_from_12: "+m2_receive_from_12+"\n"+"m2_receive_from_13: "+m2_receive_from_13+"\n"+"m2_receive_from_14: "+m2_receive_from_14+"\n"+"m2_receive_from_15: "+m2_receive_from_15+"\n"+"m2_receive_from_16: "+m2_receive_from_16+"\n"+"m2_receive_from_17: "+m2_receive_from_17+"\n"+"m2_receive_from_18: "+m2_receive_from_18+"\n"+"m2_receive_from_19: "+m2_receive_from_19+"\n"+"m2_receive_from_20: "+m2_receive_from_20+"\n"+"m2_receive_from_21: "+m2_receive_from_21+"\n"+"m2_receive_from_22: "+m2_receive_from_22+"\n"+"m2_receive_from_23: "+m2_receive_from_23+"\n"+"m2_receive_from_24: "+m2_receive_from_24+"\n"+"m2_receive_from_25: "+m2_receive_from_25+"\n");&#xD;
    log.log("\n"+"m25_sending :"+m25_sending+"\n"+"m24_sending :"+m24_sending+"\n"+"m23_sending :"+m23_sending+"\n"+"m22_sending :"+m22_sending+"\n"+"m21_sending :"+m21_sending+"\n"+"m20_sending :"+m20_sending+"\n"+"m19_sending :"+m19_sending+"\n"+"m18_sending :"+m18_sending+"\n"+"m17_sending :"+m17_sending+"\n"+"m16_sending :"+m16_sending+"\n"+"m15_sending :"+m15_sending+"\n"+"m14_sending :"+m14_sending+"\n"+"m13_sending :"+m13_sending+"\n"+"m12_sending :"+m12_sending+"\n"+"m11_sending :"+m11_sending+"\n"+"m10_sending :"+m10_sending+"\n"+"m9_sending :"+m9_sending+"\n"+"m8_sending :"+m8_sending+"\n"+"m7_sending :"+m7_sending+"\n"+"m6_sending :"+m6_sending+"\n"+"m5_sending :"+m5_sending+"\n"+"m4_sending :"+m4_sending+"\n"+"m3_sending :"+m3_sending+"\n");&#xD;
    log.log("Total_Packet_Sent_to_2 : "+Total_Packet_Sent_to_2 +"\n"+"Total_m2_Packet_recieving: "+Total_m2_Packet_recieving+"\n"+"Total_Packet_loss: "+Total_Packet_loss+"\n"+"Packet_delivery_ratio: "+Packet_delivery_ratio+"\n"+"loss_ratio: "+loss_ratio+"\n");&#xD;
    savefile.close();&#xD;
    log.testOK();&#xD;
}&#xD;
&#xD;
while(1) { &#xD;
    a=sim.getSimulationTimeMillis(); //get simulation time in milisecond&#xD;
&#xD;
array = new Array();&#xD;
YIELD();&#xD;
//log.log(start_calculate+"\n");&#xD;
    msgs= msg + "_TIME:" + time + "_ID:" + id + "_Time2:"+ a + "\n";&#xD;
    &#xD;
    msgArray = msgs.split('_');&#xD;
    if(msgArray[0].equals(ob_node)){&#xD;
        start_calculate = start_calculate+1; &#xD;
        start_measure(msgArray[3].split(':')[1]); &#xD;
        //log.log(msgArray[3]+"\n") ;&#xD;
    }&#xD;
   &#xD;
    if(start_calculate &gt;= 1){&#xD;
    if(msgArray[0].equals("CTR")){&#xD;
    //log.log(msgArray[0]+"_"+msgArray[1]+"_"+msgArray[2]+"_"+msgArray[3]+"_"+msgArray[4]+"_"+msgArray[5]+"_"+msgArray[6]+"_"+msgArray[7]+"_"+msgArray[8]+"_"+msgArray[9]+"_"+msgArray[10]+"\n");    &#xD;
    savefile.write(msgs);&#xD;
    //log.log(parseInt(msgArray[11].split(':')[1])+"\n");&#xD;
        if(msgArray[0].equals("CTR")&amp;&amp;msgArray[1].equals("Receiving")){&#xD;
            if(parseInt(msgArray[11].split(':')[1]) &gt;= stoptime &amp;&amp; start_calculate&gt;1){&#xD;
                log.log(msgArray[11].split(':')[1]+" | "+stoptime+"\n");&#xD;
                SCRIPT_TIMEOUT();&#xD;
                //SCRIPT_KILL()&#xD;
            }&#xD;
    }&#xD;
    &#xD;
    &#xD;
    }&#xD;
&#xD;
    if(id==2){&#xD;
    //splite the message&#xD;
    //log.log("1-"+msgArray[0]+"\n"); //test message after splite&#xD;
        &#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
        //log.log("leng:"+msgArray.length+"\n");&#xD;
        // log.log(msgArray[0]+"_"+msgArray[1]+"_"+msgArray[2]+"_"+msgArray[3]+"_"+msgArray[4]+"_"+msgArray[5]+"_"+msgArray[6]+"_"+msgArray[7]+"_"+msgArray[8]+"\n");&#xD;
            //log.log(msgArray[4]+"\n");&#xD;
                &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0003]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0003]")){&#xD;
                    m2_send_to_3 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0004]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0004]")){&#xD;
                    m2_send_to_4 ++;&#xD;
                }&#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0005]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0005]")){&#xD;
                    m2_send_to_5 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0006]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0006]")){&#xD;
                    m2_send_to_6 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0007]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0007]")){&#xD;
                    m2_send_to_7 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0008]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0008]")){&#xD;
                    m2_send_to_8 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0009]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0009]")){&#xD;
                    m2_send_to_9 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000a]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000a]")){&#xD;
                    m2_send_to_10 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000b]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000b]")){&#xD;
                    m2_send_to_11 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000c]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000c]")){&#xD;
                    m2_send_to_12 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000d]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000d]")){&#xD;
                    m2_send_to_13 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000e]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000e]")){&#xD;
                    m2_send_to_14 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000f]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000f]")){&#xD;
                    m2_send_to_15 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0010]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0010]")){&#xD;
                    m2_send_to_16 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0011]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0011]")){&#xD;
                    m2_send_to_17 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0012]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0012]")){&#xD;
                    m2_send_to_18 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0013]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0013]")){&#xD;
                    m2_send_to_19 ++;&#xD;
                } &#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0014]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0014]")){&#xD;
                    m2_send_to_20 ++;&#xD;
                }&#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0015]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0015]")){&#xD;
                    m2_send_to_21 ++;&#xD;
                }&#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0016]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0016]")){&#xD;
                    m2_send_to_22 ++;&#xD;
                }&#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0017]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0017]")){&#xD;
                    m2_send_to_23 ++;&#xD;
                }&#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0018]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0018]")){&#xD;
                    m2_send_to_24 ++;&#xD;
                }&#xD;
                if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0019]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0019]")){&#xD;
                    m2_send_to_25 ++;&#xD;
                } &#xD;
                Total_m2_Packet_Sent= m2_send_to_25+m2_send_to_24+m2_send_to_23+m2_send_to_22+m2_send_to_21+m2_send_to_20+m2_send_to_19+m2_send_to_18+m2_send_to_17+m2_send_to_16+m2_send_to_15+m2_send_to_14+m2_send_to_13+m2_send_to_12+m2_send_to_11+m2_send_to_10+m2_send_to_9+m2_send_to_8+m2_send_to_7+m2_send_to_6+m2_send_to_5+m2_send_to_4+m2_send_to_3;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")) {&#xD;
            //log.log(msgArray[4]+"\n");&#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0003]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0003]")){&#xD;
                m2_receive_from_3 ++;&#xD;
                //click_on_mote(stopcode);&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0004]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0004]")){&#xD;
                m2_receive_from_4 ++;&#xD;
                //click_on_mote(stopcode);&#xD;
            // stopcodecode);&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0006]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0006]")){&#xD;
                m2_receive_from_6 ++;&#xD;
                //click_on_mote(stopcode);&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0007]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0007]")){&#xD;
                m2_receive_from_7 ++;&#xD;
                //click_on_mote(stopcode);&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0008]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0008]")){&#xD;
                m2_receive_from_8 ++;&#xD;
                //click_on_mote(stopcode);&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0009]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0009]")){&#xD;
                m2_receive_from_9 ++;&#xD;
                //click_on_mote(stopcode);&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000a]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000a]")){&#xD;
                m2_receive_from_10 ++;&#xD;
                //click_on_mote(stopcode);&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000b]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000b]")){&#xD;
                m2_receive_from_11 ++;&#xD;
                //click_on_mote(stopcode);&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000c]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000c]")){&#xD;
                m2_receive_from_12 ++;&#xD;
                //stopcode=1;&#xD;
                //click_on_mote(stopcode);&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000d]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000d]")){&#xD;
                m2_receive_from_13 ++;&#xD;
            // click_on_mote();&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000e]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000e]")){&#xD;
                m2_receive_from_14 ++;&#xD;
            // click_on_mote();&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:000f]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:000f]")){&#xD;
                m2_receive_from_15 ++;&#xD;
                //click_on_mote();&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0010]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0010]")){&#xD;
                m2_receive_from_16 ++;&#xD;
                //click_on_mote();&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0011]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0011]")){&#xD;
                m2_receive_from_17 ++;&#xD;
            // click_on_mote();&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0012]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0012]")){&#xD;
                m2_receive_from_18 ++;&#xD;
                //click_on_mote();&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0013]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0013]")){&#xD;
                m2_receive_from_19 ++;&#xD;
                //click_on_mote();&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0014]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0014]")){&#xD;
                m2_receive_from_20 ++;&#xD;
                //click_on_mote();&#xD;
            } &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0015]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0015]")){&#xD;
                m2_receive_from_21 ++;&#xD;
            }&#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0016]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0016]")){&#xD;
                m2_receive_from_22 ++;&#xD;
            }&#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0017]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0017]")){&#xD;
                m2_receive_from_23 ++;&#xD;
            }&#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0018]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0018]")){&#xD;
                m2_receive_from_24 ++;&#xD;
            }  &#xD;
            if(msgArray[4].equals("[aaaa:0000:0000:0000:c30c:0000:0000:0019]") || msgArray[4].equals("[fe80:0000:0000:0000:c30c:0000:0000:0019]")){&#xD;
                m2_receive_from_25 ++;&#xD;
            }&#xD;
            Total_m2_Packet_recieving=m2_receive_from_25+m2_receive_from_24+m2_receive_from_23+m2_receive_from_22+m2_receive_from_21+m2_receive_from_20+m2_receive_from_19+m2_receive_from_18+m2_receive_from_17+m2_receive_from_16+m2_receive_from_15+m2_receive_from_14+m2_receive_from_13+m2_receive_from_12+m2_receive_from_11+m2_receive_from_10+m2_receive_from_9+m2_receive_from_8+m2_receive_from_7+m2_receive_from_6+m2_receive_from_5+m2_receive_from_4+m2_receive_from_3;&#xD;
            }&#xD;
        }&#xD;
    if(id==3){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m3_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m3_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==4){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m4_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m4_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==5){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m5_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m5_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==6){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m6_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m6_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==7){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m7_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m7_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==8){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m8_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m8_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==9){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m9_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m9_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==10){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m10_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m10_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==11){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m11_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m11_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==12){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m12_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m12_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==13){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m13_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m13_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==14){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m14_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m14_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==15){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m15_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m15_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==16){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m16_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m16_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==17){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m17_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m17_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==18){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m18_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m18_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==19){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m19_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m19_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==20){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m20_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m20_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==21){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m21_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m21_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==22){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m22_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m22_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==23){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m23_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m23_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==24){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m24_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m24_receiving ++&#xD;
            }&#xD;
    }&#xD;
    if(id==25){&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Sending")) {&#xD;
            m25_sending ++;&#xD;
            }&#xD;
        if(msgArray[0].equals("CTR") &amp;&amp; msgArray[1].equals("Receiving")){&#xD;
            m25_receiving ++&#xD;
            }&#xD;
    }&#xD;
&#xD;
    Total_Packet_Sent_to_2 = m3_sending+m4_sending+m5_sending+m6_sending+m7_sending+m8_sending+m9_sending+m10_sending+m11_sending+m12_sending+m13_sending+m14_sending+m15_sending+m16_sending+m17_sending+m18_sending+m19_sending+m20_sending+m21_sending+m22_sending+m23_sending+m24_sending+m25_sending;&#xD;
    Total_Packet_loss=Total_Packet_Sent_to_2 - Total_m2_Packet_recieving;&#xD;
    //log.log("m2_send_to_3: "+m2_send_to_3+"\n"+"m2_send_to_4: "+m2_send_to_4+"\n"+"m2_send_to_5: "+m2_send_to_5+"\n"+"m2_send_to_6: "+m2_send_to_6+"\n"+"m2_send_to_7: "+m2_send_to_7+"\n"+"m2_send_to_8: "+m2_send_to_8+"\n"+"m2_send_to_9: "+m2_send_to_9+"\n"+"m2_send_to_10: "+m2_send_to_10+"\n"+"m2_send_to_11: "+m2_send_to_11+"\n"+"m2_send_to_12: "+m2_send_to_12+"\n"+"m2_send_to_13: "+m2_send_to_13+"\n"+"m2_send_to_14: "+m2_send_to_14+"\n"+"m2_send_to_15: "+m2_send_to_15+"\n"+"m2_send_to_16: "+m2_send_to_16+"\n"+"m2_send_to_17: "+m2_send_to_17+"\n"+"m2_send_to_18: "+m2_send_to_18+"\n"+"m2_send_to_19: "+m2_send_to_19+"\n"+"m2_send_to_20: "+m2_send_to_20+"\n"+"m2_receive_from_3: "+m2_receive_from_3+"\n"+"m2_receive_from_4: "+m2_receive_from_4+"\n"+"m2_receive_from_5: "+m2_receive_from_5+"\n"+"m2_receive_from_6: "+m2_receive_from_6+"\n"+"m2_receive_from_7: "+m2_receive_from_7+"\n"+"m2_receive_from_8: "+m2_receive_from_8+"\n"+"m2_receive_from_9: "+m2_receive_from_9+"\n"+"m2_receive_from_10: "+m2_receive_from_10+"\n"+"m2_receive_from_11: "+m2_receive_from_11+"\n"+"m2_receive_from_12: "+m2_receive_from_12+"\n"+"m2_receive_from_13: "+m2_receive_from_13+"\n"+"m2_receive_from_14: "+m2_receive_from_14+"\n"+"m2_receive_from_15: "+m2_receive_from_15+"\n"+"m2_receive_from_16: "+m2_receive_from_16+"\n"+"m2_receive_from_17: "+m2_receive_from_17+"\n"+"m2_receive_from_18: "+m2_receive_from_18+"\n"+"m2_receive_from_19: "+m2_receive_from_19+"\n"+"m2_receive_from_20: "+m2_receive_from_20+"\n"+"\n"+"m20_sending :"+m20_sending+"\n"+"m20_sending :"+m19_sending+"\n"+"m19_sending :"+m18_sending+"\n"+"m17_sending :"+m17_sending+"\n"+"m16_sending :"+m16_sending+"\n"+"m15_sending :"+m15_sending+"\n"+"m14_sending :"+m14_sending+"\n"+"m13_sending :"+m13_sending+"\n"+"m12_sending :"+m12_sending+"\n"+"m11_sending :"+m11_sending+"\n"+"m10_sending :"+m10_sending+"\n"+"m9_sending :"+m9_sending+"\n"+"m8_sending :"+m8_sending+"\n"+"m7_sending :"+m7_sending+"\n"+"m6_sending :"+m6_sending+"\n"+"m5_sending :"+m5_sending+"\n"+"m4_sending :"+m4_sending+"\n"+"m3_sending :"+m3_sending+"\n"+"Total_Packet_Sent_to_2 : "+Total_Packet_Sent_to_2 +"\n"+"Total_m2_Packet_recieving: "+Total_m2_Packet_recieving+"\n"+"Total_Packet_loss: "+Total_Packet_loss+"\n");    &#xD;
    Packet_delivery_ratio= Total_m2_Packet_recieving*100/Total_Packet_Sent_to_2;&#xD;
    loss_ratio=(Total_Packet_Sent_to_2-Total_m2_Packet_recieving)*100/Total_Packet_Sent_to_2;&#xD;
    //log.log("m2_send_to_3: "+m2_send_to_3+"\n"+"m2_send_to_4: "+m2_send_to_4+"\n"+"m2_send_to_5: "+m2_send_to_5+"\n"+"m2_send_to_6: "+m2_send_to_6+"\n"+"m2_send_to_7: "+m2_send_to_7+"\n"+"m2_send_to_8: "+m2_send_to_8+"\n"+"m2_send_to_9: "+m2_send_to_9+"\n"+"m2_send_to_10: "+m2_send_to_10+"\n"+"m2_send_to_11: "+m2_send_to_11+"\n"+"m2_send_to_12: "+m2_send_to_12+"\n"+"m2_send_to_13: "+m2_send_to_13+"\n"+"m2_send_to_14: "+m2_send_to_14+"\n"+"m2_send_to_15: "+m2_send_to_15+"\n"+"m2_send_to_16: "+m2_send_to_16+"\n"+"m2_send_to_17: "+m2_send_to_17+"\n"+"m2_send_to_18: "+m2_send_to_18+"\n"+"m2_send_to_19: "+m2_send_to_19+"\n"+"m2_send_to_20: "+m2_send_to_20+"\n");&#xD;
    //log.log("m2_receive_from_3: "+m2_receive_from_3+"\n"+"m2_receive_from_4: "+m2_receive_from_4+"\n"+"m2_receive_from_5: "+m2_receive_from_5+"\n"+"m2_receive_from_6: "+m2_receive_from_6+"\n"+"m2_receive_from_7: "+m2_receive_from_7+"\n"+"m2_receive_from_8: "+m2_receive_from_8+"\n"+"m2_receive_from_9: "+m2_receive_from_9+"\n"+"m2_receive_from_10: "+m2_receive_from_10+"\n"+"m2_receive_from_11: "+m2_receive_from_11+"\n"+"m2_receive_from_12: "+m2_receive_from_12+"\n"+"m2_receive_from_13: "+m2_receive_from_13+"\n"+"m2_receive_from_14: "+m2_receive_from_14+"\n"+"m2_receive_from_15: "+m2_receive_from_15+"\n"+"m2_receive_from_16: "+m2_receive_from_16+"\n"+"m2_receive_from_17: "+m2_receive_from_17+"\n"+"m2_receive_from_18: "+m2_receive_from_18+"\n"+"m2_receive_from_19: "+m2_receive_from_19+"\n"+"m2_receive_from_20: "+m2_receive_from_20+"\n");&#xD;
    //log.log("\n"+"m20_sending :"+m20_sending+"\n"+"m19_sending :"+m19_sending+"\n"+"m18_sending :"+m18_sending+"\n"+"m17_sending :"+m17_sending+"\n"+"m16_sending :"+m16_sending+"\n"+"m15_sending :"+m15_sending+"\n"+"m14_sending :"+m14_sending+"\n"+"m13_sending :"+m13_sending+"\n"+"m12_sending :"+m12_sending+"\n"+"m11_sending :"+m11_sending+"\n"+"m10_sending :"+m10_sending+"\n"+"m9_sending :"+m9_sending+"\n"+"m8_sending :"+m8_sending+"\n"+"m7_sending :"+m7_sending+"\n"+"m6_sending :"+m6_sending+"\n"+"m5_sending :"+m5_sending+"\n"+"m4_sending :"+m4_sending+"\n"+"m3_sending :"+m3_sending+"\n");&#xD;
    //log.log("Total_Packet_Sent_to_2 : "+Total_Packet_Sent_to_2 +"\n"+"Total_m2_Packet_recieving: "+Total_m2_Packet_recieving+"\n"+"Total_Packet_loss: "+Total_Packet_loss+"\n"+"Packet_delivery_ratio: "+Packet_delivery_ratio+"\n"+"loss_ratio: "+loss_ratio+"\n");&#xD;
}&#xD;
    &#xD;
}</script>
      <active>true</active>
    </plugin_config>
    <width>600</width>
    <z>0</z>
    <height>700</height>
    <location_x>789</location_x>
    <location_y>157</location_y>
  </plugin>
</simconf>

