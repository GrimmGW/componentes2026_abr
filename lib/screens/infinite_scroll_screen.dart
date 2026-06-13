import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatefulWidget {
   
  const InfiniteScrollScreen({Key? key}) : super(key: key);

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {

  final List<int> imageIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener((){
      print('${scrollController.position.pixels}');
      if((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent){
        print('Actualizando...');
        fetchData();
      }
    });
  }

  Future fetchData() async{

    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    add10();
    isLoading = false;
    setState(() {});

  }

  void add10(){
    final lastId = imageIds.last;
    imageIds.addAll(
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((e) => lastId + e)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: imageIds.length,
          controller: scrollController,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'), 
              image: NetworkImage('https://picsum.photos/500/300?image=${imageIds[index]}'),
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}