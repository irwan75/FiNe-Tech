import 'package:fine_tech/view/ui/monitoring.dart';
import 'package:fine_tech/view/ui/panduan.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image(
              image: AssetImage("assets/images/meteor.gif"),
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Monitoring()));
                    },
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 4),
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/fish.gif"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Monitoring",
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 50),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Panduan()));
                    },
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 4),
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/setting.gif"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Panduan",
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
