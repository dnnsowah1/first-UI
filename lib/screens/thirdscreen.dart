import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class Third_screen extends StatefulWidget {
  const Third_screen({Key? key}) : super(key: key);

  @override
  State<Third_screen> createState() => _Third_screenState();
}

class _Third_screenState extends State<Third_screen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.green[200],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Icon(
                            Icons.cancel_outlined,
                            size: 50,
                            color: Colors.blueGrey,
                          ),
                          //SizedBox(width: 200,),
                          Icon(
                              Icons.more_horiz,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                   // const SizedBox(height: 5,),
                    Icon(
                        Icons.horizontal_rule,
                      size: 50,
                      color: Colors.grey[700],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                  ),
                  padding: const EdgeInsets.all(20),
                  //color: Colors.grey[100],
                  child: Center(
                    child: Column(
                      children: [
                        const SizedBox(height: 25,),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              const Text(
                                  "Messaging ID",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 30,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                      "Your daily plan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                    ),
                                  ),
                                  Text(
                                      "70%",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(height: 15,),
                              LinearPercentIndicator(
                                lineHeight: 10,
                                percent: 0.7,
                                progressColor: Colors.black,
                              ),
                              const SizedBox(height: 20,),
                              const Text(
                                  "4 of 6 completed",
                                style: TextStyle(
                                  fontSize: 15
                                ),
                              ),
                              const SizedBox(height: 40,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 120,
                                    width: 180,
                                    padding: EdgeInsets.fromLTRB(15,25,15,0),
                                    decoration: BoxDecoration(
                                        color: Colors.orangeAccent[100],
                                        borderRadius: BorderRadius.circular(16)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "17",
                                          style: TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        const SizedBox(height: 6,),
                                        Row(
                                          children: const [
                                            Icon(
                                                Icons.task,
                                              size: 20,
                                            ),
                                            SizedBox(width: 5,),
                                            Text(
                                                "Tasks finished",
                                              style: TextStyle(
                                                fontSize: 15
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 120,
                                    width: 180,
                                    padding: EdgeInsets.fromLTRB(15,25,15,0),
                                    decoration: BoxDecoration(
                                        color: Colors.orangeAccent[100],
                                        borderRadius: BorderRadius.circular(16)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "3,2",
                                          style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        const SizedBox(height: 6,),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.watch_later,
                                              size: 20,
                                            ),
                                            SizedBox(width: 5,),
                                            Text(
                                              "Tracked hours",
                                              style: TextStyle(
                                                  fontSize: 15
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              const Text(
                                "Overview",
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Text(
                                  "Messaging ID framework development for the\nmarketing branch and the publicity bureau and\nimplemented a draft on the framework",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[600]
                                ),
                              ),
                              const SizedBox(height: 30,),
                              const Text(
                                "Members connected",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold
                                ),
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
                                    backgroundImage: AssetImage('assets/img 8.jpeg'),
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