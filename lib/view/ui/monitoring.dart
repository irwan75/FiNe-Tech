import 'package:fine_tech/view/widget/custom_color.dart';
import 'package:flutter/material.dart';

class Monitoring extends StatefulWidget {
  @override
  _MonitoringState createState() => _MonitoringState();
}

class _MonitoringState extends State<Monitoring> {
  Color colors_jaring, wifi, gps, led, sonar, buzzer;
  String text = "";
  int nilai, nilai_buzzer, nilai_wifi, nilai_gps, nilai_led, nilai_sonar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    colors_jaring = Colors.red.shade800;
    wifi = Colors.red.shade800;
    gps = Colors.red.shade800;
    led = Colors.red.shade800;
    sonar = Colors.red.shade800;
    buzzer = Colors.red.shade800;
    text = "Jaring Belum Penuh";
    nilai = 2;
    nilai_gps = 2;
    nilai_led = 2;
    nilai_sonar = 2;
    nilai_wifi = 2;
    nilai_buzzer = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(color: sky_color),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image(
                    image: AssetImage("assets/images/bawah_laut.gif"),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.40),
                      spreadRadius: 5,
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Status : ",
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black.withOpacity(0.40),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 13),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (nilai_wifi == 1) {
                                      wifi = Colors.red.shade800;
                                      nilai_wifi = 2;
                                    } else {
                                      wifi = Colors.green.shade800;
                                      nilai_wifi = 1;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: wifi,
                                  ),
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Image(
                                    image: AssetImage("assets/icon/wifi.png"),
                                  ),
                                ),
                              ),
                              Text("WiFi", style: style_status),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (nilai_gps == 1) {
                                      gps = Colors.red.shade800;
                                      nilai_gps = 2;
                                    } else {
                                      gps = Colors.green.shade800;
                                      nilai_gps = 1;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: gps,
                                  ),
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Image(
                                    image:
                                        AssetImage("assets/icon/modul_gps.png"),
                                  ),
                                ),
                              ),
                              Text("GPS", style: style_status),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (nilai_led == 1) {
                                      led = Colors.red.shade800;
                                      nilai_led = 2;
                                    } else {
                                      led = Colors.green.shade800;
                                      nilai_led = 1;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: led,
                                  ),
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Image(
                                    image: AssetImage("assets/icon/led.png"),
                                  ),
                                ),
                              ),
                              Text("LED", style: style_status),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (nilai_sonar == 1) {
                                      sonar = Colors.red.shade800;
                                      nilai_sonar = 2;
                                    } else {
                                      sonar = Colors.green.shade800;
                                      nilai_sonar = 1;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: sonar,
                                  ),
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Image(
                                    image: AssetImage(
                                        "assets/icon/ultrasonik.png"),
                                  ),
                                ),
                              ),
                              Text("Sonar", style: style_status),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (nilai_buzzer == 1) {
                                      buzzer = Colors.red.shade800;
                                      nilai_buzzer = 2;
                                    } else {
                                      buzzer = Colors.green.shade800;
                                      nilai_buzzer = 1;
                                    }
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: buzzer,
                                  ),
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 9, vertical: 9),
                                  child: Image(
                                    image: AssetImage("assets/icon/buzer.png"),
                                  ),
                                ),
                              ),
                              Text("Buzzer", style: style_status),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (nilai == 1) {
                            colors_jaring = Colors.red.shade800;
                            text = "Jaring Belum Penuh";
                            nilai = 2;
                          } else {
                            colors_jaring = Colors.green.shade800;
                            text = "Jaring Sudah Penuh";
                            nilai = 1;
                          }
                        });
                      },
                      child: Notification_full(colors_jaring, text),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle style_status = new TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

Container Notification_full(Color color, String text) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: color,
    ),
    child: Align(
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    ),
  );
}
