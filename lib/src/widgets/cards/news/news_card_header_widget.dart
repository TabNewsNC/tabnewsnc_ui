part of 'news_card_widget.dart';

final class _NewsCardHeaderWidget extends StatelessWidget
    with ThemeMixin, DateTimeMixin {
  const _NewsCardHeaderWidget({
    required this.user,
    required this.publishedAt,
  });

  final String user;
  final DateTime publishedAt;

  @override
  Widget build(BuildContext context) {
    final colors = getThemeColors(context);

    return Row(
      mainAxisSize: .min,
      children: [
        TextWidget(user, color: colors.primary),
        TextWidget(' • ', color: colors.onBackgroundAlt),
        Flexible(
          child: TextWidget(
            toRelativeTime(publishedAt),
            color: colors.onBackgroundAlt,
          ),
        ),
      ],
    );
  }
}
