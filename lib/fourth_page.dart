import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  final String data;

  FourthPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Fourth Page',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Text(data, style: TextStyle(fontSize: 20)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    //replace the current root
                    //using pushReplacementNamed used to wherever we need to go
                    Navigator.of(context).pushReplacementNamed("/");
                    //By using popUntil,remove all the previous routes until it returns true
                    // Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: Text('Back to HomePage')),
            )
          ],
        ),
      ),
    );
  }
}
