import 'package:flutter/material.dart';
import 'package:flutter_seo_builder/flutter_seo_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SEO Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter SEO Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SEOText(
              text: "Welcome to SEO-Friendly Flutter!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SEOText(
              text: "This page is optimized for search engines.",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SEOText(
              text: "Use the SEOText widget for better web performance.",
            ),
          ],
        ),
      ),
    );
  }
}
