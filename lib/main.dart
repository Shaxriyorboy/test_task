import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/src/feature/choose_complaint_page/pages/choose_complaint_page.dart';
import 'package:test_task/src/feature/choose_complaint_page/view_models/spam_vm.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SpamVM()),
      ],
      child: MaterialApp(
        title: 'Test Task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ChooseComplaintPage(),
      ),
    );
  }
}
