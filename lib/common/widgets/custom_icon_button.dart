import 'package:flutter/material.dart';
import 'package:whatsapp_messanger/common/extension/custom_theme_extension.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final double? minWidth;
  final double? minHeight;

  const CustomIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    this.iconColor,
    this.iconSize,
    this.minWidth,
    this.minHeight,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        color: iconColor ?? context.theme.greyColor,
      ),
      splashColor: Colors.transparent,
      splashRadius: 22,
      iconSize: iconSize,
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(minHeight: minHeight ?? 40, minWidth: minWidth ?? 40),
    );
  }
}
