import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bank_app/screens/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Send extends StatefulWidget {
  const Send({Key? key}) : super(key: key);

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
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
                        "Transactions",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      transcation(
                        amount: '3250',
                        img: "assets/images/aub.jpg",
                        name: 'Aubrey Jamieson',
                        pos: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      transcation(
                        amount: '12000',
                        img: "assets/images/chi.jpg",
                        name: 'Tristan Usiagwu',
                        pos: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      transcation(
                        amount: '250',
                        img: "assets/images/jas.jpg",
                        name: 'Jason Garcia',
                        pos: false,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      transcation(
                        amount: '3400',
                        img: "assets/images/and.jpg",
                        name: 'Andre K.',
                        pos: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      transcation(
                        amount: '1000',
                        img: "assets/images/deji.jpg",
                        name: 'Damain Richards',
                        pos: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      transcation(
                        amount: '5400',
                        img: "assets/images/eji.jpg",
                        name: 'Jordyn Coleman',
                        pos: false,
                      ),
                      SizedBox(
                        height: 20,
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

class add extends StatelessWidget {
  const add({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(12)),
            child: Icon(
              FontAwesomeIcons.plus,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class receipent extends StatelessWidget {
  String img;
  String name;

  receipent({
    required this.img,
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          )
        ],
      ),
    );
  }
}
