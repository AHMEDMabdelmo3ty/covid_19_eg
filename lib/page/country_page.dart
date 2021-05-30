import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Countrypage extends StatefulWidget {
  @override
  _CountrypageState createState() => _CountrypageState();
}

class _CountrypageState extends State<Countrypage> {
  List countryData;

  fetchcontryWideData() async {
    http.Response response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/countries?sort=cases'));
    setState(() {
      countryData = json.decode(response.body);
    });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchcontryWideData();
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child:Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text('الدول المصابة',style: TextStyle(fontSize: 25,fontFamily: 'abdel'),),
      ),
      body: countryData == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: countryData == null ? 0 : countryData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(

                    child: Container(

                      decoration: BoxDecoration(color: Colors.white, boxShadow: [
                        BoxShadow(
                            color: Colors.blue[200],
                            offset: Offset(13,1),
                            blurRadius:25)
                      ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: 60,
                                    child: Text(countryData[index]['country'],style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold ,color: Colors.blue),)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Image.network(countryData[index]['countryInfo']['flag'],
                                  height: 40,width: 50,),
                                )

                              ],),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('الحالات الجديدة : ',style: TextStyle(color: Colors.red,fontSize: 18),),

                                    countryData[index]['todayCases'] == 0 ? Text('لم يتم التحديث بعد ',style: TextStyle(color: Colors.red,fontSize: 18),):Text(countryData[index]['todayCases'].toString(),style: TextStyle(color: Colors.red,fontSize: 18),),

                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('تعافى اليوم  : ',style: TextStyle(color: Colors.red,fontSize: 18),),

                                    countryData[index]['todayRecovered'] == 0 ? Text('لم يتم التحديث بعد ',style: TextStyle(color: Colors.red,fontSize: 18),):Text(countryData[index]['todayRecovered'].toString(),style: TextStyle(color: Colors.red,fontSize: 18),),

                                  ],
                                ),
                                Text('اجمالى عدد المصابين : '+ countryData[index]['cases'].toString(),style: TextStyle(color: Colors.red,fontSize: 18),),
                                Text('عدد الحالة النشطة : '+ countryData[index]['active'].toString(),style: TextStyle(color: Colors.blue,fontSize: 18),),
                                Text('المتعافيون : '+ countryData[index]['recovered'].toString(),style: TextStyle(color: Colors.green,fontSize: 18),),
                                Text('اجمالى عدد الوفيات : '+ countryData[index]['deaths'].toString(),style: TextStyle(color: Colors.grey[800],fontSize: 18),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
    ));
  }
}
