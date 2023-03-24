
import 'package:flutter/material.dart';
import 'package:voices_of_animals/components/units/svg_box.dart';

class DirectionSvgAccordionToIndex extends StatelessWidget {
  final int? index;
  final String svg;
  const DirectionSvgAccordionToIndex(
      {super.key, this.index, required this.svg});

  @override
  Widget build(BuildContext context) {
    return index ==
            null // check if the index didn't pass to the class as it be null or passed and have a value
        ? SvgBox.details(svg)
        : index!.isOdd
            ? SvgBox.details(svg)
            : Transform(
                transform: Matrix4.translationValues(
                  MediaQuery.of(context).size.width -
                      40, 
                      //  I subtract 40 from modile width because of Padding from left 20 and right 20,
                      // the width of the Widget to reflect it in its position
                  0.0,
                  0.0,
                )..scale(
                    -1.0,
                    1.0,
                    1.0,
                  ),
                child: SvgBox.details(svg)
              );
  }
}
