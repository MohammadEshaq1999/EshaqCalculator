import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eshaq Calculator',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int firstnum =0;
  int secondnum =0;
  String texttodesplay ="";
  String res ="" ;
  String operate ="";


 void btnclicked(String myvalue){


   if(myvalue == "C"){
     texttodesplay = '';
     firstnum =0;
     secondnum=0;
     res='';
   }
   else if(myvalue == "+"|| myvalue == "-" || myvalue == "x" || myvalue == "/"){
    firstnum = int.parse(texttodesplay);
    res = "";
    operate = myvalue;
   }

   else if(myvalue == "="){
     texttodesplay ="200";
     // secondnum = int.parse(texttodesplay);
     // if(operate == "+"){
     //   res=(firstnum+secondnum).toString();
     // }
     // if(operate == "-"){
     //   res=(firstnum-secondnum).toString();
     // }
     // if(operate == "x"){
     //   res=(firstnum*secondnum).toString();
     // }
     // if(operate == "/"){
     //   res=(firstnum~/secondnum).toString();
     // }
     // else{
     //   res=int.parse(texttodesplay + myvalue).toString();
     // }

   }

   setState((){
      if(myvalue=="C"){
        texttodesplay="";
      }
      else {
        texttodesplay = texttodesplay+myvalue;
      }

   });


 }


  Widget custombutton( String myvalue){

    return Expanded(
      child: OutlinedButton(
      onPressed: (){
        btnclicked(myvalue);

      },
      child: Text('$myvalue' ,
        style: TextStyle(
        fontSize: 25.0,
        color: Colors.blue,
      ), ) ,
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(25.0),
        ),


    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eshaq Calculator'),
      ),
      body: Container(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.all(10.0),
                  child: Text('$texttodesplay'
                  , style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      
                    ),),
                ),
                ),
                Row(
                  children: <Widget>[
                    custombutton('9'),
                    custombutton('8'),
                    custombutton('7'),
                    custombutton('+'),


                  ],
                ),
                Row(
                  children: <Widget>[
                    custombutton('6'),
                    custombutton('5'),
                    custombutton('4'),
                    custombutton('-'),


                  ],
                ),
                Row(
                  children: <Widget>[
                    custombutton('3'),
                    custombutton('2'),
                    custombutton('1'),
                    custombutton('x'),


                  ],
                ),
                Row(
                  children: <Widget>[
                    custombutton('C'),
                    custombutton('0'),
                    custombutton('='),
                    custombutton('/'),


                  ],
                ),

              ],
            )
      ),
    );
  }
}


