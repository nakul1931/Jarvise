import 'package:Jarvise/src/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  String cardNumber = "";
  String cardHolderName = "";
  String expiryDate = "";
  String cvv = "";
  bool showBack = false;

  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = new FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focusNode.hasFocus ? showBack = true : showBack = false;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          CreditCard(
            cardNumber: cardNumber,
            cardExpiry: expiryDate,
            cardHolderName: cardHolderName,
            cvv: cvv,
            bankName: "Bank Name",
            showBackSide: showBack,
            frontBackground: CardBackgrounds.black,
            backBackground: CardBackgrounds.white,
            showShadow: true,
          ),
          SizedBox(
            height: 60,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: AppColors.logoPrimaryColor,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: "Card Number"),
                        maxLength: 19,
                        onChanged: (value) {
                          setState(() {
                            cardNumber = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: "Card Expiry"),
                        maxLength: 5,
                        onChanged: (value) {
                          setState(() {
                            expiryDate = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        decoration:
                            InputDecoration(hintText: "Card Holder Name"),
                        onChanged: (value) {
                          setState(() {
                            cardHolderName = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: "CVV"),
                        maxLength: 3,
                        onChanged: (value) {
                          setState(() {
                            cvv = value;
                          });
                        },
                        focusNode: _focusNode,
                      ),
                    ),
                  ],
                )),
          ))
        ],
      ),
      // ),
    );
  }
}
