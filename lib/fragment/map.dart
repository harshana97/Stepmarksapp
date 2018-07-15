import 'package:flutter/material.dart';

class FirstFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Mapping();
  }

}

class Mapping extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new MappingState();
  }
}

class MappingState extends State<Mapping>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

    );
  }
}