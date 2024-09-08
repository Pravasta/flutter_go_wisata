import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_wisata/presentation/home/bloc/history/history_bloc.dart';
import '../widgets/history_card.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  void initState() {
    context.read<HistoryBloc>().add(const HistoryEvent.getHistories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
      ),
      body: BlocBuilder<HistoryBloc, HistoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(child: Text('No Data'));
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            success: (histories) {
              if (histories.isEmpty) {
                return const Center(
                  child: Text('History Empty'),
                );
              }

              return ListView(
                padding: const EdgeInsets.all(16.0),
                children: List.generate(
                  histories.length,
                  (index) => HistoryCard(item: histories[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
