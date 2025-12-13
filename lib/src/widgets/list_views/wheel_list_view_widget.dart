import 'package:flutter/material.dart';
import 'package:tabnewsnc_ui/src/mixins/theme_mixin.dart';
import 'package:tabnewsnc_ui/src/widgets/list_views/list_view_widget.dart';
import 'package:tabnewsnc_ui/src/widgets/loading_widget.dart';

final class WheelListViewWidget extends StatelessWidget with ThemeMixin {
  const WheelListViewWidget({
    required this.itemCount,
    required this.itemExtent,
    required this.itemBuilder,
    this.loading = false,
    this.controller,
    super.key,
  });

  final int itemCount;
  final double itemExtent;
  final ListViewItemBuilder itemBuilder;
  final bool loading;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    final metrics = getThemeMetrics(context);

    if (loading) return const Center(child: LoadingWidget());

    return Padding(
      padding: .symmetric(horizontal: metrics.xLarge),
      child: ListWheelScrollView.useDelegate(
        useMagnifier: true,
        itemExtent: itemExtent,
        clipBehavior: .none,
        controller: controller,
        childDelegate: ListWheelChildBuilderDelegate(
          builder: itemBuilder,
          childCount: itemCount,
        ),
      ),
    );
  }
}
