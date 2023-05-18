import 'package:flutter/material.dart';
import 'package:fluttermidcodefactorywithapi230426/common/layout/default_layout.dart';

class RootTab extends StatelessWidget {
  const RootTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      child: Center(
        child: Text('Root tab'),
      ),
    );
  }
}