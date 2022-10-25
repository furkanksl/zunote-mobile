import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:zunote/features/notes/presentation/widgets/note_card_widget.dart';

class NotesList extends StatelessWidget {
  NotesList({
    Key? key,
  }) : super(key: key);

  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(const Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(const Duration(milliseconds: 1000));

    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        header: WaterDropMaterialHeader(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          color: Colors.black,
          distance: 80,
        ),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return const NoteCard();
          },
        ),
      ),
    );
  }
}
