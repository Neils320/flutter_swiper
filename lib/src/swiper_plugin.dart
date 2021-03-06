import 'package:flutter/widgets.dart';
import 'swiper_controller.dart';

/// plugin to display swiper components
///
abstract class SwiperPlugin {
  const SwiperPlugin();

  Widget build(BuildContext context, SwiperPluginConfig config);
}

class SwiperPluginConfig {
  final int activeIndex;
  final int itemCount;
  final Axis scrollDirection;
  final bool loop;
  final SwiperController controller;

  const SwiperPluginConfig(
      {this.activeIndex,
      this.itemCount,
      this.scrollDirection,
      this.controller,
      this.loop})
      : assert(scrollDirection != null),
        assert(controller != null);
}

class SwiperPluginView extends StatelessWidget {
  final SwiperPlugin plugin;
  final SwiperPluginConfig config;

  const SwiperPluginView(this.plugin, this.config);

  @override
  Widget build(BuildContext context) {
    return plugin.build(context, config);
  }
}
