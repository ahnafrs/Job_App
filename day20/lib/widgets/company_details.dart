import 'package:day20/models/company_info_list.dart';
import 'package:flutter/material.dart';

class CompanyDetails extends StatefulWidget {
  CompanyInfo companyInfo;
  CompanyDetails(this.companyInfo);

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  final detailsInfo = CompanyInfo.generatedCompanyList();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      height: 500,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 5,
            width: 50,
            color: Colors.grey,
          ),
          Column(
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
                          widget.companyInfo.logoUrl,
                          height: 50,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.companyInfo.company,
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
                widget.companyInfo.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: const Color.fromARGB(255, 138, 124, 0),
                  ),
                  Text(widget.companyInfo.location),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ...widget.companyInfo.req
                  .map((e) => Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: Text(
                                    e,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}
