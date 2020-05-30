import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertube/blocks/videos_block.dart';
import 'package:fluttertube/screens/home.dart';

import 'api.dart';

void main() {
  Api api = Api();
  api.search('eletro');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: VideosBloc(),
      child: MaterialApp(
        title: 'FlutterTube',
        home: Home(),
      ),
    );
  }
}
