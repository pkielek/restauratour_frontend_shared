import 'package:flutter/material.dart';

import 'loading.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child:Loading('Trwa ładowanie...')));
  }
}
