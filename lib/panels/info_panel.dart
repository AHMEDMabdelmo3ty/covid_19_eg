import 'package:flutter/material.dart';

class infoPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Card(
          borderOnForeground: true,
          semanticContainer: true,
          shadowColor: Colors.blue,
          elevation: 11,
          child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'faqs');
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.indigo[9000],
                  child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('اهم الاسألة التى قد تخطر على بالك', style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),),
                    Icon(Icons.forward)
                  ],
                  ),
              ),
            ),
          ),
          SizedBox(height: 10,),

          Card(
            borderOnForeground: true,
            semanticContainer: true,
            shadowColor: Colors.blue,
            elevation: 11,
            child: GestureDetector(
              onTap: () {
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                color: Colors.lightBlueAccent[800],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.wrap_text),
                        Text('  وزارة الصحة المصرية   ', style: TextStyle(fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),),
                      ],
                    ),
                    Icon(Icons.forward)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
