import 'package:bonfire/bonfire.dart';
import 'package:bonfire_bloc/bonfire_bloc.dart';
import 'package:bonfire_bloc_example/bloc/inventory_bloc.dart';
import 'package:bonfire_bloc_example/game/components/human.dart';
import 'package:bonfire_bloc_example/game/game_spritesheet.dart';

class Coin extends GameDecoration
    with Sensor<Human>, BonfireBlocReader<InventoryBloc> {
  Coin(Vector2 position)
      : super.withAnimation(
          animation: GameSpriteSheet.coin,
          size: Vector2.all(16),
          position: position,
        );

  @override
  void onContact(Human component) {
    bloc.add(IncrementCoin());
    removeFromParent();
  }
}
