import 'package:day20/widgets/company_job_list.dart';
import 'package:day20/widgets/home_appbar.dart';
import 'package:day20/widgets/tab_search.dart';
import 'package:day20/widgets/tag_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.grey.withOpacity(0.2),
                  ))
            ],
          ),
          Column(
            children: [
              HomeAppBar(),
              SearchBarTab(),
              TagListDemo(),
              CompanyJobList(),
            ],
          )
        ],
      ),
    );
  }
}
