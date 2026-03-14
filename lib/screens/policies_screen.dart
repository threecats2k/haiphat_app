import 'package:flutter/material.dart';
import '../core/theme/app_colors.dart';

class PoliciesScreen extends StatelessWidget {
  const PoliciesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SectionTitle(title: 'Chính Sách Bảo Hành'),
          const SizedBox(height: 8),
          _Paragraph(
            'Công ty Cổ phần Đầu tư Phát triển và Xây dựng Hải Phát cam kết bảo hành chất lượng công trình cho khách hàng.',
          ),
          _Bullet('Nội thất: 12 tháng kể từ ngày giao hàng'),
          _Bullet('Hàng hóa nhập khẩu: Theo chính sách nhà sản xuất (tối thiểu 6 tháng)'),
          _Bullet('Dịch vụ thương mại: Đảm bảo chất lượng hàng hóa theo hợp đồng'),
          const SizedBox(height: 20),
          _SectionTitle(title: 'Phạm Vi Bảo Hành'),
          _Bullet('Lỗi hoàn thiện, vận chuyển, chất liệu, sản xuất'),
          _Bullet('Sửa chữa miễn phí trong 3-5 ngày hoặc đổi mới nếu không thể sửa'),
          const SizedBox(height: 20),
          _SectionTitle(title: 'Chính Sách Giao Hàng'),
          _Paragraph('Thời gian giao hàng phụ thuộc loại dịch vụ và nguồn gốc hàng hóa:'),
          _Bullet('Hàng có sẵn trong kho: 3-5 ngày làm việc'),
          _Bullet('Hàng nhập khẩu: 15-30 ngày làm việc'),
          _Bullet('Hàng đặt theo yêu cầu: 20-45 ngày làm việc (theo thỏa thuận)'),
          _Paragraph(
            'Thời gian tính sau khi khách hàng xác nhận đơn và thanh toán đặt cọc (30-50% giá trị hợp đồng).',
          ),
          const SizedBox(height: 12),
          _Paragraph('Phương thức: Nhận tại kho, giao hàng tận nơi (miễn phí nội thành Hà Nội), vận chuyển tỉnh theo đơn vị vận chuyển.'),
          const SizedBox(height: 20),
          _SectionTitle(title: 'Quy Trình Giao Hàng'),
          _Bullet('Xác nhận địa chỉ và thời gian với khách hàng'),
          _Bullet('Thông báo trước 1-2 ngày khi sẵn sàng giao'),
          _Bullet('Thanh toán phần còn lại (nếu có)'),
          _Bullet('Nghiệm thu: kiểm tra số lượng, chất lượng và ký nghiệm thu'),
          _Bullet('Giao hàng đúng địa chỉ và thời gian đã hẹn'),
          const SizedBox(height: 20),
          _SectionTitle(title: 'Chính Sách Đổi Trả'),
          _Paragraph('Điều kiện đổi trả: Hư hỏng do vận chuyển, sai số lượng/mẫu/màu/kích thước, lỗi sản xuất.'),
          _Bullet('Đổi do lỗi: trong thời hạn bảo hành'),
          _Bullet('Đổi màu/kích thước/mẫu: trong vòng 7 ngày kể từ ngày nhận hàng'),
          _Paragraph('Sản phẩm đổi trả phải còn hóa đơn, nguyên vẹn, đầy đủ phụ kiện.'),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.primary,
          ),
    );
  }
}

class _Paragraph extends StatelessWidget {
  const _Paragraph(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.onSurfaceVariant,
              height: 1.5,
            ),
      ),
    );
  }
}

class _Bullet extends StatelessWidget {
  const _Bullet(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.onSurfaceVariant,
                    height: 1.4,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
