import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/constants.dart';
import '../widgets/service_card.dart';

/// Dịch vụ - Information from https://haiphatidc.store/
class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 160,
            width: double.infinity,
            child: Image.network(
              AppConstants.constructionImageUrl,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                color: AppColors.primary.withValues(alpha: 0.9),
                alignment: Alignment.center,
                child: const Icon(Icons.construction, size: 64, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
            'Dịch Vụ Chính',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.onSurface,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Chúng tôi cung cấp đầy đủ các giải pháp xây dựng công trình với tiêu chuẩn quốc tế.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.onSurfaceVariant,
                  height: 1.5,
                ),
          ),
          const SizedBox(height: 24),
          const ServiceCard(
            title: 'Xây Dựng Công Trình Dân Dụng',
            description:
                'Xây dựng nhà ở, chung cư, trường học, bệnh viện và các công trình dân dụng khác.',
            icon: Icons.home_work,
          ),
          const ServiceCard(
            title: 'Xây Dựng Công Trình Công Nghiệp',
            description:
                'Xây dựng nhà xưởng, nhà máy, kho bãi và các công trình công nghiệp chất lượng cao.',
            icon: Icons.factory,
          ),
          const ServiceCard(
            title: 'Xây Dựng Công Trình Giao Thông',
            description:
                'Xây dựng đường bộ, cầu, hầm và các công trình giao thông hiện đại.',
            icon: Icons.route,
          ),
          const ServiceCard(
            title: 'Xây Dựng Hạ Tầng Kỹ Thuật',
            description:
                'Xây dựng hệ thống cấp thoát nước, điện, viễn thông và hạ tầng kỹ thuật.',
            icon: Icons.architecture,
          ),
          const SizedBox(height: 24),
          Text(
            'Tại Sao Chọn Chúng Tôi',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.onSurface,
                ),
          ),
          const SizedBox(height: 12),
          _FeatureItem(
            title: 'Kinh nghiệm chuyên sâu',
            body: 'Hơn 6 năm kinh nghiệm trong lĩnh vực xây dựng.',
          ),
          _FeatureItem(
            title: 'Chất lượng đảm bảo',
            body: 'Công trình chất lượng cao, đảm bảo tiêu chuẩn kỹ thuật.',
          ),
          _FeatureItem(
            title: 'Giá cả cạnh tranh',
            body: 'Giá thành hợp lý, báo giá minh bạch, không phát sinh chi phí ẩn.',
          ),
          _FeatureItem(
            title: 'Giao hàng đúng hẹn',
            body: 'Cam kết hoàn thành đúng tiến độ, đảm bảo chất lượng.',
          ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  const _FeatureItem({required this.title, required this.body});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle, color: AppColors.primary, size: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.onSurface,
                      ),
                ),
                Text(
                  body,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.onSurfaceVariant,
                        height: 1.4,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
