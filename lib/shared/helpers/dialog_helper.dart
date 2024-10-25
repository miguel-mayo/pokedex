import 'package:flutter/material.dart';
import 'package:pokedex/shared/shared.dart';

class DialogHelper {
  static void openDialog(
    BuildContext context,
    String title,
    Widget content, {
    List<Widget>? actions,
    bool barrierDismissible = true,
  }) {
    showDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (_) => AlertDialog(
        title: Text(title, style: context.headlineMedium),
        content: content,
        actions: actions,
      ),
    );
  }

  static Future<dynamic> openFullscreenDialog(
    BuildContext context, {
    required Widget child,
    void Function()? onClosePressed,
  }) {
    return showDialog<dynamic>(
      useSafeArea: false,
      context: context,
      builder: (context) => Dialog.fullscreen(
        backgroundColor: context.colors.surface,
        child: child,
      ),
    );
  }

  static Future<void> openBottomSheet(
    BuildContext context, {
    required Widget child,
    void Function()? onClosePressed,
  }) async {
    return showModalBottomSheet<void>(
      context: context,
      useRootNavigator: true,
      backgroundColor: context.colors.surface,
      elevation: 0,
      scrollControlDisabledMaxHeightRatio: 0.9,
      barrierColor: Colors.black54,
      builder: (context) => child,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
    );
    // }
  }

  static void closeDialog(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }
}

class BottomShetDialogTopDivider extends StatelessWidget {
  const BottomShetDialogTopDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 30,
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class BottomShetScaffold extends StatelessWidget {
  const BottomShetScaffold({
    required this.content,
    this.padding,
    this.expand = true,
    super.key,
  });

  final Widget content;
  final EdgeInsets? padding;
  final bool expand;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: padding ??
            const EdgeInsets.symmetric(
              horizontal: Spacing.m,
              vertical: Spacing.m,
            ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: BottomShetDialogTopDivider()),
            Separator.l,
            if (expand)
              Expanded(
                child: content,
              )
            else
              content,
          ],
        ),
      ),
    );
  }
}
