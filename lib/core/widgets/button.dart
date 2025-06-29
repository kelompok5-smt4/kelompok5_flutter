import 'package:flutter/material.dart';
import 'package:kelompok_5/core/constant/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final IconData? icon;
  final double? iconSize;
  final MainAxisAlignment? textAlign;
  const MyButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.iconSize,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.secondary,
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: textAlign ?? MainAxisAlignment.center,
        children: [
          Text(text, style: TextStyle(fontSize: 16, color: Colors.white)),
          const SizedBox(width: 8),
          icon == null
              ? const SizedBox.shrink()
              : Icon(
                  icon ?? Icons.arrow_forward,
                  color: Colors.white,
                  size: iconSize ?? 24,
                ),
        ],
      ),
    );
  }
}
