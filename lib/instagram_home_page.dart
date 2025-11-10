import 'package:flutter/material.dart';

class InstagramHomePage extends StatelessWidget {
  const InstagramHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildStories(),
          _buildPost(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: const Icon(Icons.home), onPressed: () {}),
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.add_box_outlined), onPressed: () {}),
            IconButton(icon: const Icon(Icons.video_library), onPressed: () {}),
            IconButton(icon: const Icon(Icons.person), onPressed: () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildStories() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(8, (index) {
            final username = 'faraaa$index';
            final assetPath = 'assets/story$index.jpg';
            return Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(assetPath),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    username,
                    style: const TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildPost() {
    return Card(
      margin: const EdgeInsets.all(8.0),
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundImage: const AssetImage('assets/profile.jpg'),
                ),
                const SizedBox(width: 8),
                const Text(
                  'evry_',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.more_vert, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),

          // Gambar postingan — ini tempat Anda masukkan gambar peta + tabel
          Image.asset(
            'assets/post1.jpg',
            fit: BoxFit.cover,
            height: 300,
            width: double.infinity,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.grey[800],
                height: 300,
                child: const Center(
                  child: Text(
                    'Gambar tidak ditemukan',
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
              );
            },
          ),

          // Footer
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(icon: const Icon(Icons.favorite_border, color: Colors.white), onPressed: () {}),
                    IconButton(icon: const Icon(Icons.chat_bubble_outline, color: Colors.white), onPressed: () {}),
                    IconButton(icon: const Icon(Icons.send, color: Colors.white), onPressed: () {}),
                    const Spacer(),
                    IconButton(icon: const Icon(Icons.bookmark_border, color: Colors.white), onPressed: () {}),
                  ],
                ),
                const SizedBox(height: 6),
                const Text(
                  'disukai oleh eevrii dan 1 lainnya',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text(
                    'pantai nya indah bangettttt\nselengkapnya komen',
                    style: TextStyle(color: Colors.white, height: 1.4),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    '2 jam yang lalu',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}