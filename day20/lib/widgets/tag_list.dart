import 'package:flutter/material.dart';

class TagListDemo extends StatefulWidget {
  @override
  State<TagListDemo> createState() => _TagListDemoState();
}

class _TagListDemoState extends State<TagListDemo> {
  final _tagList = <String>["All", "⚡Popular", "⭐Featured"];

  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  color: selected == index
                      ? Color.fromARGB(255, 255, 230, 0)
                      : Colors.white,
                  border: Border.all(
                    color: selected == index
                        ? Color.fromARGB(255, 255, 230, 0).withOpacity(0.2)
                        : Color.fromARGB(255, 255, 230, 0),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  _tagList[index],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
          separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
          itemCount: _tagList.length),
    );
  }
}
