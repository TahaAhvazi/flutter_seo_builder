import 'package:flutter/widgets.dart';
import 'dart:html' as html;

/// A widget that renders a Flutter [Text] widget while also injecting
/// SEO-friendly <p> tags in the HTML document when running on Flutter Web.
class SEOText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;

  const SEOText({
    Key? key,
    required this.text,
    this.style,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Inject the <p> tag into the HTML DOM when on Flutter Web.
    _injectParagraphTag();

    // Render the Text widget in Flutter.
    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }

  /// Injects a <p> tag into the HTML DOM for SEO purposes.
  void _injectParagraphTag() {
    final paragraphElement = html.ParagraphElement()
      ..text = text
      ..style.margin =
          '8px 0'; // Optional: Add some margin for better readability.
    html.document.body?.append(paragraphElement);
  }
}
