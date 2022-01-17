import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/second_controller.dart';

class SecondPage extends GetView<SecondController> {
  @override
  Widget build(BuildContext context) {
    double toolbarSize = 400;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.purple[700],
            foregroundColor: Colors.orange,
            pinned: true,
            expandedHeight: toolbarSize,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Episodios'),
              background: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    radius: 1.2,
                    colors: [
                      Colors.yellow[400]!,
                      Colors.lightGreen[900]!,
                    ],
                  ),
                ),
                child: Image.asset(
                  'assets/images/rickandmorty.png',
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                child: TextField(
                    onChanged: controller.onInputChanged,
                    keyboardType: TextInputType.number,
                    decoration: inputDecoration(),
                    style: TextStyle(color: Colors.pink)),
              ),
            ),
          ),
          GetBuilder<SecondController>(
            id: 'listEpisodesContainer',
            builder: (_controller) {
              if (_controller.listEpisodes != null)
                return SliverPadding(
                  padding: EdgeInsets.all(10),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, i) {
                        return Padding(
                          padding: const EdgeInsets.all(4),
                          child: Card(
                              child: InkWell(
                            onTap: () => _controller
                                .goToEpisode(_controller.listEpisodes![i]),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Row(
                                      children: [
                                        Text(
                                          _controller
                                                  .listEpisodes![i].episode! +
                                              ' - ',
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                        Text(
                                          _controller.listEpisodes![i].name!,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    _controller.listEpisodes![i].air_date!,
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                        );
                      },
                      childCount: _controller.listEpisodes!.length,
                    ),
                  ),
                );
              else
                return SliverToBoxAdapter(
                    child: Center(
                        child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: CircularProgressIndicator(),
                )));
            },
          )
        ],
      ),
    );
  }

  InputDecoration inputDecoration() {
    return InputDecoration(
      prefixIcon: Icon(
        Icons.search,
        color: Colors.pink,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.pink[300]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.pink[300]!),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.pink),
      ),
    );
  }
}
