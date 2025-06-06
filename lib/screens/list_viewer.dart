import 'package:flutter/material.dart';

class ListViewer extends StatefulWidget {
  const ListViewer({super.key});

  @override
  State<ListViewer> createState() => _ListViewerState();
}

class _ListViewerState extends State<ListViewer> {
  final String networkImagePath =
      'https://th.bing.com/th/id/OIP.To2BBwN3xitvcPGfXb0p3AHaE8?w=262&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7';

  final List months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  final ScrollController _scrollController = ScrollController();
  bool isVisible = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener); // Attach listener to ScrollController
  }

  void _scrollListener() {
    if(_scrollController.offset > 40 && !isVisible) {
      setState(() {
        isVisible = true;
      });
    }
    else if(_scrollController.offset < 40 && isVisible) {
      setState(() {
        isVisible = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Viewer'),
        backgroundColor: Colors.pink[50],
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    (position + 1).toString(),
                    // textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Icon(Icons.calendar_month_outlined),
                  const SizedBox(width: 16),
                  Text(
                    months[position < 12 ? (position) : position % 12],
                    style: const TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  const SizedBox(width: 16),
                  // AnimatedOpacity(
                  //   // If the widget is visible, animate to 0.0 (invisible).
                  //   // If the widget is hidden, animate to 1.0 (fully visible).
                  //   opacity: isVisible ? 1.0 : 0.0,
                  //   duration: const Duration(milliseconds: 500),
                  //   // The green box must be a child of the AnimatedOpacity widget.
                  //   child: Container(
                  //     width: 20.0,
                  //     height: 20.0,
                  //     color: Colors.green,
                  //   ),
                  // ),
                  const SizedBox(width: 16),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: isVisible ?  FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(
            0,
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
          );
          // setState(() {
          //   isVisible = false;
          // });
        },
        child: const Icon(Icons.arrow_upward),
      ) : null,
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Image.network(
      //         networkImagePath,
      //         height: 180,
      //       ),
      //       ListView.builder(
      //         itemCount: 20,
      //         itemBuilder: (context, index) {
      //           return SizedBox(
      //             height: 100,
      //             child: Text('Go $index'),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

}
