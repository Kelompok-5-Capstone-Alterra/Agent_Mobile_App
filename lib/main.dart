import 'package:agent_mobile_app/pages/splash_screen.dart';
import 'package:agent_mobile_app/pages/transaction_page/desc_transaction.dart';
import 'package:agent_mobile_app/pages/transaction_page/history_transaction.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DIGO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HistoryTransaction(),
    );
  }
}
