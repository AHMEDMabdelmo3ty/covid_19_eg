import 'package:flutter/material.dart';

class MostAffectedPanel extends StatelessWidget {
  final List countrydata;

  const MostAffectedPanel({Key key, this.countrydata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blueGrey[900],
            child: Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    countrydata[index]['countryInfo']['flag'],
                    height: 50,
                    width: 50,
                  ),
                  Container(width: 52,
                      child: Text(countrydata[index]['country'],style: TextStyle(fontSize: 17),)),
                  Text(
                    countrydata[index]['cases'].toString(),
                    style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                  ),
                  Text(
                    countrydata[index]['deaths'].toString(),
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
