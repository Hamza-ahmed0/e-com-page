import 'package:flutter/material.dart';
import 'package:second/complete.dart';

void main() {
  runApp(Product());
}

class Product extends StatefulWidget {
  const Product({ Key key }) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text("PRODUCT", style: TextStyle(fontWeight: FontWeight.w500)),
      )),
      body:
      Column(
        children: [
          Container(
            padding: EdgeInsets.only(left:20),
            width: 500,
            height: 70,
            color: Colors.blueGrey,
            child: Row(
              children:[
                Container(
                  
                  width: 250,
                  height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                  color: Colors.white,),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search products',
                    ),
                  ),
                ),
                Container(
                 padding: EdgeInsets.only(left:80),

                 child: Icon(Icons.shopping_cart,
                 color:Colors.white,
                 size: 30,
                 ),


                )
              ]
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/electronics.jpg'),
            radius: 25,
            ),
            title: Text("ELECTRONICS ITEM"),
            subtitle: Text("Juicer, Refrigerator"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("ADD CART"))
              ],
            ),
            ),
          Container(
            width: 500,
            height: 1,
            color: Colors.blueGrey,
          ),
           ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/laptops.jpg'),
            radius: 25,
            ),
            title: Text("Laptop"),
            subtitle: Text("Hp, Dell, Mac"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("ADD CART"))
              ],
            ),
            ),
          Container(
            width: 500,
            height: 1,
            color: Colors.blueGrey,
          ),
           ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/laptops.jpg'),
            radius: 25,
            ),
            title: Text("Mobile Phones"),
            subtitle: Text("Samsung, Iphone, Infinix"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("ADD CART"))
              ],
            ),
            ),
          Container(
            width: 500,
            height: 1,
            color: Colors.blueGrey,
          ),
           ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/pens.jpg'),
            radius: 25,
            ),
            title: Text("Pens"),
            subtitle: Text("Dollar, Piano"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("ADD CART"))
              ],
            ),
            ),
          Container(
            width: 500,
            height: 1,
            color: Colors.blueGrey,
          ),
           ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('assets/books.jpg'),
            radius: 25,
            ),
            title: Text("Books"),
            subtitle: Text("English Stories"),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("ADD CART"))
              ],
            ),
            ),
          Container(
            width: 500,
            height: 1,
            color: Colors.blueGrey,
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Complete()));}, child: Text("Go TO CHECK"))
        ],
      ),
    );
  }
}