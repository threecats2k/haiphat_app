/// Article model for SEO content from assets/data/articles.json
class Article {
  final String id;
  final String category;
  final String title;
  final String metaDescription;
  final String slug;
  final String contentMarkdown;
  final int estimatedReadTimeMinutes;
  final String suggestedThumbnailPrompt;

  const Article({
    required this.id,
    required this.category,
    required this.title,
    required this.metaDescription,
    required this.slug,
    required this.contentMarkdown,
    required this.estimatedReadTimeMinutes,
    required this.suggestedThumbnailPrompt,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'] as String? ?? '',
      category: json['category'] as String? ?? '',
      title: json['title'] as String? ?? '',
      metaDescription: json['meta_description'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      contentMarkdown: json['content_markdown'] as String? ?? '',
      estimatedReadTimeMinutes:
          (json['estimated_read_time_minutes'] as num?)?.toInt() ?? 0,
      suggestedThumbnailPrompt:
          json['suggested_thumbnail_prompt'] as String? ?? '',
    );
  }

  /// Short title for list display (max ~50 chars)
  String get shortTitle {
    if (title.length <= 50) return title;
    return '${title.substring(0, 47)}...';
  }
}
