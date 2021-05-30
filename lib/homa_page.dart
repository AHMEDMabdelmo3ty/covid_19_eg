import 'dart:convert';
import 'package:covid_19_eg/panels/eg_panel.dart';
import 'package:covid_19_eg/panels/info_panel.dart';
import 'package:covid_19_eg/panels/most_effected_countries.dart';
import 'package:covid_19_eg/panels/world_wide_panel.dart';
import 'package:http/http.dart' as http;
import 'data_source.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map worldData;

  fetchWorldWideData() async {
    http.Response response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/all'));
    setState(() {
      worldData = json.decode(response.body);
    });
    Map countryData;
  }

  List countryData;

  fetchcontryWideData() async {
    http.Response response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/countries?sort=cases'));
    setState(() {
      countryData = json.decode(response.body);
    });
  }

  Map egData;

  fetchegData() async {
    http.Response response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/countries/818'));
    setState(() {
      egData = json.decode(response.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchWorldWideData();
    fetchcontryWideData();
    fetchegData();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'كوفيد 19',
            style: TextStyle(
                color: Colors.blue[100], fontFamily: 'abdel', fontSize: 25),
          ),
        ),
        body: Card(
          borderOnForeground: true,
          semanticContainer: true,
          shadowColor: Colors.white,
          elevation: 3,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 100,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  color: Colors.indigoAccent[100],
                  child: Text(DataSource.quote,
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'مصابى العالم ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/countryp');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryBlack,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(13),
                            child: Text(
                              'المزيد',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                worldData == null
                    ? Center(child: CircularProgressIndicator())
                    : WorldWidePanel(
                        worldWide: worldData,
                      ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'مصر',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: primaryBlack,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Text(
                            'اعداد المصابين',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                egData == null
                    ? Center(child: CircularProgressIndicator())
                    : EgPanel(
                        egWide: egData,
                      ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'الدول',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: primaryBlack,
                          borderRadius: BorderRadius.circular(90),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13),
                          child: Text(
                            ' الاكثر اصابة ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                worldData == null
                    ? Center(child: CircularProgressIndicator())
                    : MostAffectedPanel(
                        countrydata: countryData,
                      ),
                worldData == null
                    ? Center(child: CircularProgressIndicator())
                    : infoPanel(),
                SizedBox(
                  height: 15,
                ),
                ListTile(
                  title: Text(
                    'تصميم/ احمد عبدالمعطى',
                    style: TextStyle(fontSize: 20),
                  ),
                  leading: Image.network(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/81114903_2141577712612306_2696149794325266432_o.jpg?_nc_cat=107&ccb=2&_nc_sid=09cbfe&_nc_ohc=pDTinQT5kEIAX9Fe9V6&_nc_ht=scontent-hbe1-1.xx&oh=c82d23e9747186298bc28fb298c4ba94&oe=5FE24BDD',
                    height: 45,
                    width: 60,
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        '01013030894',
                        style: TextStyle(fontSize: 27),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.call,
                        color: Colors.green[700],
                        size: 32,
                      ),
                    ],
                  ),
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('شبين القناطر القليوبية',style: TextStyle(fontSize: 24),),SizedBox(
               width: 8,
                ),
                Icon(Icons.location_on,size: 45, color: Colors.indigoAccent,)
              ],),
                SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
