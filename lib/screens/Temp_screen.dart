import 'package:flutter/material.dart';
import 'package:flutter_mapp/plugins/local_notifications.dart';

class TempScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test')
      ),
      body:Container(
        child: Center(
          child: ElevatedButton(onPressed: (){

            LocalNotification().showNotification('hello', 'can you hear me');
          }, child: Text('Click me')),
        ),
      )
    );
  }
}
