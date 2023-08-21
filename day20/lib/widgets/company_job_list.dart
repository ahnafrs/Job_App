import 'package:day20/models/company_info_list.dart';
import 'package:day20/widgets/company_details.dart';
import 'package:flutter/material.dart';

class CompanyJobList extends StatefulWidget {
  @override
  State<CompanyJobList> createState() => _CompanyJobListState();
}

class _CompanyJobListState extends State<CompanyJobList> {
  final companyInfo = CompanyInfo.generatedCompanyList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => _buildJobPlaces(index),
          separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
          itemCount: companyInfo.length),
    );
  }

  Widget _buildJobPlaces(int index) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => CompanyDetails(companyInfo[index]));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        width: 250,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Image.network(
                        companyInfo[index].logoUrl,
                        height: 30,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      companyInfo[index].company,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Icon(
                  Icons.save_alt_sharp,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              companyInfo[index].title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: const Color.fromARGB(255, 138, 124, 0),
                ),
                Text(companyInfo[index].location),
              ],
            )
          ],
        ),
      ),
    );
  }
}
