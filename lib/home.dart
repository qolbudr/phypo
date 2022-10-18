import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  	SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarIconBrightness: Brightness.dark, systemNavigationBarColor: Colors.white)
    );
    return Scaffold(
    	backgroundColor: const Color(0xfff3f3f3),
    	body: SafeArea(
    	  child: Padding(
    	    padding: const EdgeInsets.all(15),
    	    child: Column(
    	    	crossAxisAlignment: CrossAxisAlignment.start,
    	    	children: [
    	    		const SizedBox(height: 20),
    	    		const Text("Hello", style: TextStyle(fontSize: 24, color: Color(0xffabb1cf))),
    	    		const Text("Selamat Datang", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
    	    		Stack(
    	    		  children: [
    	    		    Column(
    	    		      children: [
    	    		      	SizedBox(height: 35),
    	    		        Container(
    	    		        	padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
    	    		        	width: double.infinity,
    	    		        	decoration: const BoxDecoration(
    	    		        		borderRadius: BorderRadius.all(Radius.circular(15)),
    	    		        		color: Color(0xfff7cac9),
    	    		        	),
    	    		        	child: Row(
    	    		        		children: [
    	    		        			Column(
    	    		        				crossAxisAlignment: CrossAxisAlignment.start,
    	    		        			  children: const [
    	    		        			    Text("Phypo", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
    	    		        			    Text("Buku Saku\nPemanasan Global", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
    	    		        			  ],
    	    		        			),
    	    		        		],
    	    		        	),
    	    		        ),
    	    		      ],
    	    		    ),
    	    		    Positioned(
    	    		  		bottom: 0,
    	    		  		right: 15,
    	    		  		child: Image.asset('assets/study.png', width: 180)
    	    		  	),
    	    		  ],
    	    		),
    	    		const SizedBox(height: 20),
    	    		Text("Menu Aplikasi", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
    	    		const SizedBox(height: 20),
    	    		Row(
    	    			children: [
    	    				Expanded(
    	    				  child: Container(
    	    				  	padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
    	    				  	decoration: const BoxDecoration(
		    		        		borderRadius: BorderRadius.all(Radius.circular(15)),
		    		        		color: Color(0xffabb1cf),
		    		        	),
		    		        	child: Center(
		    		        		child: Column(
		    		        			children: [
		    		        				Container(
		    		        					padding: EdgeInsets.all(10),
		    		        					decoration: const BoxDecoration(
		    		        						shape: BoxShape.circle,
		    		        						color: Colors.white
		    		        					),
		    		        					child: Icon(Icons.book_outlined)
		    		        				),
		    		        				const SizedBox(height: 30),
		    		        				Text("Buku Saku", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
		    		        				const SizedBox(height: 15),
		    		        				Text("Pemanasan Global", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400), textAlign: TextAlign.center,)
		    		        			],
		    		        		),
		    		        	),
    	    				  ),
    	    				),
    	    				SizedBox(width: 10),
    	    				Expanded(
    	    					child: Column(
    	    						children: [
    	    							Container(
    	    								height: 85,
    	    								padding: EdgeInsets.all(15),
    	    								decoration: const BoxDecoration(
    		        						borderRadius: BorderRadius.all(Radius.circular(15)),
		    		        				color: Color(0xffc5b9cd),
    		        					),
    		        					child: Row(
    		        						children: [
    		        							Container(
			    		        					padding: EdgeInsets.all(10),
			    		        					decoration: const BoxDecoration(
			    		        						shape: BoxShape.circle,
			    		        						color: Colors.white
			    		        					),
			    		        					child: Icon(Icons.book_outlined, size: 14)
			    		        				),
			    		        				SizedBox(width: 10),
			    		        				Column(
			    		        					crossAxisAlignment: CrossAxisAlignment.start,
			    		        				  mainAxisAlignment: MainAxisAlignment.center,
			    		        					children: const [
			    		        						Text("Modul Guru", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
			    		        						Text("Pegangan Guru", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400), textAlign: TextAlign.center,)
			    		        					],
			    		        				),
    		        						],
    		        					),
    	    							),
    	    							SizedBox(height: 10),
    	    							Container(
    	    								height: 85,
    	    								padding: EdgeInsets.all(15),
    	    								decoration: const BoxDecoration(
    		        						borderRadius: BorderRadius.all(Radius.circular(15)),
		    		        				color: Color(0xffdec2cb),
    		        					),
    		        					child: Row(
    		        						children: [
    		        							Container(
			    		        					padding: EdgeInsets.all(10),
			    		        					decoration: const BoxDecoration(
			    		        						shape: BoxShape.circle,
			    		        						color: Colors.white
			    		        					),
			    		        					child: Icon(Icons.person_outlined, size: 14)
			    		        				),
			    		        				SizedBox(width: 10),
			    		        				Expanded(
			    		        				  child: Column(
			    		        				  	crossAxisAlignment: CrossAxisAlignment.start,
			    		        				  	mainAxisAlignment: MainAxisAlignment.center,
			    		        				  	children: const [
			    		        				  		Text("Info", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
			    		        				  		Text("Info Pengembang", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400), textAlign: TextAlign.center,)
			    		        				  	],
			    		        				  ),
			    		        				),
    		        						],
    		        					),
    	    							),
    	    						]
    	    					),
    	    				),
    	    			],
    	    		)
    	    	],
    	    ),
    	  ),
    	),
    );
  }
}