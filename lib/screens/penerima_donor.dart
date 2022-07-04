import 'package:finalprojectpmoif20aaldyrizkyk/screens/square.dart';
import 'package:flutter/material.dart';

class Requestblood extends StatelessWidget {
  final List _posts = [
    'Prabu Siliwangi\nprabu20302@gmail.com\n08135165115\nMembutuhkan Golongan Darah B+\nKota Purwokerto',
    'Samidin\nsamidin223@gmail.com\n0815817522\nMembutuhkan Darah AB-\nKota Cilacap',
    'Joko Parjo\njoko@gmail.com\n0851157241\nMembutuhkan Darah O\nKota Wonosobo',
  ];

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Pendonor',
          ),
          backgroundColor: const Color(0xffcd0000),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: _posts.length,
                  itemBuilder: (context, index) {
                    return MySquare(
                      child: _posts[index],
                    );
                  }),
            ),
          ],
        ),
      );
    }
  }
}
