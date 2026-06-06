import 'package:exercicio_1/view_model/user_viewmodel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final UserViewmodel _userViewmodel = UserViewmodel();
  String? userName;

  @override
  Widget build(BuildContext context) {
    setState(() {
      userName = _userViewmodel.getUserName();
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("Exercicio", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Text(
          "Boa noite ${userName ?? ''}",
          style: TextStyle(fontWeight: .bold, fontSize: 20),
        ),
      ),
    );
  }
}
