// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'inventory_bloc.dart';

@immutable
class InventoryState {
  final int coin;

  const InventoryState({this.coin = 0});

  InventoryState copyWith({
    int? coin,
  }) {
    return InventoryState(
      coin: coin ?? this.coin,
    );
  }
}
