import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:tabnewsnc_engine/tabnewsnc_engine.dart';
import 'package:tabnewsnc_ui/src/mixins/date_time_mixin.dart';
import 'package:tabnewsnc_ui/src/mixins/theme_mixin.dart';
import 'package:tabnewsnc_ui/src/widgets/cards/card_widget.dart';
import 'package:tabnewsnc_ui/src/widgets/gesture_widget.dart';
import 'package:tabnewsnc_ui/src/widgets/icon_widget.dart';
import 'package:tabnewsnc_ui/src/widgets/text_widget.dart';

part 'news_card_body_widget.dart';
part 'news_card_header_widget.dart';
part 'news_card_stats_widget.dart';

final class NewsCardWidget extends StatelessWidget with ThemeMixin {
  const NewsCardWidget({
    required this.news,
    required this.maxLines,
    this.height,
    this.onPressed,
    super.key,
  });

  final NewsEntity news;
  final int maxLines;
  final double? height;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final metrics = getThemeMetrics(context);

    return GestureWidget(
      onPressed: onPressed,
      enabled: onPressed != null,
      child: Column(
        mainAxisSize: .min,
        spacing: metrics.small,
        crossAxisAlignment: .start,
        children: [
          _NewsCardHeaderWidget(
            user: news.ownerUsername,
            publishedAt: news.publishedAt,
          ),
          _NewsCardBodyWidget(
            height: height,
            maxLines: maxLines,
            title: news.title ?? '-',
            commentCount: news.commentCount,
            tabcoinsDebit: news.tabcoinsDebit,
            tabcoinsCredit: news.tabcoinsCredit,
          ),
        ],
      ),
    );
  }
}
