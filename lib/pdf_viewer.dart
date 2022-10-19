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
  int currentPage = 0;
  int allPage = 0;
  double precentage = 0.0;
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
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/$filename");

      bool exist = await file.exists();
      if(exist)
      {
        completer.complete(file);
      }
      else
      {
        var request = await HttpClient().getUrl(Uri.parse(url));
        var response = await request.close();
        List<int> bytes = [];
        print("Download files");
        print("${dir.path}/$filename");
        response.listen((stream) {
          bytes.addAll(stream);
          setState(() {
            precentage = bytes.length / response.contentLength;
          });
        }, 
        onDone: () async {
          await file.writeAsBytes(bytes, flush: true);
          completer.complete(file);
        });
      }
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
    		title: Text(widget.name, style: const TextStyle(fontSize: 14)),
    		backgroundColor: Colors.white,
    		elevation: 1,
    	),
    	body: _isLoading ?
    	const Center(
    		child: CircularProgressIndicator(),
    	) :
    	Stack(
        alignment: Alignment.bottomCenter,
    	  children: [
    	    PDFView(
            fitEachPage: true,
            autoSpacing: false,
        	  filePath: remotePDFpath,
            onPageChanged: (current, all) {
              setState(() {
                currentPage = current!;
                allPage = all!;
              });
            },
    	    ),
          Positioned(
            bottom: 15,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 5, offset: Offset(0, 2))
                ]
              ),
              child: Text("Page ${currentPage + 1} of $allPage", style: TextStyle(fontSize: 12)),
            ),
          )
    	  ],
    	)
    );
  }
}