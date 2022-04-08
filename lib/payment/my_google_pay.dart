import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pay/pay.dart';

class MygooglePay extends StatefulWidget {
  const MygooglePay({Key? key}) : super(key: key);

  @override
  _MygooglePayState createState() => _MygooglePayState();
}

class _MygooglePayState extends State<MygooglePay> {
  var _paymentItems = [
    PaymentItem(
      label: 'Total',
      amount: '99.99',
      status: PaymentItemStatus.final_price,
    )
  ];

// In your Widget build() method

// In your Stateless Widget class or State
  void onGooglePayResult(paymentResult) {
    // Send the resulting Google Pay token to your server or PSP
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController amountController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icon/back.svg',
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[SizedBox(width: 10)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: "Amount",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.grey,
                  ))),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: GooglePayButton(
              width: 200,
              paymentConfigurationAsset: 'sample_payment_configuration.json',
              paymentItems: _paymentItems,
              style: GooglePayButtonStyle.black,
              type: GooglePayButtonType.pay,
              onPaymentResult: onGooglePayResult,
            ),
          ),
        ],
      ),
    );
  }
}
