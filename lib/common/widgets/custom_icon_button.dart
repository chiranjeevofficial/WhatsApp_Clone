import 'package:flutter/material.dart';
import 'package:whatsapp_messanger/common/extension/custom_theme_extension.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final double? minWidth;
  final double? minHeight;
  final Color? background;
  final BoxBorder? border;

  const CustomIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.iconColor,
    this.iconSize,
    this.minWidth,
    this.minHeight,
    this.background,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: background,
        shape: BoxShape.circle,
        border: border,
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(
          icon,
          color: iconColor ?? context.theme.greyColor,
        ),
        splashColor: Colors.transparent,
        splashRadius: (minWidth ?? 40) - 25,
        iconSize: iconSize,
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(
          minHeight: minHeight ?? 45,
          minWidth: minWidth ?? 45,
        ),
      ),
    );
  }
}
