import 'package:flutter/material.dart';
import 'package:fss_ai_app/domain/model/post.dart';
import 'package:fss_ai_app/presentation/home_event.dart';
import 'package:fss_ai_app/presentation/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        title: const Text('TARGET LISTS'),
      ),
      body: ListView.builder(
        itemCount: state.posts.length,
        itemBuilder: (context, index) {
          final post = state.posts[index];
          return GestureDetector(
            onTap: () async {
              _controller.text = post.NAME;
              bool? result = await showDialog<bool>(
                context: context,
                builder: (_) =>
                    _buildUpdateDeleteAlertDialog(viewModel, post, context),
              );

              if (result != null) {}
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                tileColor: Color.fromRGBO(255, 255, 255, 1),
                shape: RoundedRectangleBorder(
                  //side: BorderSide(width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                title: Text(
                  ' ${post.NAME}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                subtitle: Text(
                  ' ${post.TICKER} | ${post.COMPANY} | ${post.VOLUME} | ${post.NEWS}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(177, 160, 160, 160),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => _buildInsertAlertDialog(viewModel, context));
        },
      ),
    );
  }

  AlertDialog _buildInsertAlertDialog(
    HomeViewModel viewModel,
    BuildContext context,
  ) {
    _controller.text = '';
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _controller,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            viewModel.onEvent(HomeEvent.search(_controller.text));
            Navigator.pop(context, true);
          },
          child: const Text('Search'),
        ),
      ],
    );
  }

  AlertDialog _buildUpdateDeleteAlertDialog(
    HomeViewModel viewModel,
    Post post,
    BuildContext context,
  ) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _controller,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            viewModel.onEvent(HomeEvent.update(post.TICKER, _controller.text));
            Navigator.pop(context, true);
          },
          child: const Text('Detail'),
        ),
        TextButton(
          onPressed: () {
            //viewModel.onEvent(HomeEvent.delete(post.TICKER));
          },
          child: const Text('Delete'),
        ),
      ],
    );
  }
}
