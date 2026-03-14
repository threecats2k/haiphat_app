import 'dart:convert';

import 'package:flutter/services.dart';

import '../models/article.dart';

/// Loads and parses articles from assets/data/articles.json
class ArticleService {
  static const String _assetPath = 'assets/data/articles.json';

  static Future<List<Article>> loadArticles() async {
    final jsonStr = await rootBundle.loadString(_assetPath);
    final List<dynamic> jsonList = json.decode(jsonStr) as List<dynamic>;
    return jsonList
        .map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
