import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: MaterialApp(
        title: "My App",
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController textController1 = TextEditingController();

  final TextEditingController textController2 = TextEditingController();

  double dataResult = double.infinity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Caculator"),
      ),
      body:SafeArea(
        child: Container(
          padding: EdgeInsets.all(5),
          constraints: BoxConstraints.expand(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
               TextField(
                 controller: textController1 ,
                 textInputAction: TextInputAction.next,
                 keyboardType: TextInputType.number,
                 inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.access_time_filled_outlined),
                   hintText: "Input number 1",
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(5))
                   )
                 ),
               ),
               SizedBox(height: 10,),
               TextField(
                 controller: textController2,
                 textInputAction: TextInputAction.done,
                 keyboardType: TextInputType.number,
                 inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                 decoration: InputDecoration(
                     prefixIcon: Icon(Icons.access_time_filled_outlined),
                     hintText: "Input number 2",
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(Radius.circular(5))
                     )
                 ),
               ),
               Center(
                 child: Text(
                  dataResult == double.infinity ? "" : "Ket qua = $dataResult",
                   style: TextStyle(
                     color: Colors.red,
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     fontStyle: FontStyle.italic,
                   ),
                 ),
               ),
               SizedBox(height: 50,),
               Row(
                 children: [
                   Expanded(
                       child: Center(
                           child:ElevatedButton(onPressed: (){
                             String text1 = textController1.text.toString();
                             String text2 = textController2.text.toString();

                             if (text1.isEmpty || text2.isEmpty) {
                               ScaffoldMessenger.of(context)
                                   .showSnackBar(SnackBar(content: Text("Vui long nhap day du thong tin")));
                             }

                             double number1 = double.parse(text1);
                             double number2 = double.parse(text2);
                             setState(() {
                               dataResult = (number1 + number2);
                             });
                           }, child: Text("+"))
                       ),
                   ),
                   Expanded(
                     child: Center(
                         child:ElevatedButton(onPressed: (){
                           String text1 = textController1.text.toString();
                           String text2 = textController2.text.toString();

                           if (text1.isEmpty || text2.isEmpty) {
                             ScaffoldMessenger.of(context)
                                 .showSnackBar(SnackBar(content: Text("Vui long nhap day du thong tin")));
                           }

                           double number1 = double.parse(text1);
                           double number2 = double.parse(text2);
                           setState(() {
                             dataResult = (number1 - number2);
                           });
                         }, child: Text("-"))
                     ),
                   ),
                 ],
               ),
               SizedBox(height: 50,),
               Row(
                 children: [
                   Expanded(
                     child: Center(
                         child:ElevatedButton(onPressed: (){
                           String text1 = textController1.text.toString();
                           String text2 = textController2.text.toString();

                           if (text1.isEmpty || text2.isEmpty) {
                             ScaffoldMessenger.of(context)
                                 .showSnackBar(SnackBar(content: Text("Vui long nhap day du thong tin")));
                           }

                           double number1 = double.parse(text1);
                           double number2 = double.parse(text2);
                           setState(() {
                             dataResult = (number1 * number2);
                           });
                         }, child: Text("*"))
                     ),
                   ),
                   Expanded(
                     child: Center(
                         child:ElevatedButton(onPressed: (){
                           String text1 = textController1.text.toString();
                           String text2 = textController2.text.toString();

                           if (text1.isEmpty || text2.isEmpty) {
                             ScaffoldMessenger.of(context)
                                 .showSnackBar(SnackBar(content: Text("Vui long nhap day du thong tin")));
                           }

                           double number1 = double.parse(text1);
                           double number2 = double.parse(text2);

                           if (number2 == 0) {
                             ScaffoldMessenger
                                 .of(context)
                                 .showSnackBar(SnackBar(content: Text("Phep chia khong chia duoc so 0")));
                           }
                           setState(() {
                             dataResult = (number1 / number2);
                           });
                         }, child: Text("/"))
                     ),
                   ),
                 ],
               ),

             ],
            ),
          ),
        ),
    );
  }
}








