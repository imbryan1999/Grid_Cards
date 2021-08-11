import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'dashmodel.dart';

class DashCard extends StatelessWidget {
  DashCard({
    Key? key,
    this.height = 160,
    this.width = 300,
  }) : super(key: key);

  final double height;
  final double width;

  // final Widget customWidget;

  List<DashModel> contents = [
    DashModel(
        contentPic: 'assets/resume_sub.png',
        contentTitle: 'Resume \nSubmission'),
    DashModel(
        contentPic: 'assets/sch_call.png', contentTitle: 'Schedule \nCall'),
    DashModel(
        contentPic: 'assets/percentage_cal.png',
        contentTitle: 'Loan \nCalculator'),
    DashModel(
        contentPic: 'assets/app_sample.png',
        contentTitle: 'Application \nSamples'),
  ];

  final cardCategory = [
    'firstCategory',
    'secondCategory',
    'thirdCategory',
    'fourthCategory',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 235,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.7),
          ),
          itemBuilder: (context, position) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xff32383E),
                    Color(0xff17191C),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000),
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 0.0, //extend the shadow
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/${cardCategory[position]}');
                  },
                  child: Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffC8D5E1).withOpacity(0.09),
                          Color(0xff000000).withOpacity(0.2),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(1.5), // white outline width
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xff32383E),
                              Color(0xff17191C),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(contents[position].contentPic),
                            SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              contents[position].contentTitle,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontFamily: 'Circular Std',
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: contents.length,
        ),
      ),
    );
  }
}
