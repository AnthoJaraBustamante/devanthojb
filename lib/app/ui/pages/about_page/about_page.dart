import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:devanthojb/app/controllers/home_controller.dart';
import 'package:devanthojb/app/ui/global_widgets/global_button.dart';
import 'package:devanthojb/app/ui/utils/tab_space.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/about_controller.dart';

class AboutPage extends GetView<AboutController> {
  const AboutPage({
    Key? key,
    required this.isMobile,
  }) : super(key: key);
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ZoomIn(
                  child: SizedBox(
                    width: size.width * 0.5,
                    child: AutoSizeText.rich(
                      TextSpan(
                        text: 'Enthusiastic\n',
                        style: TextStyle(fontSize: isMobile ? 25 : 60),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Systems Engineer & Frontend Developer',
                            style: TextStyle(fontSize: isMobile ? 35 : 70),
                          ),
                        ],
                      ),
                      maxLines: 3,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                ZoomIn(
                  delay: const Duration(milliseconds: 300),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: AutoSizeText(
                      '$tabSpace I am a Systems Engineer and Frontend Developer from Peru. I have 2 years of experience in the field of software development. I have worked with different technologies and languages such as Dart, Flutter, Angular, Ionic, Vue, NodeJS, MySQL, MongoDB, etc. I am always looking for new opportunities to learn and grow.',
                      style: TextStyle(fontSize: isMobile ? 20 : 30),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                ZoomIn(
                  delay: const Duration(milliseconds: 500),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: GlobalButton(
                      text: 'CONTACT ME',
                      onPressed: () {
                        final HomeController controller = Get.find();
                        controller.changeContact();
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
