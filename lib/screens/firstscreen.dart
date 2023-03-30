import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'mainscreen.dart';


class firstscreen extends StatefulWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  State<firstscreen> createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img 1.png"),
            ),
            color: Colors.green[200],
          ),
        ),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.topRight,
                colors: [
                  Color(0xACE1AF),
                  Colors.green.shade200,
                ]
            )
        ),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SafeArea(
                  child: const Text(
                    "To simplify\n the way you\n work",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Image.asset(
                  "assets/img.png",
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 80,),
                Text(
                  "Controlling deliveries in\n reliable and no-hassle way.",
                  style: TextStyle(
                      fontSize: 20
                  ),),
                SizedBox(height: 20,),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen() ));
                  },
                  child: Text(
                    "Get free trial",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10)
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
