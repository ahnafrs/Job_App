import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Home"),
              Text(
                "Ahnaf Rahman",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                transform: Matrix4.rotationZ(50),
                child: Stack(
                  children: [
                    Icon(
                      Icons.notification_add_outlined,
                      size: 40,
                    ),
                    Positioned(
                        child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ClipOval(
                child: Image.network(
                  'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg',
                  height: 40,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
