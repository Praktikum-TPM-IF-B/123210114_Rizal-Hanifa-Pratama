import 'package:flutter/material.dart';
import 'login_page.dart';
import 'profile.dart';
import 'teman_page.dart';

class TemanPage extends StatelessWidget {
  final Teman teman;

  TemanPage({required this.teman});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teman'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Nama: ${teman.nama}'),
            Text('ID: ${teman.nim}'),
            Text('Tahun: ${teman.tahunMasuk}'),
          ],
        ),
      ),
    );
  }
}

class Teman {
  final String nama;
  final int nim;
  final int tahunMasuk;

  Teman(this.nama, this.nim, this.tahunMasuk);
}

List<Teman> temanList = [
  Teman('Irma Wang', 123210001, 2021),
  Teman('Angela Nolan', 123210002, 2021),
  Teman('Mara Lucero', 123210003, 2021),
  Teman('Kirby Larsen', 123210004, 2021),
  Teman('King Rich', 123210005, 2021),
  Teman('Pearlie Esparza', 123210006, 2021),
  Teman('Elva Zamora', 123210007, 2021),
  Teman('Kirk Walton', 123210008, 2021),
  Teman('Jackson Mann', 123210009, 2021),
  Teman('Bryon Schroeder', 123210010, 2021),
  Teman('Gwen Blanchard', 123210011, 2021),
  Teman('Jasmine Lucas', 123210012, 2021),
  Teman('Jermaine Medina', 123210013, 2021),
  Teman('Marc Snyder', 123210014, 2021),
  Teman('Leila Hatfield', 123210015, 2021),
  Teman('Millie Barnes', 123210016, 2021),
  Teman('Thelma Carlson', 123210017, 2021),
  Teman('Annette Norris', 123210018, 2021),
  Teman('Werner Mayo', 123210019, 2021),
  Teman('Gertrude Morgan', 123210020, 2021),
  Teman('Trisha Terry', 123210021, 2021),
  Teman('Maria Proctor', 123210022, 2021),
  Teman('Shelton Garner', 123210023, 2021),
  Teman('Kelli Bowman', 123210024, 2021),
  Teman('Evangelina Ramos', 123210025, 2021),
  Teman('Diego Hayes', 123210026, 2021),
  Teman('Jake Townsend', 123210027, 2021),
  Teman('Wilma Haas', 123210028, 2021),
  Teman('Gordon Fletcher', 123210029, 2021),
  Teman('Tony Dixon', 123210030, 2021),
  Teman('Aron Stewart', 123210031, 2021),
  Teman('Marquita Patrick', 123210032, 2021),
  Teman('Benito Burgess', 123210033, 2021),
  Teman('Rick Pruitt', 123210034, 2021),
  Teman('Bertha Bush', 123210035, 2021),
  Teman('Kenny Alvarez', 123210036, 2021),
  Teman('Melody Young', 123210037, 2021),
  Teman('Chang Melendez', 123210038, 2021),
  Teman('Nathanial Cummings', 123210039, 2021),
  Teman('Ginger Buck', 123210040, 2021),
  Teman('Lucille Klein', 123210041, 2021),
  Teman('Anibal Barry', 123210042, 2021),
  Teman('Gloria Vazquez', 123210043, 2021),
  Teman('Tyree Clark', 123210044, 2021),
  Teman('Dana Oneal', 123210045, 2021),
  Teman('Jerold Juarez', 123210046, 2021),
  Teman('Irvin Goodwin', 123210047, 2021),
  Teman('Kerry Jacobs', 123210048, 2021),
  Teman('Ladonna Li', 123210049, 2021),
  Teman('Carmella Rasmussen', 123210050, 2021),
  Teman('Reginald Wilkerson', 123210051, 2021),
  Teman('Celeste Stafford', 123210052, 2021),
  Teman('Michel Ritter', 123210053, 2021),
  Teman('Johnathan Morgan', 123210054, 2021),
  Teman('Donnell Terry', 123210055, 2021),
  Teman('Boyd Kerr', 123210056, 2021),
  Teman('Doris Delacruz', 123210057, 2021),
  Teman('Janelle Jones', 123210058, 2021),
  Teman('Rubin Gallegos', 123210059, 2021),
  Teman('Rebecca House', 123210060, 2021),
  Teman('Booker Campbell', 123210061, 2021),
  Teman('Norman Mcconnell', 123210062, 2021),
  Teman('Damon Dawson', 123210063, 2021),
  Teman('May Mckinney', 123210064, 2021),
  Teman('Chester Walsh', 123210065, 2021),
  Teman('Reyes Mullins', 123210066, 2021),
  Teman('Yesenia Mccall', 123210067, 2021),
  Teman('Rob Larsen', 123210068, 2021),
  Teman('Ann Clark', 123210069, 2021),
  Teman('Floyd Fleming', 123210070, 2021),
  Teman('Ahmed Greer', 123210071, 2021),
  Teman('Lea Clarke', 123210072, 2021),
  Teman('Ashlee Brooks', 123210073, 2021),
  Teman('Renee Benson', 123210074, 2021),
  Teman('Lynn Roth', 123210075, 2021),
  Teman('Sal Perkins', 123210076, 2021),
  Teman('Sarah Flowers', 123210077, 2021),
  Teman('Theo Welch', 123210078, 2021),
  Teman('Mollie Holt', 123210079, 2021),
  Teman('Esther Kirby', 123210080, 2021),
  Teman('Chance Hammond', 123210081, 2021),
  Teman('Reyna Chang', 123210082, 2021),
  Teman('Janette Mccoy', 123210083, 2021),
  Teman('Danny Mccullough', 123210084, 2021),
  Teman('Arnoldo Nguyen', 123210085, 2021),
  Teman('Lisa Jensen', 123210086, 2021),
  Teman('Harrison Haas', 123210087, 2021),
  Teman('Josie Bush', 123210088, 2021),
  Teman('Darin Golden', 123210089, 2021),
  Teman('Sue Pennington', 123210090, 2021),
  Teman('Carrie Ward', 123210091, 2021),
  Teman('Marquita Pollard', 123210092, 2021),
  Teman('Clay Henry', 123210093, 2021),
  Teman('Cyrus Buck', 123210094, 2021),
  Teman('Rey Underwood', 123210095, 2021),
  Teman('Duane Skinner', 123210096, 2021),
  Teman('Marissa Doyle', 123210097, 2021),
  Teman('Andy Mccormick', 123210098, 2021),
  Teman('Mariano Duke', 123210099, 2021),
  Teman('Brenton Spears', 123210100, 2021)
];


class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Hi, $username!', style: TextStyle(color: Colors.white)),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                child: Text('Profile', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: temanList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  title: Text(temanList[index].nama),
                  subtitle: Text('NIM: ${temanList[index].nim} - Tahun Masuk: ${temanList[index].tahunMasuk}'),
                  onTap: () {},
                );
              },
              separatorBuilder: (content, index) {
                return Divider();
              },
            ),
          ),
        ],
      ),
    );
  }
}

