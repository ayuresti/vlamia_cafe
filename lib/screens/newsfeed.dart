import 'package:flutter/material.dart';
import 'package:vlamia_cafe/screens/news.dart';
import 'package:vlamia_cafe/screens/data_service.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  Future<List<News>>? _news;

  @override
  void initState() {
    super.initState();
    _news = DataService.fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
              Navigator.pop(context); 
              },
            ),
            Text('Fetch Data News'),
          ],
        ),
      ),
      body: Center(
        child: FutureBuilder<List<News>>(
          future: _news,
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final post = snapshot.data![index];
                  return ListTile(
                    title: Text(post.title),
                    subtitle: Text(post.body),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          }),
        ),
      ),
    );
  }
}
