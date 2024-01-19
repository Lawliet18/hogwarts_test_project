import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hogwarts_test_project/core/extensions/theme_extension.dart';

class DefaultContainer extends StatelessWidget {
  static const double height = 100.0;

  final String text;
  final VoidCallback? onTap;
  final String? title;
  final String? icon;

  const DefaultContainer.title({
    super.key,
    required this.text,
    required this.title,
    this.onTap,
    this.icon,
  });

  const DefaultContainer.icon({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
    this.title,
  });

  const DefaultContainer.text({
    super.key,
    required this.text,
    this.onTap,
    this.icon,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = context.theme;
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Ink(
          height: 100.0,
          width: double.infinity,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondaryContainer,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null) ...[
                SvgPicture.asset(icon!),
                const SizedBox(height: 10.0),
              ] else if (title != null) ...[
                Text(title!),
                const SizedBox(height: 10.0),
              ],
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
