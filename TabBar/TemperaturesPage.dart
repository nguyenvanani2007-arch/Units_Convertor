import 'package:flutter/material.dart';
import 'package:units_converter/ResultPage.dart';

class TemperaturesPage extends StatefulWidget {
  const TemperaturesPage({super.key});

  @override
  State<TemperaturesPage> createState() => _TemperaturesPage();
}

class _TemperaturesPage extends State<TemperaturesPage>{

  late TextEditingController _textEditingController;
  final TextEditingController controller = TextEditingController();
  bool showResult = false;

  @override
  void initState(){
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose(){
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 55,
            top: 40,
            right: 105,
            bottom:1,
          ),
          child: showResult
            ? ResultPage(
              onBack: (){
                setState(() {
                  showResult = false;
                });
              },
            )
            : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter the Temperatures to convert",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30,),
              Text(
                "Unit to convert from",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30,),
              Text(
                "Unit to convert to",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30,),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    side: BorderSide(color: Colors.black)
                  )
                ),
                onPressed: (){
                  setState(() {
                    showResult = true;
                  });
                }, 
                child: const Text("Convert")
              )
            ],
          ),
        ),
      ),
    );
  }
}