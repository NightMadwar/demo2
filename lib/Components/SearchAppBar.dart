import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  PreferredSizeWidget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return AppBar(
      backgroundColor: const Color(0xFFFFBE00),
      title: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Fuke UI/UX"),
                        ),
                      )
                    ],
                  );
                },
              );
            },
          ),
          Expanded(
            child: SizedBox(
              height: 35,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 20,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.settings,
                      size: 20,
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Column(
                            children: [
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Fuke UI/UX"),
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: const BorderSide(color: Colors.white, width: 0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: const BorderSide(color: Colors.white, width: 0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 1),
                ),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
