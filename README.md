# bonfire_bloc 🔥🧱

`bonfire_bloc` offers a simple and natural (as in similar to `flutter_bloc`) way to use blocs and
cubits inside a `Bonfire`. It's inspired in `flame_bloc`

## Intalling

Adds in yout `pubspec.yml`:

```yml

  bonfire: ^3...
  flutter_bloc: ^8...

```


## How to use

Lets assume we have a bloc that handles player inventory, first we need to make it available to our
game.

We can do that by using `BlocProvider` or `MultiBlocProvider` of the `flutter_bloc`:

```dart
return BlocProvider(
    create: (context) => InventoryBloc(),
    child: BonfireWidget(
        ...
    )
);
```

Listening to states changes at the component level can be done with two approaches:

By using `BonfireBlocListener` component:


```dart
class Player extends SimplePLayer
  with BonfireBlocListenable<PlayerInventoryBloc, PlayerInventoryState> {

  @override
  void onNewState(state) {
    updateGear(state);
  }
}
```

If all your component need is to simply access a bloc, the `BonfireBlocReader` mixin can be applied
to a component:


```dart
class Player extends PositionComponent
  with FlameBlocReader<PlayerStatsBloc> {

  void takeHit() {
    bloc.add(const PlayerDamaged());
  }
}
```

or

```dart
class Player extends PositionComponent{

  void takeHit() {
    context.read<PlayerStatsBloc>().add(const PlayerDamaged());
  }
}
```

Note that one limitation of the mixin is that it can access only a single bloc.

