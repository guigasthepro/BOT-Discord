import 'package:emelpark/widgets/navigation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../../dashboard/view/dashboard.dart';

class LoadingScreen extends StatefulWidget{
  State<LoadingScreen> createState() => _MyLoadingScreenState();


}

class _MyLoadingScreenState extends State<LoadingScreen> {
  late StreamController<String> _textStreamController;
  Stream<String>? _textStream; // Change to nullable
  int _textIndex = 0;

  @override
  void initState() {
    super.initState();

    _textStreamController = StreamController<String>();
    _textStream = _textStreamController.stream;

    Timer.periodic(Duration(seconds: 4), (timer) {
      _textIndex++;
      if (_textIndex > 2) {
        _textIndex = 0;
      }
      String text = _getTextForIndex(_textIndex);
      print('Adding data to stream: $text'); // Debug print statement
      _textStreamController.add(text); // Add data to the stream
    });



    // Adiciona um atraso de 10 segundos antes de navegar para a página do dashboard
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Navigation()), // Replace with your DashboardScreen
      );
    });
  }

  String _getTextForIndex(int index) {
    switch (index) {
      case 0:
        return 'A carregar...';
      case 1:
        return 'Por favor, aguarde...';
      case 2:
        return 'A finalizar...';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'web/images/logoEmel.png',
              width: 400,
              height: 400,
            ),
            SizedBox(height: 20,),

            StreamBuilder<String>(
              stream: _textStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data); // Print received data
                  return Text(
                    snapshot.data!,
                    style: TextStyle(fontSize: 18),
                  );
                } else {
                  return SizedBox.shrink();
                }
              },
            ),

            SizedBox(height: 20,),

            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textStreamController.close();
    super.dispose();
  }
}

