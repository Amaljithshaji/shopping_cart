import 'package:flutter/material.dart';
import 'package:model4/database/Imagedata.dart';
import 'package:model4/provider/provider.dart';

class New_cart extends StatefulWidget {
  const New_cart({super.key});

  @override
  State<New_cart> createState() => _New_cartState();
}

class _New_cartState extends State<New_cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Cart',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: 800,
        color: Colors.amber,
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              height: 800,
              child: ListView.builder(
                  itemCount: Model1().Cartlist.length,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          color: Colors.red,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 170,
                                    color: Colors.blue,
                                    child: Image.asset(
                                      MyImages().Simages[Model1().Cartlist[index].Imageindex],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: 70,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 3)),
                                          child: Text(
                                            'Qty : 1',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Title',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 28),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Descprition',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "₹500",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 170, top: 10),
                                    child: Container(
                                      width: 120,
                                      height: 50,
                                      color: Colors.black,
                                      child: Row(children: [
                                        GestureDetector(
                                          onTap: () {
                                            //    Provider.of<Model1>(context, listen: false).sub();
                                          },
                                          child: Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 15),
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
                                            // Provider.of<Model1>(context, listen: false).addnew();
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
                                      ]),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )),
            )
          ]),
        ),
      ),
    );
  }
}
