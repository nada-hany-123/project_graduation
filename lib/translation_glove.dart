import 'package:flutter/material.dart';
import 'package:gloves_app/custom_elevation_button.dart';


class TranslationGlove extends StatelessWidget {
  const TranslationGlove({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F2F2),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
          )
        ],
        title: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 15),
                child: SizedBox(
                  width: double.infinity,
                  height: 320,
                  child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Image.asset(
                        'assets/images/hand pointing somewhere (1).png',
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      'Turn on your bluetooth to continue.',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevationButton(
                      text: 'Retry',
                      textcolor: Colors.black,
                      bottoncolor: Color(0xffDAE0F1)),
                  CustomElevationButton(
                      text: 'Translate',
                      textcolor: Colors.white,
                      bottoncolor: Color(0xff1D2D44)),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 3.0, bottom: 15,right: 13),
                child: Stack(children: [
                  SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                        )),
                  ),
                  Positioned(
                    left: 210,
                    right: 20,
                    top: 120,
                    bottom: 6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.save),
                        Icon(Icons.share_outlined),
                        Icon(Icons.star_border_purple500_rounded),
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}