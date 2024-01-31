import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.amber),
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Price"),
                                    Icon(Icons.price_change)
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Price"),
                                    Icon(Icons.price_change)
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Price"),
                                    Icon(Icons.price_change)
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Price"),
                                    Icon(Icons.price_change)
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text("Price"),
                                    Icon(Icons.price_change)
                                  ],
                                ),
                              ),
                              const Spacer(),
                              MaterialButton(
                                onPressed: () => Navigator.pop,
                                child: const Text("Show Result"),
                              )
                            ],
                          ),
                        );
                      });
                },
                icon: const Icon(Icons.more_vert)),
          ),
        ),
      ),
      body: const Column(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ChoiceChip(label: Text("House"), selected: false),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ChoiceChip(label: Text("House"), selected: false),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ChoiceChip(label: Text("House"), selected: false),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ChoiceChip(label: Text("House"), selected: false),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ChoiceChip(label: Text("House"), selected: false),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
