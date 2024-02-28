import 'package:flutter/material.dart';

class InfiniteGridView extends StatefulWidget {
  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final Function()? onEndReached;

  const InfiniteGridView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.onEndReached,
  });

  @override
  State<InfiniteGridView> createState() => _InfiniteGridViewState();
}

class _InfiniteGridViewState extends State<InfiniteGridView> {
  static const _scrollThreshold = 1.00;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent * _scrollThreshold &&
        !_scrollController.position.outOfRange &&
        widget.onEndReached != null) {
      widget.onEndReached!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: const PageStorageKey("grid_view"),
      controller: _scrollController,
      itemCount: widget.itemCount,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 9 / 18,
      ),
      itemBuilder: widget.itemBuilder,
    );
  }
}
