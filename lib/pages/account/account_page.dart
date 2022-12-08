import 'package:agent_mobile_app/helper/margin_layout.dart';
import 'package:agent_mobile_app/helper/routes.dart';
import 'package:agent_mobile_app/helper/shadow.dart';
import 'package:agent_mobile_app/helper/themes_colors.dart';
import 'package:agent_mobile_app/helper/themse_fonts.dart';
import 'package:agent_mobile_app/pages/account/setting_pricesell_page.dart';
import 'package:agent_mobile_app/pages/account/widgets/dialog_create_refferal.dart';
import 'package:agent_mobile_app/pages/auth_page/forgot_password_page.dart';
import 'package:agent_mobile_app/pages/auth_page/login_page.dart';
import 'package:agent_mobile_app/pages/poin_page/poin_reward_page.dart';
import 'package:agent_mobile_app/widget_reusable/widget_button.dart';
import 'package:flutter/material.dart';

import 'edit_profile_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorApp.primaryA3,
        elevation: 0,
        title: Text(
          'Akun Saya',
          style: FontStyle.heading1.copyWith(color: Colors.white),
        ),
      ),
      body: ListView(
        padding: Marginlayout.marginAll,
        physics: const BouncingScrollPhysics(),
        children: [
          ListTile(
              contentPadding:
                  const EdgeInsets.only(bottom: 26, left: 0, top: 0, right: 0),
              minVerticalPadding: 0,
              dense: true,
              minLeadingWidth: 0,
              visualDensity: const VisualDensity(vertical: 2),
              leading: CircleAvatar(
                backgroundColor: ColorApp.primaryA3,
                radius: 30,
              ),
              title: Text(
                'Nama Saya',
                textAlign: TextAlign.left,
                style: FontStyle.subtitle1SemiBold,
              ),
              subtitle: Text(
                'emailSaya@gmail.com',
                textAlign: TextAlign.left,
                style: FontStyle.subtitle2,
              ),
              trailing: IconButton(
                onPressed: () {
                  RouteWidget.push(context: context, page: EditProfilePage());
                },
                icon: Icon(
                  Icons.edit,
                  color: ColorApp.secondary00,
                ),
              )),
          // NOTE : Start level and koin DIGO
          Container(
            height: 72,
            margin: const EdgeInsets.only(bottom: 24),
            decoration: BoxDecoration(
              color: ColorApp.secondaryFF,
              boxShadow: CustomShadow.md,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Level Digo',
                          style: FontStyle.subtitle2,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/medal.png',
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              'Newbie',
                              style: FontStyle.subtitle1SemiBold,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                VerticalDivider(
                  thickness: 0.7,
                  color: ColorApp.secondary48,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => RouteWidget.push(
                        context: context, page: const PoinRewardPage()),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Koin Digo',
                            style: FontStyle.subtitle2,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/coin.png',
                                height: 20,
                                width: 20,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Text(
                                '100',
                                style: FontStyle.subtitle1SemiBold,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // NOTE : Star KOde Referral
          Text(
            'Kode Refferal',
            style: FontStyle.subtitle1SemiBold,
          ),
          const SizedBox(
            height: 16,
          ),
          ButtonCustom.buttonPrimary(
            onTap: () {
              dialogCreateRefferal(context);
            },
            colorBtn: ColorApp.primaryA3,
            text: 'Buat Kode Refferal'.toUpperCase(),
          ),

          // NOTE: Menu
          const SizedBox(
            height: 24,
          ),
          Text(
            'Menu',
            style: FontStyle.subtitle1SemiBold,
          ),

          Container(
            margin: Marginlayout.marginVertical,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: CustomShadow.md,
                borderRadius: BorderRadius.circular(6)),
            child: ListTile(
              contentPadding: Marginlayout.marginhorizontal,
              minVerticalPadding: 0,
              visualDensity: const VisualDensity(vertical: -1),
              onTap: () {
                RouteWidget.push(context: context, page: ForgotPasswordPage());
              },
              title: Text(
                'Ganti Password',
                style: FontStyle.subtitle2,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorApp.secondary00,
                size: 14,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 24),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: CustomShadow.md,
                borderRadius: BorderRadius.circular(6)),
            child: ListTile(
              contentPadding: Marginlayout.marginhorizontal,
              minVerticalPadding: 0,
              visualDensity: const VisualDensity(vertical: -1),
              onTap: () {
                RouteWidget.push(
                    context: context, page:  SettingPriceSellPage());
              },
              title: Text(
                'Atur Harga Jual',
                style: FontStyle.subtitle2,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorApp.secondary00,
                size: 14,
              ),
            ),
          ),

          // NOTE: Menu Bantuan

          Text(
            'Bantuan',
            style: FontStyle.subtitle1SemiBold,
          ),

          Container(
            margin: Marginlayout.marginVertical,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: CustomShadow.md,
                borderRadius: BorderRadius.circular(6)),
            child: ListTile(
              contentPadding: Marginlayout.marginhorizontal,
              minVerticalPadding: 0,
              visualDensity: const VisualDensity(vertical: -1),
              onTap: () {
                // NOTE: PUSH PAGE Pesanan komplain
              },
              leading: Image.asset(
                'assets/icons/compaint.png',
                height: 20,
              ),
              title: Text(
                'Pesanan Dikomplain',
                style: FontStyle.subtitle2,
              ),
            ),
          ),
          Container(
            margin: Marginlayout.marginBottom,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: CustomShadow.md,
                borderRadius: BorderRadius.circular(6)),
            child: ListTile(
              contentPadding: Marginlayout.marginhorizontal,
              minVerticalPadding: 0,
              visualDensity: const VisualDensity(vertical: -1),
              onTap: () {
                // NOTE: PUSH PAGE Pesanan komplain
              },
              leading: Image.asset(
                'assets/icons/cs.png',
                height: 20,
              ),
              title: Text(
                'Pusat Bantuan',
                style: FontStyle.subtitle2,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 60),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: CustomShadow.md,
                borderRadius: BorderRadius.circular(6)),
            child: ListTile(
              contentPadding: Marginlayout.marginhorizontal,
              minVerticalPadding: 0,
              visualDensity: const VisualDensity(vertical: -1),
              onTap: () {
                // NOTE: PUSH PAGE Pesanan komplain
              },
              leading: Image.asset(
                'assets/icons/privacy.png',
                height: 20,
              ),
              title: Text(
                'Keamanan Privasi',
                style: FontStyle.subtitle2,
              ),
            ),
          ),
          ButtonCustom.buttonPrimary(
              onTap: () => RouteWidget.pushReplacment(
                  context: context, page: LoginPage()),
              colorBtn: ColorApp.primaryA3,
              text: 'Keluar Akun'.toUpperCase()),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}