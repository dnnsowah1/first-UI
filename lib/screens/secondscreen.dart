import 'package:flutter/material.dart';
import 'package:untitled/screens/extras.dart';


class Secondscreen extends StatefulWidget {
  const Secondscreen({Key? key}) : super(key: key);

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFCDD2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          CircleAvatar(
                            backgroundColor: Color(0xFFFFCDD2),
                            backgroundImage: AssetImage('assets/img 2.jpeg'),
                            radius: 25,
                          ),
                          SizedBox(width: 10,),
                          Text("Hi, Kira!",
                          ),
                        ],
                      ),
                      const Icon(Icons.notification_add),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    "Tasks for today:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      SizedBox(width: 8,),
                      Text("5 available"),

                    ],
                  ),
                  const SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Search",
                      suffixIcon: const Icon(Icons.search),
                      suffixIconColor: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Last connections",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Text("See all")
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/img 3.webp'),
                        backgroundColor: Color(0xFFFFCDD2),
                        radius: 30,
                      ),
                      SizedBox(width: 17,),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/img 4.webp'),
                        backgroundColor: Color(0xFFFFCDD2),
                        radius: 30,
                      ),
                      SizedBox(width: 17,),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/img 5.webp'),
                        backgroundColor: Color(0xFFFFCDD2),
                        radius: 30,
                      ),
                      SizedBox(width: 17,),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/img 6.jpeg'),
                        backgroundColor: Color(0xFFFFCDD2),
                        radius: 30,
                      ),
                      SizedBox(width: 17,),
                      CircleAvatar(
                        backgroundColor: Color(0xFFEF9A9A),
                        radius: 30,
                        child: Text(
                          "+5",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                  ),
                ),
                padding: const EdgeInsets.all(20),
                //color: Colors.grey[100],
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                              "Active projects",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),
                          ),
                          Text("See all")
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: const [
                            Extras(topic: "Numero 10", timeFrame: "4h", activity: "Blog and posts", note: "Deadline is today"),
                            Extras(topic: "topic", timeFrame: "timeFrame", activity: "activity", note: "note"),
                            Extras(topic: "Numero 10", timeFrame: "4h", activity: "Blog and posts", note: "Deadline is today"),
                            Extras(topic: "topic", timeFrame: "timeFrame", activity: "activity", note: "note"),
                            Extras(topic: "Numero 10", timeFrame: "4h", activity: "Blog and posts", note: "Deadline is today"),
                            Extras(topic: "topic", timeFrame: "timeFrame", activity: "activity", note: "note"),
                            Extras(topic: "Numero 10", timeFrame: "4h", activity: "Blog and posts", note: "Deadline is today"),
                            Extras(topic: "topic", timeFrame: "timeFrame", activity: "activity", note: "note")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}