import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen/profile.dart';

class Screentwo extends StatelessWidget {
  const Screentwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height / 15,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(width: 10),
                GestureDetector(
                  child: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      maxRadius: 20,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => ProfileScreen()));
                  },
                ),
                SizedBox(width: 180),
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        'ChattApps',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // SizedBox(width: 490),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.chat,
                        size: 40,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height / 9,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(width: 5),
                CircleAvatar(
                  maxRadius: 45,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Tony',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
