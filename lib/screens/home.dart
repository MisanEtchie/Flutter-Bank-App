import 'package:flutter/material.dart';
import 'package:flutter_bank_app/screens/send.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = PageController(initialPage: 0);
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cards",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: SmoothPageIndicator(
                                  controller: controller,
                                  count: 4,
                                  onDotClicked: (index) {
                                    controller.animateToPage(index,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeIn);
                                  },
                                  effect: WormEffect(
                                      dotHeight: 8.0,
                                      dotWidth: 8.0,
                                      spacing: 4,
                                      activeDotColor: Colors.black,
                                      dotColor: Colors.grey[300]!),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 200,
                            child: PageView(
                              controller: controller,
                              children: [
                                card(
                                  img: 'assets/images/cc.jpg',
                                  bal: "43,545.23",
                                  cur: 'NGN',
                                ),
                                card(
                                  img: 'assets/images/cc2.jpg',
                                  bal: "320.94",
                                  cur: 'USD',
                                ),
                                card(
                                  img: 'assets/images/cc3.jpg',
                                  bal: "120,930.52",
                                  cur: 'NGN',
                                ),
                                card(
                                  img: 'assets/images/cc4.jpg',
                                  bal: "0.00",
                                  cur: 'NGN',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Choose a Receipent",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            height: 80,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                add(),
                                receipent(
                                  img: "assets/images/deji.jpg",
                                  name: 'Damain',
                                ),
                                receipent(
                                  img: "assets/images/aub.jpg",
                                  name: 'Aubrey',
                                ),
                                receipent(
                                  img: "assets/images/chi.jpg",
                                  name: 'Tristan',
                                ),
                                receipent(
                                  img: "assets/images/cas.jpg",
                                  name: 'Cassady',
                                ),
                                receipent(
                                  img: "assets/images/ayo.jpg",
                                  name: 'Ayodele',
                                ),
                                receipent(
                                  img: "assets/images/rac.jpg",
                                  name: 'Rachel',
                                ),
                                receipent(
                                  img: "assets/images/jas.jpg",
                                  name: 'Jason',
                                ),
                                receipent(
                                  img: "assets/images/and.jpg",
                                  name: 'Andre',
                                ),
                                receipent(
                                  img: "assets/images/ryan.jpg",
                                  name: 'Ryan',
                                ),
                                receipent(
                                  img: "assets/images/eji.jpg",
                                  name: 'Jordyn',
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "Amount",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                    height: 50,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: TextField(
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                            keyboardType: TextInputType.number,
                                            cursorColor: Colors.pink,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "0.00",
                                            )),
                                      ),
                                    )

                                    /*Center(
                                    child: TextField(
                                      style: TextStyle(
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold,
                                          //height: 2.0,
                                          color: Colors.black),
                                      keyboardType: TextInputType.number,
                                      //textAlign: TextAlign.center,
                                      cursorColor: Colors.pink,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "0.00",
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 20.0),
                                      ),
                                    ),
                                  ),*/
                                    ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Icon(
                                  FontAwesomeIcons.solidPaperPlane,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 52,
                          ),
                        ],
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

class card extends StatelessWidget {
  String img;
  String bal;
  String cur;

  card({Key? key, required this.img, required this.bal, required this.cur})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(24)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image(
                image: AssetImage(img),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("**** **** **** 4729",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          cur,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40),
                Text("Balance",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      //fontWeight: FontWeight.bold
                    )),
                Text(cur == "USD" ? "\$${bal}" : "₦${bal}",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class transcation extends StatelessWidget {
  String img;
  bool pos;
  String name;
  String amount;

  transcation({
    required this.img,
    required this.pos,
    required this.name,
    required this.amount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
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
                    "03, Jul 2020",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 12),
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    amount,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  pos
                      ? Icon(
                          FontAwesomeIcons.arrowDown,
                          size: 16,
                          color: Colors.green[700],
                        )
                      : Icon(
                          FontAwesomeIcons.arrowUp,
                          size: 16,
                          color: Colors.red[700],
                        )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
