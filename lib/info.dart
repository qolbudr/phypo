import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    	backgroundColor: const Color(0xfff3f3f3),
    	appBar: AppBar(
    		centerTitle: true,
    		title: const Text('Info Pengembang', style: TextStyle(fontSize: 14)),
    		backgroundColor: Colors.white,
    		elevation: 1,
    	),
    	body: ListView(
    		padding: const EdgeInsets.all(15),
    		children: [
    			Container(
    				padding: const EdgeInsets.all(15),
    				decoration: const BoxDecoration(
  						borderRadius: BorderRadius.all(Radius.circular(15)),
      				color: Colors.white,
  					),
  					child: Column(
  						children: [
  							Row(
  								children: [
  									ClipRRect(
  										borderRadius: const BorderRadius.all(Radius.circular(50)),
  										child: Image.asset('assets/person_1.png', width: 50)
  									),
  									const SizedBox(width: 10),
  									Expanded(
  									  child: Wrap(
  									  	children: const [
  									  		Text('Shalsa Billa Ardhana Neswary', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
  									  	],
  									  ),
  									)
  								],
  							),
  							const SizedBox(height: 10),
  							const Text(
					  			'Lahir di Kediri, pada tanggal 01 Oktober 2000. Saat ini (2022) dengan menempuh pendidikan S-1 di Universitas Negeri Surabaya dengan program studi Pendidikan Fisika.',
					  			style: TextStyle(fontSize: 10),
					  			textAlign: TextAlign.justify,
					  		)
  						],
  					),
    			),
    			const SizedBox(height: 10),
    			Container(
    				padding: const EdgeInsets.all(15),
    				decoration: const BoxDecoration(
  						borderRadius: BorderRadius.all(Radius.circular(15)),
      				color: Colors.white,
  					),
  					child: Column(
  						children: [
  							Row(
  								children: [
  									ClipRRect(
  										borderRadius: const BorderRadius.all(Radius.circular(50)),
  										child: Image.asset('assets/person_2.png', width: 50)
  									),
  									const SizedBox(width: 10),
  									Expanded(
  									  child: Wrap(
  									  	children: const [
  									  		Text('Achmad Maulana Satria Putra, S.Pd.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
  									  	],
  									  ),
  									)
  								],
  							),
  							const SizedBox(height: 10),
  							const Text(
					  			'Merupakan fresh graduate S1 Pendidikan Fisika Universitas Negeri Jember dengan predikat cumlaude yang memiliki pengalaman sebagai ketua asisten laboratorium fisika dasar 1 serta menjadi penulis utama artikel penelitian tentang etnofisika. Saat ini, mengajar sebagai guru fisika di SMAN 16 Surabaya',
					  			style: TextStyle(fontSize: 10),
					  			textAlign: TextAlign.justify,
					  		)
  						],
  					),
    			),
    			const SizedBox(height: 10),
    			Container(
    				padding: const EdgeInsets.all(15),
    				decoration: const BoxDecoration(
  						borderRadius: BorderRadius.all(Radius.circular(15)),
      				color: Colors.white,
  					),
  					child: Column(
  						children: [
  							Row(
  								children: [
  									ClipRRect(
  										borderRadius: const BorderRadius.all(Radius.circular(50)),
  										child: Image.asset('assets/person_3.png', width: 50)
  									),
  									const SizedBox(width: 10),
  									Expanded(
  									  child: Wrap(
  									  	children: const [
  									  		Text('Dr. Binar Kurnia Prahani, S.Pd., M.Pd.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
  									  	],
  									  ),
  									)
  								],
  							),
  							const SizedBox(height: 10),
  							const Text(
					  			'Lahir di Banyuwangi pada tanggal 13 Mei 1990 merupakan dosen di Universitas Negeri Surabaya. Telah mengampu 18 matakuliah dalam 1 tahun terakhir, sudah melakukan pengabdian sebanyak 12 kali. Telah memiliki karya buku sebanyak 7 buku, sudah mempublikasi artikel ilmiah sebanyak 225 karya, pernah menjadi pemakalah seminar ilmiah sebanyak 43 dab memperoleh HKI sebanyak 15.',
					  			style: TextStyle(fontSize: 10),
					  			textAlign: TextAlign.justify,
					  		)
  						],
  					),
    			)
    		],
    	)
    );
  }
}