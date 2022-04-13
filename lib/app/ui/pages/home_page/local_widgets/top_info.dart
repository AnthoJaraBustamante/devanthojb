import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:devanthojb/app/ui/global_widgets/adaptive_page_builder.dart';
import 'package:devanthojb/app/ui/theme/color_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../main.dart';

class TopInfo extends StatelessWidget {
  const TopInfo({
    Key? key,
    required this.goToAbout,
    required this.goToWorks,
    required this.goToContact,
  }) : super(key: key);
  final void Function() goToAbout;
  final void Function() goToWorks;
  final void Function() goToContact;

  @override
  Widget build(BuildContext context) {
    return AdaptivePageBuilder(
      builder: (_, type) {
        bool isMobile = type == DeviceTypeEnum.mobile;
        if (isMobile) {
          return Column(
            children: [
              Row(
                children: <Widget>[
                  ZoomIn(
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                  ),
                  const SizedBox(width: 30),
                  const Expanded(
                      child: TitleButton(text: 'Anthony Jara Bustamante')),
                  const SizedBox(height: 30, child: VerticalDivider()),
                  const Expanded(
                      child: TitleButton(
                    text: 'Systems Engineer / Frontend Developer',
                    textAlign: TextAlign.right,
                  )),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: NavButtons(
                      active: prefs.about,
                      text: 'About',
                      onPressed: goToAbout,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: NavButtons(
                      active: prefs.works,
                      text: 'Works',
                      onPressed: goToWorks,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(width: 10),
                  Expanded(
                    child: NavButtons(
                      active: prefs.contact,
                      text: 'Contact',
                      onPressed: goToContact,
                    ),
                  ),
                ],
              )
            ],
          );
        } else {
          return Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              const SizedBox(width: 30),
              const TitleButton(text: 'Anthony Jara Bustamante'),
              const SizedBox(width: 30),
              const SizedBox(height: 30, child: VerticalDivider()),
              const SizedBox(width: 30),
              const TitleButton(text: 'Systems Engineer / Frontend Developer'),
              const Expanded(child: SizedBox()),
              NavButtons(
                active: prefs.about,
                text: 'About',
                onPressed: goToAbout,
              ),
              const SizedBox(width: 5),
              NavButtons(
                active: prefs.works,
                text: 'Works',
                onPressed: goToWorks,
              ),
              const SizedBox(width: 5),
              NavButtons(
                active: prefs.contact,
                text: 'Contact',
                onPressed: goToContact,
              ),
            ],
          );
        }
      },
    );
  }
}

class TitleButton extends StatelessWidget {
  const TitleButton({
    Key? key,
    required this.text,
    this.textAlign,
  }) : super(key: key);
  final String text;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return AdaptivePageBuilder(builder: (_, type) {
      bool isMobile = type == DeviceTypeEnum.mobile;
      return ZoomIn(
        child: AutoSizeText(
          text,
          maxLines: 4,
          textAlign: textAlign,
          style: TextStyle(
            fontSize: isMobile ? 20 : 21,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    });
  }
}

class NavButtons extends StatelessWidget {
  const NavButtons({
    Key? key,
    required this.text,
    this.onPressed,
    required this.active,
  }) : super(key: key);
  final String text;
  final void Function()? onPressed;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return AdaptivePageBuilder(builder: (_, type) {
      bool isMobile = type == DeviceTypeEnum.mobile;
      return ZoomIn(
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: active ? ColorTheme.primary : Colors.white,
          ),
          child: Text(
            text,
            maxLines: 1,
            style: TextStyle(
              fontSize: isMobile ? 20 : 21,
              color: active ? Colors.white : ColorTheme.primary,
            ),
          ),
        ),
      );
    });
  }
}
