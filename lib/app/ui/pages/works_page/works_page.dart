import 'package:animate_do/animate_do.dart';
import 'package:devanthojb/app/ui/global_widgets/adaptive_page_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/works_controller.dart';

class WorksPage extends GetView<WorksController> {
  const WorksPage({
    Key? key,
    required this.type,
  }) : super(key: key);
  final DeviceTypeEnum type;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ListView.builder(
        itemCount: buildWidgets(size, 0).length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return buildWidgets(size, index)[index];
        },
      ),
    );
  }
}

List<Widget> buildWidgets(Size size, int index) => [
      AppsMade(
        size: size,
        index: index,
        title: 'Gas to You',
        image: '01',
        purpose: 'Fuel Delivery App',
        technologies: const [
          'Sign in with Facebook',
          'Sign in with Google',
          'Stripe',
          'Pusher',
          'Chat',
          'Google Maps',
        ],
      ),
      AppsMade(
        size: size,
        index: index,
        title: 'Zurviz',
        image: '02',
        purpose: 'Video Streaming and Sessions App',
        technologies: const [
          'Jitsi Meet',
          'Cloudflare',
          'Sign in with Facebook',
          'Sign in with Google',
          'Stripe',
          'Paypal',
          'Conekta',
          'Chat',
        ],
      ),
      AppsMade(
        size: size,
        index: index,
        title: 'Vetko',
        image: '03',
        purpose: 'Vet Clinic App',
        technologies: const [
          'Google Maps',
          'Sign in with Facebook',
          'Sign in with Google',
          'Agora',
        ],
      ),
      AppsMade(
        size: size,
        index: index,
        title: 'Auditoria App',
        image: '04',
        purpose: 'App for Audit and Control of Health Center',
        technologies: const [
          'Excel Syncfusion',
        ],
      ),
      AppsMade(
        size: size,
        index: index,
        title: 'Instadosis',
        image: '05',
        purpose: 'App for medication control',
        technologies: const [
          'Rest API',
        ],
      ),
      AppsMade(
        size: size,
        index: index,
        title: 'Avanzame App',
        image: '06',
        purpose: 'App for Mining Proyects',
        technologies: const ['Google Maps and Markers', 'Geolocation'],
      ),
      AppsMade(
        size: size,
        index: index,
        title: 'Grupo Colitas App',
        image: '07',
        purpose: 'App for the management of Grupo Colitas',
        technologies: const [
          'Sign in with Facebook',
          'Sign in with Google',
        ],
      ),
      AppsMade(
        size: size,
        index: index,
        title: 'PatiPets',
        image: '08',
        purpose: 'App that looks for veterinary services',
        technologies: const [
          'Sign in with Facebook',
          'Sign in with Google',
          'Google Maps',
        ],
      ),
    ];

class AppsMade extends StatelessWidget {
  const AppsMade({
    Key? key,
    required this.size,
    required this.technologies,
    required this.title,
    required this.purpose,
    required this.image,
    required this.index,
  }) : super(key: key);

  final Size size;
  final String title;
  final String purpose;
  final String image;
  final List<String> technologies;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: SlideInRight(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: double.infinity),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...buildAppsOrder(index),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildAppsOrder(int index) {
    if (index % 2 == 0) {
      return [
        SizedBox(
          width: size.width * 0.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('$title\n\n', style: const TextStyle(fontSize: 30)),
              const Text('Framework: Flutter\n'),
              Text('Description: $purpose\n'),
              const Text('Tecnologies:'),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: technologies.length,
                itemBuilder: (BuildContext context, int index) {
                  return (Text(' • ${technologies[index]}'));
                },
              ),
            ],
          ),
        ),
        ZoomIn(
            child: Material(
          borderRadius: BorderRadius.circular(10),
          clipBehavior: Clip.antiAlias,
          elevation: 10,
          child: Image.asset('assets/$image.jpg', width: size.width * 0.4),
        )),
      ];
    }
    return [
      ZoomIn(
        child: Material(
          borderRadius: BorderRadius.circular(10),
          clipBehavior: Clip.antiAlias,
          elevation: 10,
          child: Image.asset('assets/$image.jpg', width: size.width * 0.4),
        ),
      ),
      SizedBox(width: size.width * 0.1),
      SizedBox(
        width: size.width * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('$title\n\n', style: const TextStyle(fontSize: 30)),
            const Text('Framework: Flutter\n'),
            Text('Description: $purpose\n'),
            const Text('Tecnologies:'),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: technologies.length,
              itemBuilder: (BuildContext context, int index) {
                return (Text(' • ${technologies[index]}'));
              },
            ),
          ],
        ),
      ),
    ];
  }
}
