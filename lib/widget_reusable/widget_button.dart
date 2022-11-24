import 'package:agent_mobile_app/helper/margin_layout.dart';
import 'package:agent_mobile_app/helper/themes_colors.dart';
import 'package:agent_mobile_app/helper/themse_fonts.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_below/dropdown_below.dart';

/// class ini berisi kumpulan widget reusable button
class ButtonCustom {
  static Widget buttonPrimary({
    required Function() onTap,
    required Color colorBtn,
    required String text,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Material(
        color: colorBtn,
        child: SizedBox(
          height: 45,
          width: double.infinity,
          child: InkWell(
            onTap: onTap,
            splashColor: colorBtn,
            highlightColor: Color(0XFF012243),
            child: Center(
              child: Text(
                text,
                style: FontStyle.button,
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// function ini menampilkan widget button dimana tedapat icon pada bagian kiri dan text pada bagian tengah
  /// button tidak memiliki brackground hanya memiliki border
  static Widget buttonIconPrimary({
    required Function() onTap,
    required Color colorBtn,
    required String text,
    required String icon,
  }) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: ColorApp.secondaryEA)),
      child: InkWell(
        onTap: onTap,
        splashColor: ColorApp.secondaryEA,
        highlightColor: ColorApp.secondaryEA,
        child: Padding(
          padding: Marginlayout.marginhorizontal,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  icon,
                  height: 24,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: FontStyle.button.copyWith(color: ColorApp.secondary00),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  static Widget dropDownMenu({
    // required Color dropdownColor,
    // required bool isExpanded,
    // required String value,
    required List<String> listItems,
    // required void Function(Object?)? onChange,
    required String hint,
  }) {
    return Container(
      width: 118,
      height: 38,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: ColorApp.primaryA3),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownBelow(
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: ColorApp.secondaryFF,
          ),

          itemWidth: 200,
          boxTextstyle: FontStyle.button,
          boxHeight: 45,
          boxWidth: 200,
          hint: Text(
            hint,
            style: FontStyle.button,
          ),
          // value: _selectedTest,
          items: listItems.map<DropdownMenuItem<String>>((value) {
            return DropdownMenuItem<String>(
                alignment: AlignmentDirectional.centerStart,
                value: value,
                child: Text(
                  value,
                  style: FontStyle.button3,
                ));
          }).toList(),
          onChanged: (value) {},
        ),
      ),
    );
  }
}
