import 'package:flutter/material.dart';


class AnimatedCrossFadeWidget extends StatefulWidget {
  @override
  _AnimatedCrossFadeWidgetState createState() => _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _crossFadeStateShowFirst = true;
  _crossFade() {
    setState(() {
      _crossFadeStateShowFirst = _crossFadeStateShowFirst ? false : true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            AnimatedCrossFade(
              duration: Duration(microseconds: 500),
              sizeCurve: Curves.bounceOut,
              crossFadeState: _crossFadeStateShowFirst? CrossFadeState.showFirst: CrossFadeState.showSecond,
            ),
          ],
        )
      ],
    );
  }
}