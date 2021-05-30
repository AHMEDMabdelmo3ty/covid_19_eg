import 'package:flutter/material.dart';

class EgPanel extends StatelessWidget {
  final Map egWide;

  const EgPanel({Key key, this.egWide}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2),
        children: [
          SteatePanel(
            titel: 'عدد الاصابات',
            textcolor: Colors.red,
            panelcolor: Colors.red[100],
            conet: egWide['cases'].toString(),
          ),
          SteatePanel(
            titel: 'حالات نشطة',
            textcolor: Colors.blue[900],
            panelcolor: Colors.blue[200],
            conet: egWide['active'].toString(),
          ),
          SteatePanel(
            titel: 'تم الشفاء',
            textcolor: Colors.green[900],
            panelcolor: Colors.green[100],
            conet: egWide['recovered'].toString(),
          ),
          SteatePanel(
            titel: 'حالات الوفاه',
            textcolor: Colors.grey[900],
            panelcolor: Colors.grey[100],
            conet: egWide['deaths'].toString(),
          ),
        ],
      ),
    );
  }
}

class SteatePanel extends StatelessWidget {
  final Color panelcolor;
  final Color textcolor;
  final String titel;
  final String conet;

  const SteatePanel({Key key, this.panelcolor, this.textcolor, this.titel, this.conet}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(15),
      height: 150,

      width: width /2,
      child:Card (borderOnForeground: true,
        semanticContainer: true,
        shadowColor: Colors.white,
        elevation: 20,
        color: panelcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titel,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: textcolor),
            ),
            Text(
              conet,
              style: TextStyle(fontSize: 18,letterSpacing: 1.5, fontWeight: FontWeight.bold,color: textcolor),
            )
          ],
        ),
      ),
    );
  }
}
