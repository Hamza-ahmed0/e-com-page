import 'package:flutter/material.dart';
import 'home.dart';
void main() {
  runApp(Complete());
}

class Complete extends StatefulWidget {
  const Complete({ Key key }) : super(key: key);

  @override
  _CompleteState createState() => _CompleteState();
}

class _CompleteState extends State<Complete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 500,
              child:
              Icon(Icons.check_circle,
              color: Colors.lightGreenAccent,
              size: 400,)
            ),
            SizedBox(height: 20,),
            Text("CHECK OUT SUCCESSFULLY", style: TextStyle(color: Colors.lightGreenAccent, fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox(height:20,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));}, child: Text("GO TO HOME"))
          
          ],
        ),
      ),
    );
  }
}