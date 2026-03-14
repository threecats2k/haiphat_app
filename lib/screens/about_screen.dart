import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';
import '../core/constants.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  static const List<Map<String, String>> _valueProps = [
    {
      'title': 'Kinh Nghiệm Chuyên Sâu',
      'body':
          'Hơn 6 năm kinh nghiệm trong lĩnh vực xây dựng, đã hoàn thành nhiều dự án lớn nhỏ.',
    },
    {
      'title': 'Chất Lượng Đảm Bảo',
      'body':
          'Công trình xây dựng chất lượng cao, đảm bảo tiêu chuẩn kỹ thuật, độ bền và an toàn.',
    },
    {
      'title': 'Giá Cả Cạnh Tranh',
      'body':
          'Giá thành hợp lý, báo giá minh bạch, không phát sinh chi phí ẩn.',
    },
    {
      'title': 'Giao Hàng Đúng Hẹn',
      'body':
          'Cam kết hoàn thành đúng tiến độ, đảm bảo chất lượng công trình cho khách hàng.',
    },
    {
      'title': 'Hỗ Trợ Tận Tâm',
      'body':
          'Đội ngũ tư vấn chuyên nghiệp, hỗ trợ thiết kế và tư vấn giải pháp xây dựng miễn phí.',
    },
    {
      'title': 'Chính Sách Bảo Hành',
      'body':
          'Bảo hành chất lượng công trình, hỗ trợ bảo trì và sửa chữa khi cần thiết.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Về Công Ty',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.onSurface,
                ),
          ),
          const SizedBox(height: 12),
          Text(
            AppConstants.companyName,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(height: 12),
          Text(
            'Chuyên gia xây dựng công trình dân dụng, công nghiệp, giao thông và hạ tầng kỹ thuật với tiêu chuẩn quốc tế. Chúng tôi cam kết mang đến giải pháp toàn diện, chất lượng cao và đúng tiến độ.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.onSurfaceVariant,
                  height: 1.5,
                ),
          ),
          const SizedBox(height: 24),
          Text(
            'Tại Sao Chọn HAI PHAT IDC?',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.onSurface,
                ),
          ),
          const SizedBox(height: 16),
          ...List.generate(_valueProps.length, (i) {
            final item = _valueProps[i];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${i + 1}'.padLeft(2, '0'),
                      style: const TextStyle(
                        color: AppColors.onPrimary,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title']!,
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.onSurface,
                                  ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item['body']!,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
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
          }),
          const SizedBox(height: 16),
          Text(
            'Mạng Lưới Đối Tác',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.onSurface,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Chúng tôi hợp tác với đối tác uy tín trong và ngoài nước, đảm bảo nguồn lực và tiêu chuẩn thi công cao cho mọi dự án.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.onSurfaceVariant,
                  height: 1.5,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'Cam Kết Chất Lượng',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.onSurface,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Mọi công trình đều tuân thủ quy chuẩn kỹ thuật, được nghiệm thu chặt chẽ và bảo hành theo chính sách của công ty.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.onSurfaceVariant,
                  height: 1.5,
                ),
          ),
        ],
      ),
    );
  }
}
