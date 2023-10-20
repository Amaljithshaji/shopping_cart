import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class chipzz extends StatelessWidget {
  const chipzz({
    super.key,
    required this.Mylist,
  });

  final List<String> Mylist;
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 410,
          height: 50,
          child: ListView.builder(
              itemCount: Mylist.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Chip(label: Text(Mylist[index])),
                  )),
        )
      ],
    );
  }
}
