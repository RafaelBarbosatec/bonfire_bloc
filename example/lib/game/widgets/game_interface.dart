import 'package:bonfire_bloc_example/bloc/inventory_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoinInterface extends StatelessWidget {
  const CoinInterface({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InventoryBloc, InventoryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            'Coin: ${state.coin}',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
