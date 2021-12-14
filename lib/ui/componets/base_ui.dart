import 'package:flutter/material.dart';
import 'package:pragma_music/constans/colors/palette.dart';

class BaseUI extends StatelessWidget {
  const BaseUI({Key? key,required this.body, this.appTitle, this.appBar = false}) : super(key: key);

  final Widget? body;
  final String? appTitle;
  final bool? appBar;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.dark,
      appBar: appBar == false ? null : AppBar(
        title: Text(appTitle.toString(), style: TextStyle(color: Palette.white),),
        backgroundColor: Palette.dark,
        shadowColor: Colors.transparent,
        actions: [
          Icon(Icons.favorite, color: Palette.white,),
          SizedBox(width: 10,),
          Icon(Icons.assistant_direction_rounded, color: Palette.white,),
          SizedBox(width: 20,),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: size.width,
                margin: const EdgeInsets.symmetric(horizontal: 0),
                padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                    color: Palette.primary,
                    borderRadius: BorderRadius.circular(50)),
                child: body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
