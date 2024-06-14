import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:new_app/Compo/Card.dart';
import 'package:new_app/Dio/Bloc%20Dio/bloc/dio_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Trigger the event to fetch data for DioBloc
    context.read<DioBloc>().add(DioBloc() as DioEvent);
    // Uncomment and use if you have another Bloc
    // context.read<AnotherBloc>().add(SomeEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 7,
        title: const Row(
          children: [
            Icon(Icons.location_pin),
            SizedBox(width: 2),
            Text(
              'G.T.ROAD,KOLKATA',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.blue,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 7.0),
            child: Icon(Icons.notifications, color: Colors.blue),
          ),
        ],
      ),
      body: BlocBuilder<DioBloc, DioState>(
        builder: (context, state) {
          if (state is DioLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is DioLoaded) {
            return ListView.builder(
              itemCount: state.artical.length,
              itemBuilder: (context, index) {
                final article = state.artical[index];
                return ListTile(
                  title: Text(article.title),
                  subtitle: Text(article.description ?? 'No description'),
                );
              },
            );
          } else if (state is DioError) {
            return Center(child: Text('Error: ${state.error}'));
          } else {
            return Center(child: Text('No data'));
          }
        },
      ),
    );
  }
}
