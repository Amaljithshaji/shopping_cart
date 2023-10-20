import 'package:flutter/material.dart';
import 'package:model4/database/Imagedata.dart';
import 'package:model4/model/Modelcart.dart';
import 'package:model4/provider/provider.dart';
import 'package:model4/view/cartnew/newcart.dart';
import 'package:model4/view/home/home.dart';
import 'package:provider/provider.dart';

class cart extends StatefulWidget {
  const cart({super.key, required this.name});
  final int name;
  
  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  
  @override
  
  Widget build(BuildContext context) {
   // final Mydata = context.read<Model1>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
              icon: Icon(
                Icons.notification_add_outlined,
                color: Colors.black,
              ))
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 700,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 350,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        MyImages().Simages[widget.name],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Regular fit slogan',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 5),
                  child: Row(
                    children: [
                      Text(
                        '⭐ 4.5/5',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('(45 reviews)'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'The name says it all, the rigth size slightly snugs the body leaving enough room for comfort in the sleeves and waist',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'Choose size',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey, width: 2)),
                        child: Center(
                            child: Text(
                          'S',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey, width: 2)),
                        child: Center(
                            child: Text(
                          'M',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.grey, width: 2)),
                        child: Center(
                            child: Text(
                          'L',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        Container(
          width: double.infinity,
          height: 83,
          color: Colors.white,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Price'),
                    Consumer<Model1>(
                        builder: (context, value, child) => Text(
                              Provider.of<Model1>(context).price.toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ))
                  ],
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                width: 260,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Provider.of<Model1>(context, listen: false).sub();
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Center(
                              child: Icon(
                            Icons.minimize_outlined,
                            color: Colors.white,
                          )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Provider.of<Model1>(context, listen: false).addnew();
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.black,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.shopify,
                      color: Colors.white,
                    ),
                    Ink(
                      child: InkWell(
                        onTap:(){
                          Mycart item2 = Mycart(Imageindex: 2, name: 'sdkk', price: 1, Quantity:1);
                        Mycart item3 = Mycart(Imageindex: 2, name: 'sdkk', price: 1, Quantity:1);
                          Model1().addvalue(Mycart(Imageindex: 1, name: 'sdkk', price: 1, Quantity:1));
                          Model1().addvalue(item2);
                          Model1().addvalue(item3);
                          print(Model1().Cartlist.length);
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ChangeNotifierProvider(create: (context)=>Model1(),
                          child: New_cart(),);
                        }));
                        },
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0,
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Consumer<Model1>(
                                builder: (context, value, child) => Text(
                                      Provider.of<Model1>(context)
                                          .Quanty
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ))))
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
