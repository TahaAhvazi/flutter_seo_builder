import 'dart:html' as html;

export 'widgets/seo_text.dart';

class SEOBuilder {
  static void setSEO({
    required String title,
    required String description,
    required String keywords,
    String? author,
    String? imageUrl,
  }) {
    // Set the title
    html.document.title = title;

    // Set the meta description
    _setMetaTag('description', description);

    // Set meta keywords
    _setMetaTag('keywords', keywords);

    // Set author if provided
    if (author != null) {
      _setMetaTag('author', author);
    }

    // Set Open Graph meta tags for social sharing
    _setMetaTag('og:title', title);
    _setMetaTag('og:description', description);
    _setMetaTag('og:type', 'website');
    if (imageUrl != null) {
      _setMetaTag('og:image', imageUrl);
    }
  }

  static void _setMetaTag(String name, String content) {
    final meta = html.MetaElement()
      ..name = name
      ..content = content;

    html.document.head?.append(meta);
  }
}
