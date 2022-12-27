import 'package:agent_mobile_app/helper/shadow.dart';
import 'package:agent_mobile_app/helper/themes_colors.dart';
import 'package:agent_mobile_app/helper/themse_fonts.dart';
import 'package:flutter/material.dart';

class BodyChoiceBank extends StatelessWidget {
  final ValueNotifier<String> bank;
  BodyChoiceBank({Key? key, required this.bank}) : super(key: key);
  final List<Map<String, dynamic>> _databank = [
    {
      'name': 'BNI',
      'image': 'assets/logo/bni.png',
    },
    {
      'name': 'BCA',
      'image': 'assets/logo/bca.png',
    },
    {
      'name': 'BRI',
      'image': 'assets/logo/bri.png',
    },
    {
      'name': 'Mandiri',
      'image': 'assets/logo/mandiri.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pilih Bank',
            style: FontStyle.subtitle1SemiBold,
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _databank.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 8.0),
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ColorApp.secondaryFF,
                        borderRadius: BorderRadius.circular(6),
                        boxShadow: CustomShadow.md),
                    child: ListTile(
                      onTap: () {
                        bank.value = _databank[index]['image'];
                      },
                      leading: Image.asset(
                        _databank[index]['image'],
                        height: 30,
                      ),
                      title: Text(
                        _databank[index]['name'],
                        style: FontStyle.subtitle1SemiBold,
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
