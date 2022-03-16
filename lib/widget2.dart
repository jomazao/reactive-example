import 'package:flutter/material.dart';
import 'package:reactive/numbers_stream.dart';

class Widget2 extends StatelessWidget {
  Widget2({
    Key? key,
  }) : super(key: key);
  final List<int> _numbers = [];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
        stream: numbersStream.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _numbers.add(snapshot.data!);
          }
          return ListView.builder(
              itemCount: _numbers.length,
              itemBuilder: (context, index) => Text('${_numbers[index]}'));
        });
  }

  void asfdasf() {
    Future.delayed(Duration.zero).then((value) {
      print(value);
    });
  }

}
