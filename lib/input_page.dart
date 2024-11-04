import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius:BorderRadius.circular(10.0) ,
                  ),
                )), // Replace null with Container()
                Expanded(child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius:BorderRadius.circular(10.0) ,
                  ),
                )), // Replace null with Container()
              ],
            ),
          ),
          Expanded(child: Container(
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Color(0xFF1D1E33),
              borderRadius:BorderRadius.circular(10.0) ,
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius:BorderRadius.circular(10.0) ,
                  ),
                )),
                Expanded(child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1E33),
                    borderRadius:BorderRadius.circular(10.0) ,
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
