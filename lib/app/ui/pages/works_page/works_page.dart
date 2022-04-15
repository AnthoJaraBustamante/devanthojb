import 'package:animate_do/animate_do.dart';
import 'package:devanthojb/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class WorksPage extends StatelessWidget {
  const WorksPage({
    Key? key,
    required this.isMobile,
  }) : super(key: key);
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Scrollbar(
        controller: HomeController.scrollController,
        isAlwaysShown: true,
        child: ListView.builder(
          controller: HomeController.scrollController,
          itemCount: buildWidgets(size, 0, isMobile).length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return buildWidgets(size, index, isMobile)[index];
          },
        ),
      ),
    );
  }
}

List<Widget> buildWidgets(Size size, int index, bool isMobile) => [
      AppsMade(
        isMobile: isMobile,
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
        isMobile: isMobile,
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
        isMobile: isMobile,
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
        isMobile: isMobile,
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
        isMobile: isMobile,
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
        isMobile: isMobile,
        size: size,
        index: index,
        title: 'Avanzame App',
        image: '06',
        purpose: 'App for Mining Proyects',
        technologies: const ['Google Maps and Markers', 'Geolocation'],
      ),
      AppsMade(
        isMobile: isMobile,
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
        isMobile: isMobile,
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
    required this.isMobile,
  }) : super(key: key);

  final Size size;
  final String title;
  final String purpose;
  final String image;
  final List<String> technologies;
  final int index;
  final bool isMobile;
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
                ...buildAppsOrder(index, isMobile),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildAppsOrder(int index, bool isMobile) {
    final TextStyle style = TextStyle(fontSize: isMobile ? 20 : 30);
    if (index % 2 == 0) {
      return [
        TextInfoApp(
            isMobile: isMobile,
            size: size,
            title: title,
            style: style,
            purpose: purpose,
            technologies: technologies),
        ImageApp(image: image, size: size),
      ];
    }
    return [
      ImageApp(image: image, size: size),
      SizedBox(width: size.width * 0.1),
      TextInfoApp(
          isMobile: isMobile,
          size: size,
          title: title,
          style: style,
          purpose: purpose,
          technologies: technologies),
    ];
  }
}

class ImageApp extends StatelessWidget {
  const ImageApp({
    Key? key,
    required this.image,
    required this.size,
  }) : super(key: key);

  final String image;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
        child: Material(
      borderRadius: BorderRadius.circular(10),
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      child: Image.asset('assets/$image.jpg', width: size.width * 0.3),
    ));
  }
}

class TextInfoApp extends StatelessWidget {
  const TextInfoApp({
    Key? key,
    required this.size,
    required this.title,
    required this.style,
    required this.purpose,
    required this.technologies,
    required this.isMobile,
  }) : super(key: key);

  final Size size;
  final String title;
  final TextStyle style;
  final String purpose;
  final List<String> technologies;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('$title\n\n', style: TextStyle(fontSize: isMobile ? 30 : 40)),
          Text('Framework: Flutter\n', style: style),
          Text(
            'Description: $purpose\n',
            style: style,
          ),
          Text('Implementations:', style: style),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: technologies.length,
            itemBuilder: (BuildContext context, int index) {
              return (Text(
                ' • ${technologies[index]}',
                style: style,
              ));
            },
          ),
        ],
      ),
    );
  }
}
