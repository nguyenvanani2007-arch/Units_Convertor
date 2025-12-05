import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final VoidCallback onBack;
  const ResultPage({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( 
              "Result of the calculation",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 14,),
            Text(
              "KET QUA",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20,),
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  side: BorderSide(color: Colors.black)
                )
              ),
              onPressed: onBack,
              child: Text("Back")
            )
          ],
        ),
      ),
    );
  }
}
