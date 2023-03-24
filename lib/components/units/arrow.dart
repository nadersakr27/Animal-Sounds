import 'package:flutter/material.dart';
import 'package:voices_of_animals/components/constances.dart';

class ArrowBoxAppBar extends StatelessWidget {
  const ArrowBoxAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.withOpacity(0.5),
      child: Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: App.primaryColor,
            ),
          )),
    );
  }
}
