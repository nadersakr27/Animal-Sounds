import 'package:flutter/material.dart';
import 'package:voices_of_animals/Data/animal.dart';
import 'package:voices_of_animals/colors.dart';
import 'package:voices_of_animals/components/units/arrow.dart';
import 'package:voices_of_animals/components/units/info_texts_list.dart';
import 'package:voices_of_animals/components/units/reflectable_svg_land.dart';
import 'package:audioplayers/audioplayers.dart';

class Body extends StatefulWidget {
  final Animal animal;
  late final int? index;
  // ignore: prefer_const_constructors_in_immutables
  Body({this.index, super.key, required this.animal});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();
    setAudio();
    player.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlaying = event == PlayerState.playing;
      });
    });
    player.onDurationChanged.listen((event) {
      setState(() {
        duration = event;
      });
    });
    player.onPositionChanged.listen((event) {
      setState(() {
        position = event;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    player.dispose();
  }

  Future setAudio() {
    return player.setReleaseMode(ReleaseMode.loop);
  }

  @override
  Widget build(BuildContext context) {
    final String svg = '${(widget.animal.name ?? "chicken").toLowerCase()}.svg';
    final String sound =
        '${(widget.animal.name ?? "chicken").toLowerCase()}.mp3';
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            const ArrowBoxAppBar(),
            SizedBox(
              height: 240,
              child: Hero(
                tag: svg,
                child: ReflectableSvgAndLand(
                  svg: svg,
                  index: widget.index,
                  boxWidth: double.infinity,
                  landHeight: 105,
                  landWidth: double.infinity,
                  svgHeight: 220,
                  svgWidth: 220,
                  svgBottomPadding: 20,
                  reflectWidth: MediaQuery.of(context).size.width - 40,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...infoTextList(widget.animal),
                  Slider(
                      min: 0,
                      max: duration.inSeconds.toDouble(),
                      value: position.inSeconds.toDouble(),
                      onChanged: (value) async {
                        final position = Duration(seconds: value.toInt());
                        await player.seek(position);
                        await player.resume();
                      }),
                  CircleAvatar(
                    backgroundColor: AppColor.secondaryColor,
                    radius: 35,
                    child: IconButton(
                      icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                      iconSize: 50,
                      color: Colors.white,
                      onPressed: () async {
                        if (isPlaying) {
                          await player.pause();
                        } else {
                          await player.play(AssetSource(sound));
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  )
                ],
              ),
            )
            // to extract info texts from this list
          ],
        ),
      ),
    );
  }
}
