import 'package:flutter/material.dart';

class Extras extends StatelessWidget {
  final String topic;
  final String timeFrame;
  final String activity;
  final String note;
  const Extras({Key? key,required this.topic,required this.timeFrame,required this.activity,required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        height: 120,
        width: 100,
        padding: EdgeInsets.fromLTRB(15,25,15,0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(topic,),
                Text(timeFrame,)
              ],
            ),
            SizedBox(height: 10,),
            Text(
              activity,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                const Icon(
                  Icons.error_outline,
                  size: 19,
                ),
                const SizedBox(width: 8,),
                Text(note,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
