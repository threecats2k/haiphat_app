import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.onNavigateToTab});

  final void Function(int index)? onNavigateToTab;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hero - Logo full size
          Container(
            height: 220,
            width: double.infinity,
            color: AppColors.background,
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
            alignment: Alignment.center,
            child: Image.asset(
              AppConstants.logoAsset,
              fit: BoxFit.contain,
              height: double.infinity,
              width: double.infinity,
              errorBuilder: (_, __, ___) => const Text(
                'HAI PHAT IDC',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Logo & intro
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chuyên Gia Xây Dựng Công Trình',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.onSurface,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Công ty Cổ phần Đầu tư Phát triển và Xây dựng Hải Phát cung cấp dịch vụ xây dựng chuyên nghiệp: công trình dân dụng, công nghiệp, giao thông và hạ tầng kỹ thuật với tiêu chuẩn quốc tế.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.onSurfaceVariant,
                    height: 1.55,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Quick nav cards
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Khám phá',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.onSurface,
                  ),
                ),
                const SizedBox(height: 12),
                _NavCard(
                  icon: Icons.construction,
                  title: 'Dịch vụ',
                  subtitle:
                      'Xây dựng dân dụng, công nghiệp, giao thông, hạ tầng',
                  onTap: () => onNavigateToTab?.call(1),
                ),
                const SizedBox(height: 10),
                _NavCard(
                  icon: Icons.article_outlined,
                  title: 'Tin tức & Bài viết',
                  subtitle:
                      'Bài viết chuyên sâu về xây dựng công nghiệp, giao thông',
                  onTap: () => onNavigateToTab?.call(2),
                ),
                const SizedBox(height: 10),
                _NavCard(
                  icon: Icons.business,
                  title: 'Về chúng tôi',
                  subtitle: 'Giới thiệu công ty, đối tác, cam kết chất lượng',
                  onTap: () => onNavigateToTab?.call(3),
                ),
                const SizedBox(height: 10),
                _NavCard(
                  icon: Icons.policy,
                  title: 'Chính sách',
                  subtitle: 'Bảo hành 12 tháng, giao hàng, đổi trả',
                  onTap: () => onNavigateToTab?.call(4),
                ),
                const SizedBox(height: 10),
                _NavCard(
                  icon: Icons.contact_phone,
                  title: 'Liên hệ',
                  subtitle:
                      'Địa chỉ, điện thoại, email - Gọi ngay 0945 838 333',
                  onTap: () => onNavigateToTab?.call(5),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          // Stats
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: AppColors.primary.withValues(alpha: 0.2),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _StatItem(value: '100+', label: 'Dự án'),
                _StatItem(value: '50+', label: 'Đối tác'),
                _StatItem(value: '95%', label: 'Hài lòng'),
                _StatItem(value: '6+', label: 'Năm KN'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          // Why choose us teaser
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tại sao chọn Hải Phát IDC?',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.onSurface,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Kinh nghiệm chuyên sâu • Chất lượng đảm bảo • Giá cả cạnh tranh • Giao hàng đúng hẹn • Hỗ trợ tận tâm • Bảo hành rõ ràng',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.onSurfaceVariant,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () => onNavigateToTab?.call(3),
                    icon: const Icon(Icons.arrow_forward, size: 18),
                    label: const Text('Xem thêm về công ty'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.primary,
                      side: const BorderSide(color: AppColors.primary),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _NavCard extends StatelessWidget {
  const _NavCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.primary.withValues(alpha: 0.2)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: AppColors.primary, size: 24),
              ),
              const SizedBox(width: 14),
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
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.onSurfaceVariant,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, color: AppColors.onSurfaceVariant),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  const _StatItem({required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppColors.onSurfaceVariant,
            fontSize: 11,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
