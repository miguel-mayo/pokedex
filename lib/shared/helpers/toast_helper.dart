import 'package:flutter/material.dart';
import 'package:pokedex/shared/shared.dart';

class ToastHelper {
  static void showError(
    BuildContext context, {
    required String title,
    String? message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: context.colors.error,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BorderRadiusSize.l),
        ),
        showCloseIcon: true,
        content: SnackbarContent.error(
          title: title,
          info: message,
        ),
      ),
    );
  }

  static void showInfo(
    BuildContext context, {
    required String title,
    String? message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        closeIconColor: context.colors.onSurface,
        backgroundColor: context.colors.surfaceContainerHighest,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BorderRadiusSize.l),
        ),
        showCloseIcon: true,
        content: SnackbarContent.info(
          title: title,
          info: message,
        ),
      ),
    );
  }
}

class SnackbarContent extends StatelessWidget {
  const SnackbarContent({
    required this.title,
    required this.error,
    this.info,
    super.key,
  });

  const SnackbarContent.error({
    required this.title,
    this.info,
    super.key,
  }) : error = true;

  const SnackbarContent.info({
    required this.title,
    this.info,
    super.key,
  }) : error = false;

  final String title;
  final String? info;
  final bool error;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (error)
            Icon(
              Icons.warning_amber_rounded,
              color: context.colors.onSurface,
              size: 24,
            )
          else
            Icon(
              Icons.info_outline,
              color: context.colors.onSurface,
              size: 24,
            ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: context.bodyMedium!.copyWith(
                    color: context.colors.onSurface,
                  ),
                ),
                if (info != null) ...{
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    info!,
                    style: context.labelSmall!.copyWith(
                        color: context.colors.onSurface.withOpacity(0.6)),
                  ),
                },
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}
