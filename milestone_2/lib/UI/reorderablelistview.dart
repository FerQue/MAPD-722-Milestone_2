import 'package:flutter/material.dart';

class ReorListView extends StatefulWidget {
  const ReorListView({super.key, required List children, required Null Function(int oldIndex, int newIndex) onReorder});

  @override
  State<ReorListView> createState() => _ReorListViewState();
}

class _ReorListViewState extends State<ReorListView> {
  final List<int> items = List<int>.generate(30, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return ReorListView(
      children: List.generate(
        items.length,
        (index) => ListTile(
          key: Key('$index'),
          tileColor: items[index].isOdd ? Colors.white12 : Colors.white30,
          title: Text('Item ${items[index]}'),
          trailing: const Icon(Icons.drag_handle_sharp),
        ),
      ),
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
            final int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          }
        });
      },
    );
  }
}