part of 'inventory_bloc.dart';

@immutable
sealed class InventoryEvent {}

class IncrementCoin extends InventoryEvent {}
