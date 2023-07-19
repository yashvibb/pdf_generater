import 'package:flutter/material.dart';
import 'package:pdf_generater/pdf/create_invoice.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text("Pdf view"),),
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()async => createInvoice(), child: Text("View pdf")),
          ],
        ),
      ),
    );
  }
}
