import 'package:bonfire/bonfire.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Adds [Bloc] access to a [GameComponent].
///
/// Useful for components that needs to only read
/// a bloc current state or to trigger an event on it
mixin BonfireBlocReader<B extends BlocBase> on GameComponent {
  late B _bloc;

  /// Returns the bloc that this component is reading from
  B get bloc => _bloc;

  @override
  void onMount() {
    _bloc = BlocProvider.of(context);
    super.onMount();
  }
}
