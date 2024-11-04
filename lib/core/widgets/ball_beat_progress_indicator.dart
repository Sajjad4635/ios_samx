
import 'package:flutter/material.dart';

import '../tweens/delay_tween.dart';

class BallBeatProgressIndicator extends StatefulWidget {
  const BallBeatProgressIndicator({
    Key? key,
    this.color,
    this.size = 50.0,
    this.itemBuilder,
    this.duration = const Duration(milliseconds: 800),
    this.controller,
  })  : assert(
            !(itemBuilder is IndexedWidgetBuilder && color is Color) &&
                !(itemBuilder == null && color == null),
            'You should specify either a itemBuilder or a color'),
        super(key: key);

  final Color? color;
  final double size;
  final IndexedWidgetBuilder? itemBuilder;
  final Duration duration;
  final AnimationController? controller;

  @override
  _BallBeatProgressIndicatorState createState() =>
      _BallBeatProgressIndicatorState();
}

class _BallBeatProgressIndicatorState extends State<BallBeatProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = (widget.controller ??
        AnimationController(vsync: this, duration: widget.duration))
      ..repeat();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: Size(widget.size * 2, widget.size),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ScaleTransition(
              scale: DelayTween(
                begin: 0.2,
                end: 1,
                delay: 0,
              ).animate(_controller),
              child: SizedBox.square(
                dimension: widget.size * 0.5,
                child: _itemBuilder(0),
              ),
            ),
            ScaleTransition(
              scale: DelayTween(
                begin: 0.2,
                end: 1,
                delay: 0.5,
              ).animate(_controller),
              child: SizedBox.square(
                dimension: widget.size * 0.5,
                child: _itemBuilder(1),
              ),
            ),
            ScaleTransition(
              scale: DelayTween(
                begin: 0.2,
                end: 1,
                delay: 0,
              ).animate(_controller),
              child: SizedBox.square(
                dimension: widget.size * 0.5,
                child: _itemBuilder(2),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemBuilder(int index) {
    return widget.itemBuilder != null
        ? widget.itemBuilder!(context, index)
        : DecoratedBox(
            decoration: BoxDecoration(
              color: widget.color,
              shape: BoxShape.circle,
            ),
          );
  }
}
