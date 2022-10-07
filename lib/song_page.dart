// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:music_player_ui/new_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.only(top: 30, right: 25, left: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NewBox(child: Icon(Icons.arrow_back_ios)),
                  ),
                  Text("P L A Y L I S T"),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NewBox(child: Icon(Icons.menu)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              NewBox(
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset("assets/cover-art.jpeg")),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dip",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Madrigal",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.favorite_border,
                            size: 28,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("0:46"),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text("4:22"),
                ],
              ),
              SizedBox(height: 15),
              NewBox(
                child: LinearPercentIndicator(
                  lineHeight: 8,
                  percent: 0.3,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                  barRadius: Radius.circular(10),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 70,
                child: Row(children: [
                  Expanded(child: NewBox(child: Icon(Icons.skip_previous))),
                  Expanded(
                      flex: 2,
                      child: NewBox(
                        child: Icon(Icons.play_arrow),
                      )),
                  Expanded(child: NewBox(child: Icon(Icons.skip_next))),
                ]),
              )
            ],
          ),
        ));
  }
}
