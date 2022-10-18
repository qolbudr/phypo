import 'dart:async';
import 'dart:io';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PdfViewer extends StatefulWidget {
  const PdfViewer({Key? key, required this.url, required this.name}) : super(key: key);
  final String url;
  final String name;


  @override
  State<PdfViewer> createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
	bool _isLoading = true;
	String remotePDFpath = "";

  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl().then((f) {
      setState(() {
      	_isLoading = false;
        remotePDFpath = f.path;
      });
    });
  }
  
  Future<File> createFileOfPdfUrl() async {
    Completer<File> completer = Completer();
    print("Start download file from internet!");
    try {
      final url = widget.url;
      final filename = url.substring(url.lastIndexOf("/") + 1);
      var request = await HttpClient().getUrl(Uri.parse(url));
      var response = await request.close();
      var bytes = await consolidateHttpClientResponseBytes(response);
      var dir = await getApplicationDocumentsDirectory();
      print("Download files");
      print("${dir.path}/$filename");
      File file = File("${dir.path}/$filename");

      await file.writeAsBytes(bytes, flush: true);
      completer.complete(file);
    } catch (e) {
      throw Exception('Error parsing asset file!');
    }

    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    	backgroundColor: const Color(0xfff3f3f3),
    	appBar: AppBar(
    		centerTitle: true,
    		title: Text(widget.name, style: TextStyle(fontSize: 14)),
    		backgroundColor: Colors.white,
    		elevation: 1,
    	),
    	body: _isLoading ?
    	const Center(
    		child: CircularProgressIndicator(),
    	) :
    	PDFView(
    		filePath: remotePDFpath,
    	)
    );
  }
}