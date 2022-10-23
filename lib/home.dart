import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:phypo/info.dart';
import 'package:phypo/password_page.dart';
import 'package:phypo/pdf_viewer.dart';

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
    	  child: ListView(
    	  	padding: const EdgeInsets.all(15),
    	  	children: [
    	  		const Text("Hello", style: TextStyle(fontSize: 24, color: Color(0xffabb1cf))),
    	  		const Text("Selamat Datang", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
    	  		Stack(
    	  		  children: [
    	  		    Column(
    	  		      children: [
    	  		      	const SizedBox(height: 35),
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
    	  		  		bottom: -15,
    	  		  		right: 0,
    	  		  		child: Lottie.asset('assets/earth.json', width: 180)
    	  		  	),
    	  		  ],
    	  		),
    	  		const SizedBox(height: 20),
    	  		const Text("Menu Aplikasi", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
    	  		const SizedBox(height: 20),
    	  		Row(
    	  			children: [
    	  				Expanded(
    	  				  child: GestureDetector(
    	  				  	onTap: () => Navigator.push(context, CupertinoPageRoute(
    	  				  		builder: (context) => const PdfViewer(
    	  				  			url: 'https://firebasestorage.googleapis.com/v0/b/phypo-8d378.appspot.com/o/buku_saku.pdf?alt=media&token=bb0e7cf6-4e9d-4bff-b933-4f295139df3c',
    	  				  			name: 'Buku Saku'
    	  				  		)
    	  				  	)),
    	  				    child: Container(
    	  				    	padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
    	  				    	decoration: const BoxDecoration(
		    		        		borderRadius: BorderRadius.all(Radius.circular(15)),
		    		        		color: Color(0xffabb1cf),
		    		        	),
		    		        	child: Center(
		    		        		child: Column(
		    		        			children: [
		    		        				Container(
		    		        					padding: const EdgeInsets.all(10),
		    		        					decoration: const BoxDecoration(
		    		        						shape: BoxShape.circle,
		    		        						color: Colors.white
		    		        					),
		    		        					child: const Icon(Icons.book_outlined)
		    		        				),
		    		        				const SizedBox(height: 30),
		    		        				const Text("Buku Saku", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
		    		        				const SizedBox(height: 15),
		    		        				const Text("Pemanasan Global", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400), textAlign: TextAlign.center,)
		    		        			],
		    		        		),
		    		        	),
    	  				    ),
    	  				  ),
    	  				),
    	  				const SizedBox(width: 10),
    	  				Expanded(
    	  					child: Column(
    	  						children: [
    	  							GestureDetector(
    	  								onTap: () => Navigator.push(context, CupertinoPageRoute(
		    	  				  		builder: (context) => const PasswordPage(
		    	  				  			password: 'modulguru123',
		    	  				  			url: 'https://firebasestorage.googleapis.com/v0/b/phypo-8d378.appspot.com/o/modul_pembelajaran.pdf?alt=media&token=8ff0edf3-7ef3-48e3-892b-3343e61b9e09',
		    	  				  			name: 'Modul Pembelajaran'
		    	  				  		)
		    	  				  	)),
    	  							  child: Container(
    	  							  	height: 85,
    	  							  	padding: const EdgeInsets.all(15),
    	  							  	decoration: const BoxDecoration(
    		        						borderRadius: BorderRadius.all(Radius.circular(15)),
		    		        				color: Color(0xffc5b9cd),
    		        					),
    		        					child: Row(
    		        						children: [
    		        							Container(
			    		        					padding: const EdgeInsets.all(10),
			    		        					decoration: const BoxDecoration(
			    		        						shape: BoxShape.circle,
			    		        						color: Colors.white
			    		        					),
			    		        					child: const Icon(Icons.book_outlined, size: 14)
			    		        				),
			    		        				const SizedBox(width: 10),
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
    	  							),
    	  							const SizedBox(height: 10),
    	  							GestureDetector(
    	  								onTap: () => Navigator.push(context, CupertinoPageRoute(
		    	  				  		builder: (context) => const Info()
		    	  				  	)),
    	  							  child: Container(
    	  							  	height: 85,
    	  							  	padding: const EdgeInsets.all(15),
    	  							  	decoration: const BoxDecoration(
    		        						borderRadius: BorderRadius.all(Radius.circular(15)),
		    		        				color: Color(0xffdec2cb),
    		        					),
    		        					child: Row(
    		        						children: [
    		        							Container(
			    		        					padding: const EdgeInsets.all(10),
			    		        					decoration: const BoxDecoration(
			    		        						shape: BoxShape.circle,
			    		        						color: Colors.white
			    		        					),
			    		        					child: const Icon(Icons.person_outlined, size: 14)
			    		        				),
			    		        				const SizedBox(width: 10),
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
    	  							),
    	  						]
    	  					),
    	  				),
    	  			],
    	  		),
							const SizedBox(height: 20),
							const Text("Lembar Kerja Peserta Didik (LKPD)", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
							const SizedBox(height: 20),
							Column(
								children: [
									GestureDetector(
										onTap: () => Navigator.push(context, CupertinoPageRoute(
    	  				  		builder: (context) => const PasswordPage(
    	  				  			password: 'lkpd1123',
    	  				  			url: 'https://firebasestorage.googleapis.com/v0/b/phypo-8d378.appspot.com/o/lkpd_1.pdf?alt=media&token=3604a263-9752-45ef-be74-42462996c67e',
    	  				  			name: 'LKPD I'
    	  				  		)
    	  				  	)),
									  child: Container(
									  	width: double.infinity,
									  	padding: const EdgeInsets.all(15),
									  	decoration: const BoxDecoration(
	    		        		borderRadius: BorderRadius.all(Radius.circular(15)),
	    		        		color: Colors.white,
	    		        	),
	    		        	child: Row(
	    		        		children: [
	    		        			Container(
    		        					padding: const EdgeInsets.all(10),
    		        					decoration: BoxDecoration(
    		        						shape: BoxShape.circle,
    		        						color: const Color(0xffc5b9cd).withOpacity(0.5)
    		        					),
    		        					child: const Icon(Icons.list_outlined)
    		        				),
    		        				const SizedBox(width: 10),
    		        				Column(
    		        					crossAxisAlignment: CrossAxisAlignment.start,
    		        					children: const [
    		        						Text("LKPD I", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
    		        						Text("Pemanasan Global", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400))
    		        					],
    		        				)
	    		        		],
	    		        	),
									  ),
									),
									const SizedBox(height: 10),
									GestureDetector(
										onTap: () => Navigator.push(context, CupertinoPageRoute(
    	  				  		builder: (context) => const PasswordPage(
    	  				  			password: 'lkpd2123',
    	  				  			url: 'https://firebasestorage.googleapis.com/v0/b/phypo-8d378.appspot.com/o/lkpd_2.pdf?alt=media&token=349927fc-fa31-41c8-bbd6-07fa52dab2a5',
    	  				  			name: 'LKPD II'
    	  				  		)
    	  				  	)),
									  child: Container(
									  	width: double.infinity,
									  	padding: const EdgeInsets.all(15),
									  	decoration: const BoxDecoration(
	    		        		borderRadius: BorderRadius.all(Radius.circular(15)),
	    		        		color: Colors.white,
	    		        	),
	    		        	child: Row(
	    		        		children: [
	    		        			Container(
    		        					padding: const EdgeInsets.all(10),
    		        					decoration: BoxDecoration(
    		        						shape: BoxShape.circle,
    		        						color: const Color(0xffc5b9cd).withOpacity(0.5)
    		        					),
    		        					child: const Icon(Icons.list_outlined)
    		        				),
    		        				const SizedBox(width: 10),
    		        				Column(
    		        					crossAxisAlignment: CrossAxisAlignment.start,
    		        					children: const [
    		        						Text("LKPD II", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
    		        						Text("Pemanasan Global", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400))
    		        					],
    		        				)
	    		        		],
	    		        	),
								  ),
								)
							],
						)
    	  	],
    	  ),
    	),
    );
  }
}