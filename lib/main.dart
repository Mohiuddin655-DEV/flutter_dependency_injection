import 'package:flutter/material.dart';
import 'package:flutter_dependency_injection/app_info.dart';
import 'package:flutter_dependency_injection/locator.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AppInfo(),
      child: MaterialApp(
        title: 'Dependency Injection',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency Injection"),
      ),
      body: const SafeArea(child: Body()),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appInfo = Provider.of<AppInfo>(context);
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Center(
        child: Text(
          appInfo.data,
          style: const TextStyle(fontSize: 24, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
