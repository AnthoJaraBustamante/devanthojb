import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../controllers/contact_controller.dart';

class ContactPage extends GetView<ContactController> {
  const ContactPage({required this.isMobile, Key? key}) : super(key: key);
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          width: double.infinity,
        ),
        const Expanded(child: SizedBox(height: 50)),
        LinkButton(
          isMobile: isMobile,
          milliseconds: 0,
          icon: 'git',
          onTap: () => _launchURL('https://github.com/AnthoJaraBustamante'),
          hoverColor: Colors.grey,
        ),
        const SizedBox(height: 25),
        LinkButton(
          isMobile: isMobile,
          milliseconds: 200,
          icon: 'linkedin',
          onTap: () => _launchURL(
              'https://www.linkedin.com/in/anthony-josue-jara-bustamante-7a1663130/'),
          hoverColor: Colors.lightBlue,
        ),
        const SizedBox(height: 25),
        LinkButton(
          isMobile: isMobile,
          milliseconds: 500,
          icon: 'wpp',
          onTap: () => _launchURL('https://wa.me/51937386230'),
          hoverColor: Colors.green,
        ),
        const Expanded(child: SizedBox(height: 50)),
      ],
    );
  }

  void _launchURL(String url) async {
    if (!await launch(url)) throw 'Could not launch $url';
  }
}

class LinkButton extends StatelessWidget {
  const LinkButton({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.hoverColor,
    required this.milliseconds,
    required this.isMobile,
  }) : super(key: key);
  final String icon;
  final Color hoverColor;
  final void Function() onTap;
  final int milliseconds;
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Spin(
      delay: Duration(milliseconds: milliseconds),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.antiAlias,
        elevation: 5,
        child: InkWell(
          hoverColor: hoverColor,
          child: Image.asset(
            'assets/$icon.png',
            height: isMobile ? 50 : 150,
            width: isMobile ? 50 : 150,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
