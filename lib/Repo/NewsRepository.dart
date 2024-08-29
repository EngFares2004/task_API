import '../Model/NewsArticle.dart';

class NewsRepository {

  Future<List<NewsArticle>> fetchNews() async {
    List<NewsArticle> articles = [];

    for (int i = 0; i < stdData.length; i++) {
      articles.add(NewsArticle(
        title: 'Student ${i+1}',
        description: ' Name :${stdData[i]['name']}\n${stdData[i]['gpa']}',
        urlToImage: '${stdData[i]['Image']}',   ));
    }

    return articles;
  }
}

    List <Map<String ,dynamic>>stdData=[
      {
        "name":"Ali khaled ",
        'gpa':"GPA:3.2"   ,
        'Image':
        'https://th.bing.com/th/id/OIP.Mtg5x3F7DBcIkmuDWEDB2gHaKc?w=130&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7'  },
      {
        "name":"Ahmed Anwar",
        'gpa':"GPA:3.1"   ,
        'Image':
        'https://th.bing.com/th/id/OIP.6CzcSYGNJvHwduh1Vv2xXAAAAA?pid=ImgDet&w=185&h=291&c=7&dpr=1.3'  },
      {
        "name":"Amr reda ",
        'gpa':"GPA:3.3"   ,
        'Image': 'https://th.bing.com/th/id/OIP.hhdXcx8luip4ByIDS0uZlwHaLI?w=115&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7' },
      {
        "name":"Bassem Alaa ",
        'gpa':"GPA:2.2"   ,
        'Image': 'https://th.bing.com/th?q=Student+White+Background&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBlock&mkt=en-XA&cc=EG&setlang=en&adlt=strict&t=1&mw=247'  },
      {
        "name":"Fares mohamed ",
        'gpa':"GPA:3.4"   ,
        'Image': 'https://th.bing.com/th/id/OIP.6CzcSYGNJvHwduh1Vv2xXAAAAA?pid=ImgDet&w=185&h=291&c=7&dpr=1.3',
      }, {
        "name":"Ali khaled ",
        'gpa':"GPA:3.2"   ,
        'Image': 'https://th.bing.com/th/id/OIP.6CzcSYGNJvHwduh1Vv2xXAAAAA?pid=ImgDet&w=185&h=291&c=7&dpr=1.3'  },
      {
        "name":"Ahmed Anwar",
        'gpa':"GPA:3.1"   ,
        'Image':
        'https://th.bing.com/th/id/OIP.Mtg5x3F7DBcIkmuDWEDB2gHaKc?w=130&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7'  },
      {
        "name":"Amr reda ",
        'gpa':"GPA:3.3"   ,
        'Image': 'https://th.bing.com/th/id/OIP.hhdXcx8luip4ByIDS0uZlwHaLI?w=115&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7' },
      {
        "name":"Bassem Alaa ",
        'gpa':"GPA:2.2"   ,
        'Image': 'https://th.bing.com/th/id/OIP.6CzcSYGNJvHwduh1Vv2xXAAAAA?pid=ImgDet&w=185&h=291&c=7&dpr=1.3'  },
      {
        "name":"Fares mohamed ",
        'gpa':"GPA:3.4"   ,
        'Image': 'https://thumbs.dreamstime.com/z/young-happy-student-carrying-bag-books-7523479.jpg',
      }, {
        "name":"Ali khaled ",
        'gpa':"GPA:3.2"   ,
        'Image': 'https://thumbs.dreamstime.com/z/young-happy-student-carrying-bag-books-7523479.jpg'  },
      {
        "name":"Ahmed Anwar",
        'gpa':"GPA:3.1"   ,
        'Image':
        'https://th.bing.com/th/id/OIP.Mtg5x3F7DBcIkmuDWEDB2gHaKc?w=130&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7'  },
      {
        "name":"Amr reda ",
        'gpa':"GPA:3.3"   ,
        'Image': 'https://th.bing.com/th/id/OIP.hhdXcx8luip4ByIDS0uZlwHaLI?w=115&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7' },
      {
        "name":"Bassem Alaa ",
        'gpa':"GPA:2.2"   ,
        'Image': 'https://th.bing.com/th?q=Student+White+Background&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBlock&mkt=en-XA&cc=EG&setlang=en&adlt=strict&t=1&mw=247'  },
      {
        "name":"Fares mohamed ",
        'gpa':"GPA:3.4"   ,
        'Image': 'https://th.bing.com/th/id/OIP.6CzcSYGNJvHwduh1Vv2xXAAAAA?pid=ImgDet&w=185&h=291&c=7&dpr=1.3',
      },
    ];
