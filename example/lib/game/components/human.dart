import 'package:bonfire/bonfire.dart';
import 'package:bonfire_bloc/bonfire_bloc.dart';
import 'package:bonfire_bloc_example/bloc/inventory_bloc.dart';
import 'package:bonfire_bloc_example/game/game_spritesheet.dart';
import 'package:flutter/foundation.dart';

class Human extends SimplePlayer
    with BonfireBlocListenable<InventoryBloc, InventoryState> {
  Human({required super.position})
      : super(
          size: Vector2.all(32),
          speed: 80,
          animation: SimpleDirectionAnimation(
            idleRight: GameSpriteSheet.idleRight,
            runRight: GameSpriteSheet.runRight,
          ),
        );

  @override
  Future<void> onLoad() {
    add(RectangleHitbox(size: size));
    return super.onLoad();
  }

  @override
  void onNewState(InventoryState state) {
    if (kDebugMode) {
      print('onNewState: ${state.coin}');
    }
    super.onNewState(state);
  }

  @override
  void onInitialState(InventoryState state) {
    if (kDebugMode) {
      print('onInitialState: ${state.coin}');
    }
    super.onInitialState(state);
  }
}
