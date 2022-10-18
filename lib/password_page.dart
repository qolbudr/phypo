import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phypo/pdf_viewer.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key, required this.password, required this.url, required this.name}) : super(key: key);
  final String password;
  final String url;
  final String name;

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  final _passwordController = TextEditingController();

  @override
  void dispose()
  {
  	_passwordController.dispose();
  	super.dispose();
  }

  void checkPassword()
  {
  	if(widget.password == _passwordController.value.text)
  	{
  		Navigator.pushReplacement(context, CupertinoPageRoute(
  			builder: (context) => PdfViewer(
  				url: widget.url,
  				name: widget.name
  			)
  		));
  	}
  	else
  	{
  		_passwordController.clear();
  	}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    	body: Column(
    	  children: [
    	    Expanded(
    	      child: Padding(
    	        padding: const EdgeInsets.all(35),
    	        child: Column(
    	        	mainAxisAlignment: MainAxisAlignment.center,
    	        	children: [
    	        		const Text("Masukkan password untuk membuka file.", style: TextStyle(fontSize: 16)),
    	        		TextField(
    	        			controller: _passwordController,
    	        			obscureText: true,
    	        			decoration: const InputDecoration(
    	        				hintText: 'Password'
    	        			),
    	        		)
    	        	],
    	        ),
    	      ),
    	    ),
    	  ],
    	),
    	floatingActionButton: FloatingActionButton(
    		onPressed: checkPassword,
    		child: const Icon(Icons.chevron_right),
    	),
    );
  }
}