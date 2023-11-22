# bonfire_bloc 🔥🧱

Inspired by `flame_bloc`, `bonfire_bloc` offers a simple and natural way (similar to `flutter_bloc`) to use blocs and
cubits inside a `Bonfire` game. 

## Installing

Simply run:

```bash

flutter pub add bonfire_bloc
flutter pub add bonfire
flutter pub add flutter_bloc

```

Or add custom versions in your `pubspec.yaml`:

```yaml

  bonfire: ^3...
  flutter_bloc: ^8...

```

## How to use

Lets assume we have a bloc that handles player inventory. First, we need to make it available to our entire game.

We can do that by using `BlocProvider` or `MultiBlocProvider` of the `flutter_bloc`:

```dart
return BlocProvider(
    create: (context) => InventoryBloc(),
    child: BonfireWidget(
        ...
    )
);
```

 Using the bloc at the component level can be done with two approaches:

1) Listening to state changes by using `BonfireBlocListenable` mixin:

```dart
class Player extends SimplePLayer
  with BonfireBlocListenable<PlayerInventoryBloc, PlayerInventoryState> {

  @override
  void onNewState(state) {
    updateGear(state);
  }
}
```

2) Reading the values by using `BonfireBlocReader` mixin:


```dart
class Coin extends GameDecoration
  with BonfireBlocReader<PlayerInventoryBloc> {

  void takeHit() {
    bloc.add(const IncrementCoin());
  }
}
```

or with `context.read`:

```dart
class Coin extends GameDecoration{

  void takeHit() {
    context.read<PlayerInventoryBloc>().add(const IncrementCoin());
  }
}
```

Note that one limitation of the mixin is that it can access only a single bloc.
