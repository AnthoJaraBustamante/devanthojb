import 'package:auto_size_text/auto_size_text.dart';
import 'package:devanthojb/app/ui/global_widgets/adaptive_page_builder.dart';
import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return AdaptivePageBuilder(builder: (_, type) {
      bool isMobile = type == DeviceTypeEnum.mobile;
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.grey,
          onPrimary: Colors.white, // Text Color (Foreground color)
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: AutoSizeText(
          text,
          style: TextStyle(fontSize: isMobile ? 20 : 30),
          textAlign: TextAlign.justify,
        ),
        onPressed: onPressed,
      );
    });
  }
}
