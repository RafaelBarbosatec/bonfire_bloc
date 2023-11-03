import 'package:bonfire/bonfire.dart';
import 'package:bonfire_bloc_example/game/components/coin.dart';
import 'package:bonfire_bloc_example/game/components/human.dart';
import 'package:bonfire_bloc_example/game/widgets/game_interface.dart';
import 'package:flutter/material.dart';

class GameWidget extends StatelessWidget {
  const GameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BonfireWidget(
        map: WorldMapByTiled(
          'map.tmj',
          objectsBuilder: {
            'coin': (prop) => Coin(prop.position),
          },
        ),
        overlayBuilderMap: {
          'interface': (context, game) => const CoinInterface(),
        },
        initialActiveOverlays: const [
          'interface',
        ],
        joystick: Joystick(
          keyboardConfig: KeyboardConfig(),
        ),
        player: Human(position: Vector2.all(50)),
        cameraConfig: CameraConfig(
          initialMapZoomFit: InitialMapZoomFitEnum.fitWidth,
        ),
      ),
    );
  }
}
