import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../models/article.dart';
import '../services/article_service.dart';
import 'article_detail_screen.dart';

class ArticlesScreen extends StatelessWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
      future: ArticleService.loadArticles(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError || !snapshot.hasData) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline, size: 48, color: AppColors.onSurfaceVariant),
                const SizedBox(height: 16),
                Text(
                  'Không thể tải bài viết',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColors.onSurfaceVariant,
                      ),
                ),
              ],
            ),
          );
        }
        final articles = snapshot.data!;
        return ListView.builder(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return _ArticleCard(
              article: article,
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ArticleDetailScreen(article: article),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class _ArticleCard extends StatelessWidget {
  const _ArticleCard({required this.article, required this.onTap});

  final Article article;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  article.category,
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                article.title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.onSurface,
                      height: 1.3,
                    ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.schedule, size: 14, color: AppColors.onSurfaceVariant),
                  const SizedBox(width: 4),
                  Text(
                    '${article.estimatedReadTimeMinutes} phút đọc',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.onSurfaceVariant,
                        ),
                  ),
                  const Spacer(),
                  Icon(Icons.arrow_forward_ios, size: 12, color: AppColors.primary),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
