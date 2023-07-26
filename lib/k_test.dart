import 'package:enovatemarket/main.dart';
import 'package:enovatemarket/search_job.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class JobDescription extends StatefulWidget {
  const JobDescription({super.key});

  @override
  State<JobDescription> createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/image1.jfif'},
    {"id": 2, "image_path": 'assets/images/image2.jfif'},
    {"id": 3, "image_path": 'assets/images/image3.jfif'}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 4, 63, 110),
          titleSpacing: 0,
          leading: IconButton(
              onPressed: () {
                // Navigator.push(
                //     context, CupertinoPageRoute(builder: (_) => Job()));
              },
              icon: Icon(Icons.arrow_back_ios)),
          //Icon(Icons.arrow_back_ios),
          title: Row(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lock Repairing ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.history,
                        size: 15,
                      ),
                      Text(
                        "36 mins remaining ",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (() {
                      //  _settingModalBottomSheet(context);
                    }),
                    child: Container(
                      //padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 8),
                      //margin: EdgeInsets.only(top:),
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.blue),
                      child: Center(
                        child: Text(
                          "In Progress",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              fontFamily: "Poppins"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 200,
              color: Color.fromARGB(255, 111, 181, 239),
              child: Center(
                child: Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        print(currentIndex);
                      },
                      child: CarouselSlider(
                        items: imageList
                            .map(
                              (item) => Image.asset(
                                item['image_path'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            )
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 2,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 17 : 7,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == entry.key
                                      ? Colors.red
                                      : Colors.teal),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Text(
                "Job Description: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromARGB(255, 4, 63, 110),
                    fontFamily: "Poppins"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                  "jaf jbajh bajf hafdn bfjs bfsj sjfsf jnsf suhf ndjfs bfjs bfsj sjfsf jnsf sjfs sjndfs jdfs hsjf sfj dsfbjs sfj fsj. dn uhf ndjfs bfjs bfsj sjfsf jnsf sjfs sjndfs "),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text(
                        "Location:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromARGB(255, 4, 63, 110),
                            fontFamily: "Poppins"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text("Samnabad Lahore"),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.room,
                    color: Colors.red,
                    size: 35,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              child: Text(
                "Customer Docs: ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromARGB(255, 4, 63, 110),
                    fontFamily: "Poppins"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Image(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx6irpqaIFIeeQK0FxABNBv4DLy7INeZ1DvyAZY2-d1Q&s"),
                    height: 60,
                    width: 60,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS79lwZq5zqCHS4FDU-3ySKDRB-IxUJesN6mIY1qgBVg&s"),
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Price:",
                  style: TextStyle(
                      color: Color.fromARGB(255, 4, 63, 110),
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                ),
                Text("12000"),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "QTY:",
                  style: TextStyle(
                      color: Color.fromARGB(255, 4, 63, 110),
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                ),
                Text(
                  "12000",
                  style: TextStyle(fontFamily: "Poppins"),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "VAT:",
                  style: TextStyle(
                      color: Color.fromARGB(255, 4, 63, 110),
                      fontWeight: FontWeight.bold,
                      fontFamily: "Poppins"),
                ),
                Text("12000"),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Total:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 4, 63, 110),
                      fontFamily: "Poppins"),
                ),
                Text(
                  "12000",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: "Poppins"),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
              child: Center(
                child: Wrap(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  //mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Container(
                      height: 30,
                      width: 180,
                      color: Colors.amber,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.call, color: Colors.white),
                            Text(
                              "Call now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins"),
                            ),
                          ]),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        _settingModalBottomSheet(context);
                      },
                      child: Container(
                        height: 30,
                        width: 180,
                        color: Color.fromARGB(255, 4, 63, 110),
                        child: Center(
                          child: Text(
                            "Complete",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Poppins"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
            color: Color.fromARGB(255, 4, 55, 97),
          ),
          child: Stack(children: [
            Positioned(
              top: 8,
              left: 40,
              child: Text(
                "Payment",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: "Poppins"),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              right: 20,
              //bottom: 0,
              child: Container(
                height: 300,
                padding: EdgeInsets.only(left: 25, right: 25, top: 25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Type:",
                      style: TextStyle(
                          color: Color.fromARGB(255, 4, 55, 97),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Poppins"),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    buildTextField("Cash"),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Payment Received:",
                      style: TextStyle(
                          color: Color.fromARGB(255, 4, 55, 97),
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    buildTextField("12000"),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 143, 136, 136),
                          ),
                          child: Center(
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 30,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 4, 55, 97),
                          ),
                          child: Center(
                            child: Text(
                              "Received",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ]),
        );
      });
}

Widget buildTextField(
  String hintText,
) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color.fromARGB(255, 200, 198, 198),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(15),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 143, 136, 136),
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins"),
        ),
      ),
    ),
  );
}