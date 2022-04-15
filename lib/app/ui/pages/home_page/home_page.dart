import 'package:devanthojb/app/ui/global_widgets/adaptive_page_builder.dart';
import 'package:devanthojb/app/ui/pages/about_page/about_page.dart';
import 'package:devanthojb/app/ui/pages/contact_page/contact_page.dart';
import 'package:devanthojb/app/ui/pages/home_page/local_widgets/top_info.dart';
import 'package:devanthojb/app/ui/pages/works_page/works_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              children: <Widget>[
                GetBuilder<HomeController>(
                  id: 'top_info',
                  builder: (_) {
                    return TopInfo(
                      goToAbout: () => _.changeAbout(),
                      goToWorks: () => _.changeWorks(),
                      goToContact: () => _.changeContact(),
                    );
                  },
                ),
                const Divider(),
              ],
            ),
          ),
          Expanded(
            child: GetBuilder<HomeController>(
              id: 'adaptive_page_builder',
              builder: (controller) {
                return AdaptivePageBuilder(
                  builder: (_, type) {
                    final bool isMobile = type == DeviceTypeEnum.mobile;
                    return PageView(
                      physics: const BouncingScrollPhysics(),
                      controller: controller.pageViewCtrl,
                      scrollDirection: Axis.vertical,
                      children: [
                        AboutPage(isMobile: isMobile),
                        WorksPage(isMobile: isMobile),
                        ContactPage(isMobile: isMobile),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
