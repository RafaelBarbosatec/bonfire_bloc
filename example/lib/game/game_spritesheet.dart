import 'package:bonfire/bonfire.dart';

class GameSpriteSheet {
  static final Vector2 textureSize = Vector2.all(24);
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        'player.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.1,
          textureSize: textureSize,
        ),
      );

  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
        'player.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          texturePosition: Vector2(0, 24),
          textureSize: textureSize,
        ),
      );

  static Future<SpriteAnimation> get coin => SpriteAnimation.load(
        'coin.png',
        SpriteAnimationData.sequenced(
          amount: 5,
          stepTime: 0.1,
          textureSize: Vector2.all(16),
        ),
      );
}