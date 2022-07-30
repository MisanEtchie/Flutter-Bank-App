import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, //Colors.blueGrey[900],
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      FontAwesomeIcons.bars,
                      color: Colors.white,
                    ),
                    Container(
                      height: 40,
                      width: 135,
                      //color: Colors.pink,
                      child: Row(
                        children: [
                          Expanded(child: SizedBox()),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Asa",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Adegbite",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(12)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image(
                                image: AssetImage("assets/images/kez.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                    /**/
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                //height: MediaQuery.of(context).size.height * 0.7,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[50],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Notifications",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Message(
                        amount: '\$200',
                        img: "assets/images/cas.jpg",
                        name: 'Cassady',
                      ),
                      Message(
                        amount: '\$35',
                        img: "assets/images/ryan.jpg",
                        name: 'Ryan',
                      ),
                      Message(
                        amount: '\$1200',
                        img: "assets/images/ayo.jpg",
                        name: 'Ayodele',
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Message extends StatelessWidget {
  String img;
  String name;
  String amount;

  Message({
    required this.amount,
    required this.img,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(14)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Requests ${amount}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        //color: Colors.grey,
                        fontSize: 12),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              Container(
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.pink, borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Send",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
