import 'package:flutter/material.dart';
import 'package:model4/model/Modelcart.dart';

class Model1 with ChangeNotifier{
  List<Mycart> Cartlist = [
Mycart(Imageindex: 1, name: 'amal', price: 1, Quantity:1),
Mycart(Imageindex: 1, name: 'amal', price: 1, Quantity:1)
  ];
  int Quanty = 0;
  int price = 0; 

  void addnew(){
    Quanty++;
    newprice();
    notifyListeners();
  }
  void sub(){
    Quanty--;
    newprice1();
    notifyListeners();
  }
  
  void newprice(){
    if(Quanty == 0){
       price = 0;
    }else{
      price = price + 1000;
    }
  }
  void newprice1(){
    if(Quanty == 0){
       price = 0;
    }else{
      price = price - 1000;
    }
  }
   addvalue(Mycart newMycart){
    Cartlist.add(newMycart);
    notifyListeners();
    print(Cartlist.length);
  }
}