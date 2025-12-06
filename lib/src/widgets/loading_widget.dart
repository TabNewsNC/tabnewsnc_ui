import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tabnewsnc_ui/src/constants/assets_constants.dart';
import 'package:tabnewsnc_ui/src/mixins/theme_mixin.dart';

final class LoadingWidget extends StatelessWidget with ThemeMixin {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = getThemeColors(context);

    return Center(
      child: ColorFiltered(
        colorFilter: .mode(colors.onBackgroundAlt, .srcATop),
        child: Lottie.asset(
          AssetsConstants.loading,
          fit: .cover,
          repeat: true,
          animate: true,
          alignment: .center,
          filterQuality: .high,
          renderCache: .raster,
          backgroundLoading: true,
          package: 'tabnewsnc_ui',
          addRepaintBoundary: true,
          frameRate: const .new(60),
        ),
      ),
    );
  }
}
