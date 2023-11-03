import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'inventory_event.dart';
part 'inventory_state.dart';

class InventoryBloc extends Bloc<InventoryEvent, InventoryState> {
  InventoryBloc() : super(const InventoryState()) {
    on<IncrementCoin>(_onIncrementCoin);
  }

  FutureOr<void> _onIncrementCoin(
    IncrementCoin event,
    Emitter<InventoryState> emit,
  ) {
    emit(state.copyWith(coin: state.coin + 1));
  }
}
