
import 'package:flutter/material.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Flutter Demo',
			theme: ThemeData.dark(),
			debugShowCheckedModeBanner: false,
			home: const NowPlayingScreen(),
		);
	}
}

class NowPlayingScreen extends StatelessWidget {
	const NowPlayingScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Sedang memutar'),
				centerTitle: true,
				backgroundColor: Colors.transparent,
				elevation: 0,
			),
			backgroundColor: const Color(0xFF18141E),
					body: Center(
						child: Card(
							elevation: 4,
							shape: RoundedRectangleBorder(
								borderRadius: BorderRadius.circular(12),
							),
							color: const Color(0xFF211B2B),
							child: Padding(
								padding: const EdgeInsets.all(12),
								child: SizedBox(
									width: 320,
									height: 200,
									child: Stack(
										children: [
											// Album cover icon di tengah Card
																	Align(
																		alignment: const Alignment(0, -0.55), // lebih ke atas
																		child: Container(
																			width: 100,
																			height: 100,
																			decoration: BoxDecoration(
																				color: Colors.blueGrey[700],
																				shape: BoxShape.circle,
																			),
																			child: Center(
																				child: Icon(
																					Icons.album,
																					size: 50,
																					color: Colors.blueGrey[200],
																				),
																			),
																		),
																	),
											// Info lagu di kiri bawah
											Positioned(
												left: 0,
												bottom: 0,
												child: Padding(
													padding: const EdgeInsets.only(left: 12, bottom: 8),
													child: Column(
														crossAxisAlignment: CrossAxisAlignment.start,
														mainAxisSize: MainAxisSize.min,
														children: const [
															Text(
																'Kebutuhan Hati',
																style: TextStyle(
																	fontWeight: FontWeight.bold,
																	fontSize: 16,
																	color: Colors.white,
																),
																maxLines: 1,
																overflow: TextOverflow.ellipsis,
															),
															SizedBox(height: 4),
															Text(
																'Kaleb J',
																style: TextStyle(
																	fontSize: 14,
																	color: Colors.grey,
																),
																maxLines: 1,
																overflow: TextOverflow.ellipsis,
															),
														],
													),
												),
											),
											// Tombol like di kanan bawah
											Positioned(
												right: 0,
												bottom: 0,
												child: Padding(
													padding: const EdgeInsets.only(right: 8, bottom: 4),
													child: IconButton(
														icon: const Icon(Icons.favorite_border),
														color: Colors.redAccent,
														onPressed: () {},
													),
												),
											),
										],
									),
								),
							),
						),
					),
		);
	}
}
