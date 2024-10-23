
class BottomNavBarExample extends StatefulWidget {
  @override
  _BottomNavBarExampleState createState() => _BottomNavBarExampleState();
}

class _BottomNavBarExampleState extends State<BottomNavBarExample> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Selamat datang dihalaman Home', style: TextStyle(fontSize: 24)),
    Text('Selamat datang dihalaman Wisata', style: TextStyle(fontSize: 24)),
    Text('Selamat datang dihalaman Profil', style: TextStyle(fontSize: 24)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh Dari Bottom Navigation Bar'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: 'Lokasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 245, 4, 4), // Warna item yang dipilih
        unselectedItemColor: const Color.fromARGB(255, 27, 85, 243), // Warna item yang tidak dipilih
        backgroundColor: const Color.fromARGB(255, 92, 92, 92), // Warna background BottomNavigationBar
        onTap: _onItemTapped,
      ),
    );
  }
}
