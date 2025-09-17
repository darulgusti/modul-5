
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
							child: Row(
								crossAxisAlignment: CrossAxisAlignment.center,
								children: [
									// Album cover icon
									Container(
										width: 70,
										height: 70,
										decoration: BoxDecoration(
											color: Colors.blueGrey[700],
											shape: BoxShape.circle,
										),
										child: Center(
											child: Icon(
												Icons.album,
												size: 40,
												color: Colors.blueGrey[200],
											),
										),
									),
									const SizedBox(width: 20),
									// Song info
									Expanded(
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
												SizedBox(height: 8),
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
									const SizedBox(width: 10),
									// Like button
									IconButton(
										icon: const Icon(Icons.favorite_border),
										color: Colors.redAccent,
										onPressed: () {},
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
