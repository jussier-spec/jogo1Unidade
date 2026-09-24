import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // late final MovieRepositoryImpl moviesRepo;
  // late final PagingController<int, Movie> _pagingController = PagingController<int, Movie>(
  //   getNextPageKey: (state) => state.lastPageIsEmpty ? null : state.nextIntPageKey,
  //   fetchPage: (pageKey) => moviesRepo.getMovies(page: pageKey, limit: 10)
  // );


  @override
  void initState() {
    super.initState();
    //moviesRepo = Provider.of<MovieRepositoryImpl>(context, listen: false);
  }

  @override
  void dispose() {
    super.dispose();
    //_pagingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: Text("Movies"),
          // backgroundColor: Theme.of(context).primaryColorLight,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: 
        ListView(
            children: const <Widget>[
              ListTile(leading: Icon(Icons.person), title: Text('Agentes')),
              ListTile(leading: Icon(Icons.phone), title: Text('Contrato Diário')),
              ListTile(leading: Icon(Icons.list), title: Text('Meu Esquadrão')),
              ListTile(leading: Icon(Icons.map), title: Text('Missão')),
            ],
          ),
    );
  }
}
