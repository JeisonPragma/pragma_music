import 'package:flutter/material.dart';
import 'package:pragma_music/constans/colors/palette.dart';
import 'package:pragma_music/ui/componets/base_ui.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BaseUI(
        appBar: true,
        appTitle: 'Pragma',
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ' Hola, Jeison',
                    style: TextStyle(color: Palette.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    ' ¿Que quieres escuchar hoy?',
                    style: TextStyle(color: Palette.white, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Palette.gray,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        Expanded(child: TextField())
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: size.width,
                    height: size.height * 0.7,
                    child: ListView.builder(
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return SongItem();
                        }),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * 0.8,
                      height: size.height * 0.15,
                      decoration: BoxDecoration(
                          color: Palette.gray,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )),
                      padding: const EdgeInsets.only(left: 2, top: 2, right: 2),
                      child: Container(
                        width: size.width * 0.9,
                        height: size.height * 0.15,
                        decoration: BoxDecoration(
                            color: Palette.primary,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            )),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        child: Column(
                          children: [
                            const Text(
                              'La canción de hoy suena súper bien',
                              style: TextStyle(
                                  color: Palette.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            LinearProgressIndicator(
                              backgroundColor: Palette.gray,
                              color: Palette.secondary,
                              value: 0.3,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '15:20',
                                  style: TextStyle(color: Palette.white),
                                ),
                                Text(
                                  '15:20',
                                  style: TextStyle(color: Palette.white),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Palette.white,
                                ),
                                Icon(
                                  Icons.question_answer,
                                  color: Palette.white,
                                ),
                                Icon(
                                  Icons.play_circle,
                                  color: Palette.secondary,
                                  size: 30,
                                ),
                                Icon(
                                  Icons.play_for_work,
                                  color: Palette.white,
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Palette.white,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class SongItem extends StatelessWidget {
  const SongItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width * 0.9,
          height: 80,
          decoration: BoxDecoration(
              color: Palette.gray, borderRadius: BorderRadius.circular(20)),
          padding: const EdgeInsets.all(1),
          child: Container(
            width: size.width * 0.9,
            height: 80,
            decoration: BoxDecoration(
                color: Palette.dark, borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: Stack(
                    children: [
                      Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Palette.gray,
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            width: 60,
                            height: 60,
                            child: Image.asset(
                              'assets/images/logo_pragma.png',
                              fit: BoxFit.fitHeight,
                            ),
                          )),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Icon(
                            Icons.favorite,
                            color: Palette.white,
                          )),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Adele',
                      style: TextStyle(color: Palette.white, fontSize: 18),
                    ),
                    Text(
                      'by Richard Mile',
                      style: TextStyle(color: Palette.white, fontSize: 16),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Palette.secondary,
                  child: Icon(
                    Icons.audiotrack,
                    color: Palette.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
