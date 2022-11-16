// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:practice_6/model/adviceSlip.dart';
import 'package:practice_6/services/resource.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var isLoaded = false;
  AdviceSlip? adviceSlip;
  @override
  void initState() {
    getAdvice();

    super.initState();
  }

  getAdvice() async {
    adviceSlip = await ResourceService().getAdvice();
    if (adviceSlip != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Advice Generator"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10), 
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          height: 200,
          width: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Text("$adviceSlip.slip.id"),
                // Text(adviceSlip?.slip.advice),
            ]
            ),
        )
      ),
    );
  }
}
