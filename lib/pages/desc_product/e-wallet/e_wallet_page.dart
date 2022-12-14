import 'package:agent_mobile_app/helper/margin_layout.dart';
import 'package:agent_mobile_app/helper/themes_colors.dart';
import 'package:agent_mobile_app/pages/desc_product/e-wallet/e_wallet_list.dart';
import 'package:agent_mobile_app/pages/desc_product/widget_reusable/widget_reusable.dart';
import 'package:agent_mobile_app/widget_reusable/widget_appbar_default.dart';
import 'package:flutter/material.dart';

class EWalletPage extends StatelessWidget {
  EWalletPage({super.key, required this.icon, required this.eWallet});

  String icon;
  String eWallet;

  TextEditingController inputNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.appBarDefault(context,
          backgroundColor: ColorApp.primaryA3,
          colorComponen: ColorApp.secondaryFF,
          title: eWallet,
          action: [Image.asset('assets/icons/question.png')]),
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              alignment: Alignment.center,
              color: ColorApp.primaryA3,
              child: Image.asset(
                icon,
                height: 100,
              )),
          Padding(
            padding: Marginlayout.marginhorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableWidget.overViewReward(
                    context: context, controller: inputNumber),
                EWalletList()
              ],
            ),
          ),
        ],
      ),
      // ReusableWidget.overViewReward(
      //     controller: inputNumber, context: context));
    );
  }
}
