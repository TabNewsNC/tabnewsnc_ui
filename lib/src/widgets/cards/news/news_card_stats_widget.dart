part of 'news_card_widget.dart';

class _NewsCardStatsWidget extends StatelessWidget with ThemeMixin {
  const _NewsCardStatsWidget({
    required this.commentCount,
    required this.tabcoinsDebit,
    required this.tabcoinsCredit,
  });

  final int commentCount;
  final int tabcoinsDebit;
  final int tabcoinsCredit;

  @override
  Widget build(BuildContext context) {
    final (colors, metrics) = getTheme(context);

    return Row(
      spacing: metrics.medium,
      children: [
        IconWidget(
          Ionicons.arrow_up_outline,
          color: colors.onSurfaceAlt,
          label: tabcoinsCredit.toString(),
        ),
        IconWidget(
          Ionicons.arrow_down_outline,
          color: colors.onSurfaceAlt,
          label: tabcoinsDebit.toString(),
        ),
        IconWidget(
          Ionicons.chatbubble_outline,
          color: colors.onSurfaceAlt,
          label: commentCount.toString(),
        ),
      ],
    );
  }
}
