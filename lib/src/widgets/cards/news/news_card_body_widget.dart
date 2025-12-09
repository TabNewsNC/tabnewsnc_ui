part of 'news_card_widget.dart';

final class _NewsCardBodyWidget extends StatelessWidget with ThemeMixin {
  const _NewsCardBodyWidget({
    required this.title,
    required this.commentCount,
    required this.tabcoinsDebit,
    required this.tabcoinsCredit,
    required this.maxLines,
    required this.height,
  });

  final String title;
  final int commentCount;
  final int tabcoinsDebit;
  final int tabcoinsCredit;
  final int maxLines;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final metrics = getThemeMetrics(context);

    return CardWidget(
      width: .infinity,
      height: height,
      child: Column(
        mainAxisSize: .min,
        spacing: metrics.small,
        crossAxisAlignment: .start,
        children: [
          TextWidget(
            title,
            size: .titleMedium,
            maxLines: maxLines,
          ),
          _NewsCardStatsWidget(
            commentCount: commentCount,
            tabcoinsDebit: tabcoinsDebit,
            tabcoinsCredit: tabcoinsCredit,
          ),
        ],
      ),
    );
  }
}
