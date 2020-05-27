// import 'package:Jarvise/src/models/card.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_credit_card/credit_card_model.dart';
// import 'package:flutter_credit_card/flutter_credit_card.dart';
// import 'package:provider/provider.dart';

// class MySample extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return MySampleState();
//   }
// }

// class MySampleState extends State<MySample> {
//   String cardNumber = '';
//   String expiryDate = '';
//   String cardHolderName = '';
//   String cvvCode = '';
//   bool isCvvFocused = false;

//   @override
//   Widget build(BuildContext context) {
//     print("==============State Changed=============");
//     return MaterialApp(
//       title: 'Flutter Credit Card View Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.brown,
//       ),
//       home: Provider(
//         create: (context) => CreditCardModelApp,
//         child: Scaffold(
//           resizeToAvoidBottomInset: true,
//           body: SafeArea(
//             child: Consumer(
//               builder: (context, value, child) => Column(
//                 children: <Widget>[
//                   CreditCardWidget(
//                     cardNumber: cardNumber,
//                     expiryDate: expiryDate,
//                     cardHolderName: cardHolderName,
//                     cvvCode: cvvCode,
//                     showBackView: isCvvFocused,
//                   ),
//                   Expanded(
//                     child: SingleChildScrollView(
//                       child: CreditCardForm(
//                         onCreditCardModelChange: onCreditCardModelChange,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   void onCreditCardModelChange(CreditCardModelApp creditCardModel) {
//     setState(() {
//       cardNumber = creditCardModel.cardNumber;
//       expiryDate = creditCardModel.expiryDate;
//       cardHolderName = creditCardModel.cardHolderName;
//       cvvCode = creditCardModel.cvvCode;
//       isCvvFocused = creditCardModel.isCvvFocused;
//     });
//   }
// }
