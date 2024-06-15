import 'package:flutter/material.dart';
import 'package:flutter_get_x/presentation/pages/widgets/naviagtion.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
            )),
        titleSpacing: 50,
        title: Row(
          children: [
            Text(
              'Cart(1)',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 78),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.green)),
                onPressed: () {},
                child: Text(
                  'Add More',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Image.asset('assets/Rectangle 78.png'),
          Padding(
              padding: EdgeInsets.all(20),
              child: Column(children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          Icon(Icons.local_offer_rounded),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'View Coupons & Offers',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Icon(Icons.arrow_forward_ios_outlined, size: 20)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                    child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/Carrots.png'),
                      const Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 15, left: 20),
                              child: Text(
                                'Carrot',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 4, 67, 99),
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              )),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(0),
                          ),
                        ),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.red,
                          ),
                          child: IconButton(
                            style: ButtonStyle(),
                            onPressed: () {
                              decrementQuantity();
                            },
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 30,
                          height: 30,
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text(
                            '$quantity',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                        )),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.red,
                          ),
                          child: IconButton(
                            style: ButtonStyle(),
                            onPressed: () {
                              incrementQuantity();
                            },
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.currency_rupee_sharp,
                        size: 15,
                      ),
                      Text('90')
                    ],
                  ),
                )),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: Container(
                    width: 340,
                    height: 56,
                    color: const Color.fromARGB(255, 110, 228, 114),
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.notes),
                        Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Partner Tip',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'This Amouont Goes To Your Delivery Partner',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )),
                            SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, size: 20)
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: 340,
                    height: 56,
                    color: const Color.fromARGB(255, 110, 228, 114),
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.message),
                        Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Insturctions',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Delivery Partner Will Be Notified',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 76,
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, size: 20)
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: 340,
                    height: 56,
                    color: const Color.fromARGB(255, 110, 228, 114),
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.wallet),
                        Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'To Pay',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Incl.All Of Taxes And Charges',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.currency_rupee,
                              size: 15,
                            ),
                            Text('90')
                          ],
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, size: 20)
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: 340,
                    height: 60,
                    color: const Color.fromARGB(255, 110, 228, 114),
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.delivery_dining),
                        Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Delivery Partner\'s Safety',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Leran More About How We ensure\nTheir Safety',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        SizedBox(
                          width: 58,
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, size: 20)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.red)),
                    child: Text(
                      'Place Order',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.white),
                    )),
                SizedBox(
                  height: 100,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 200,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    child: Container(
                      color: Color.fromARGB(255, 135, 238, 138),
                      padding: EdgeInsets.all(16.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Container(
                                    width: 240,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.location_on),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'ENTER YOUR LOCATION',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ))),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                                height: 30,
                                child: Center(
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
                                                  Colors.red)),
                                      child: Text(
                                        'Add Address',
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            color: Colors.white),
                                      )),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ])),
        ],
      )),
      bottomNavigationBar: NavigationBarBottom(),
    );
  }
}
