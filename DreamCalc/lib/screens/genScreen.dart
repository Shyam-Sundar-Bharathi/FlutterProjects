import 'package:dream_calc/services/drawer.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  int precision = 4;
  Map routes = {
    0 : ['LCM HCF','/lcmhcf'],
    1 : ['CENTRAL\nTENDENCY', '/centTend'],
    2 : ['AREA', '/area'],
    3 : ['VOLUME', '/volume'],
    4 : ['UNIT\nCONVERSION', '/unitConversion'],
    5 : ['PERCENTAGE', '/percentage'],
    6 : ['QUADRATIC\nEQUATION', '/quadratic'],
    7 : ['CUBIC\nEQUATION', '/cubic'],
    8 : ['CURRENCY\nCONVERSION', '/currency'],
    9 : ['VECTOR', '/vector'],
    10 : ['COMPLEX\nNUMBERS', '/complex'],
    11 : ['SETTINGS', '/settings']
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "DREAM CALCULATOR",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.yellowAccent
          ),
        ),
        centerTitle: true,
      ),
      //drawer: myDrawer(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: GridView.builder(
                padding: EdgeInsets.all(0),
                itemCount: routes.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 0,
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (BuildContext context, int index){
                  if(index == 11){
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 5,
                      child: Card(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.grey[100]),
                          ),
                          child: FittedBox(
                            child: Icon(
                                Icons.settings,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          onPressed: () async {
                            result = await Navigator.pushNamed(context, '/settings');
                            setState(() {
                              precision = result['precision'];
                            });
                          },
                        ),
                      ),
                    );;
                  }

                  else
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    height: 5,
                    child: Card(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.grey[100]),
                          ),
                          child: FittedBox(
                            child: Text(
                                routes[index][0],
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black
                              ),
                            ),
                          ),
                          onPressed: (){Navigator.pushNamed(context, routes[index][1], arguments: {
                            'precision' : precision,
                          });},
                        ),
                    ),
                  );
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}
