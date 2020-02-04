import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: 'Calculate Two numbers',
  home: CalculateNumbers(),
));

class CalculateNumbers extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    double number_one = 0.0;
    double number_two = 0.0;

    //create TextField
    TextField textField_one = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: "Number 1"),
      onChanged: (String value){
        try{
          number_one = double.parse(value);
        }catch(exception){
          number_one = 0.0;
        }
      },
    );

    //create TextField
    TextField textField_two = TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: "Number 2"),
      onChanged: (String value){
        try{
          number_two = double.parse(value);
        }catch(exception){
          number_two = 0.0;
        }
      },
    );

    //create Button
    RaisedButton addButton = RaisedButton(
      child: Text("Add"),
      onPressed: (){
      double addResult = number_one + number_two;

      //Generate Dialog
        AlertDialog dialog = AlertDialog(
          content: Text('Total Result \$$addResult'),
        );
        showDialog(context: context, builder: (BuildContext context) => dialog);
      },
    );

    RaisedButton subButton = RaisedButton(
      child: Text("Sub"),
      onPressed: (){
        double subResult = number_one - number_two;

        //Generate Dialog
        AlertDialog dialog = AlertDialog(
          content: Text('Total Result \$$subResult'),
        );
        showDialog(context: context, builder: (BuildContext context) => dialog);
      },
    );

    RaisedButton multButton = RaisedButton(
      child: Text("Mult"),
      onPressed: (){
        double multResult = number_one * number_two;

        //Generate Dialog
        AlertDialog dialog = AlertDialog(
          content: Text('Total Result \$$multResult'),
        );
        showDialog(context: context, builder: (BuildContext context) => dialog);
      },
    );

    RaisedButton divButton = RaisedButton(
      child: Text("Div"),
      onPressed: (){
        double divResult = number_one / number_two;

        //Generate Dialog
        AlertDialog dialog = AlertDialog(
          content: Text('Total Result \$$divResult'),
        );
        showDialog(context: context, builder: (BuildContext context) => dialog);
      },
    );

    Container container = Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          textField_one, textField_two, addButton,subButton,multButton,divButton
        ],
      ),
    );

    AppBar appBar = AppBar(
      title: Text('Calculate Numbers'),
    );

    Scaffold scaffold = Scaffold(
    appBar:  appBar,body: container,
    );

    return scaffold;

  }

}