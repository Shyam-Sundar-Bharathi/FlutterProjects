import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int CGPA=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("STUDENT ID CARD"),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/download.png'),
                radius: 50.0,
              ),
            ),
            Divider(height: 100.0,color: Colors.grey,),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Shyam Sundar Bharathi',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'COLLEGE',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Manipal Institute of Technology',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'COURSE',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'BTech - CSE',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'SEMESTER - SECTION',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '2 - W',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),

            Text(
              'CURRENT CGPA',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 5),
            Text(
              '$CGPA',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 27.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
               SizedBox(width: 10.0,),
                Text(
                  'shyamsundarbharathi@gmail.com',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 17.0,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0,),
                Text(
                  '+91 9876543210',
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 17.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            CGPA++;;
          });
        },
        backgroundColor: Colors.grey[400],
        child: Icon(Icons.add,
        color: Colors.black,)
      ),
    );
  }
}





