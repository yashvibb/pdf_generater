import 'package:pdf/widgets.dart';
import 'package:printing/printing.dart';

Future createInvoice() async {
  final pdf = Document();


  Widget pdfWidget() => Container(
          child: Center(
        child: Text("Pdf"),
      ));
  pdf.addPage(Page(build: (context) {
    return pdfWidget();
  }));
  return await Printing.layoutPdf(onLayout: (format)async{
    return await pdf.save();
  });
}
