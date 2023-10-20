import 'package:flutter/material.dart';
import 'package:model4/database/Imagedata.dart';
import 'package:model4/provider/provider.dart';
import 'package:provider/provider.dart';

import '../../cart/cart.dart';

class Grid1 extends StatefulWidget {
  const Grid1({
    super.key,
  });

  @override
  State<Grid1> createState() => _Grid1State();
}

class _Grid1State extends State<Grid1> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(itemCount: MyImages().Simages.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          child: Container(
            width: 200,
            height: 400,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                      GestureDetector(onTap: (){
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ChangeNotifierProvider(create: (context)=>Model1(),
                          child: cart(name:index,),);
                        }));
                      },
                        child: Container(
                        width: 200,
                        height: 150,
                        color: Colors.grey,
                        child: Image.asset(MyImages().Simages[index])
                        ),
                      ),
                      Positioned(top: 10,
                      right: 10,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
                          child: Icon(Icons.favorite_border)),
                      )
                    ],
                ),
                  Text('Regular Fit Slogan',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                  Text('PKR 1,690')
              ],
            ),
          ),
        ));
  }
}