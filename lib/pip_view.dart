import 'package:flutter/material.dart';
import 'package:pip_view/pip_view.dart';

class PIPView extends StatefulWidget {
  const PIPView({super.key});

  @override
  State<PIPView> createState() => _PIPViewState();
}

class _PIPViewState extends State<PIPView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PIP View"),
      ),
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PIPView(builder: (context, isFloating) {
      return Scaffold(
        resizeToAvoidBottomInset: !isFloating,
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [],
            ),
          ),
        )),
      );
    });
  }
}
