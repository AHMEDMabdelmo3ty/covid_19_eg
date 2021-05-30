import 'package:covid_19_eg/data_source.dart';
import 'package:flutter/material.dart';

class faqspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child:Scaffold(
        appBar: AppBar(
          title: Text('الاسألة الاكثر شيوعاً'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Container(height: 0.3,
                    color: Colors.white,),
                  ),
                  ExpansionTile(
                    title: Text(
                      DataSource.questionAnswers[index]['question'],
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          DataSource.questionAnswers[index]['answer'],
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[100]),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
          itemCount: DataSource.questionAnswers.length,
        )));
  }
}
