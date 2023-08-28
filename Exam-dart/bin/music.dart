import 'dart:io';

class Song {
  String title;
  String artist;
  int year;

  Song(this.title, this.artist, this.year);

  void display() {
    print('Title: $title, Artist: $artist, Year: $year');
  }
}

class CRUDApp {
  List<Song> songs = [];

  void createSong() {
    stdout.write('Enter title: ');
    String title = stdin.readLineSync()!;
    stdout.write('Enter artist: ');
    String artist = stdin.readLineSync()!;
    stdout.write('Enter year: ');
    int year = int.parse(stdin.readLineSync()!);

    Song song = Song(title, artist, year);
    songs.add(song);
    print('Song added successfully!');
  }

  void readSongs() {
    if (songs.isEmpty) {
      print('No songs available.');
    } else {
      for (var i = 0; i < songs.length; i++) {
        print('Song ${i + 1}:');
        songs[i].display();
      }
    }
  }

  void updateSong() {
    if (songs.isEmpty) {
      print('No songs available.');
      return;
    }

    stdout.write('Enter the index of the song to update: ');
    int index = int.parse(stdin.readLineSync()!) - 1;

    if (index < 0 || index >= songs.length) {
      print('Invalid index.');
    } else {
      stdout.write('Enter new title: ');
      String title = stdin.readLineSync()!;
      stdout.write('Enter new artist: ');
      String artist = stdin.readLineSync()!;
      stdout.write('Enter new year: ');
      int year = int.parse(stdin.readLineSync()!);

      songs[index] = Song(title, artist, year);
      print('Song updated successfully!');
    }
  }

  void deleteSong() {
    if (songs.isEmpty) {
      print('No songs available.');
      return;
    }

    stdout.write('Enter the index of the song to delete: ');
    int index = int.parse(stdin.readLineSync()!) - 1;

    if (index < 0 || index >= songs.length) {
      print('Invalid index.');
    } else {
      songs.removeAt(index);
      print('Song deleted successfully!');
    }
  }

  void run() {
    while (true) {
      print('Menu:');
      print('1. Create Song');
      print('2. Read Songs');
      print('3. Update Song');
      print('4. Delete Song');
      print('5. Exit');

      stdout.write('Enter your choice: ');
      int choice = int.parse(stdin.readLineSync()!);

      switch (choice) {
        case 1:
          createSong();
          break;
        case 2:
          readSongs();
          break;
        case 3:
          updateSong();
          break;
        case 4:
          deleteSong();
          break;
        case 5:
          print('Goodbye!');
          return;
        default:
          print('Invalid choice. Please try again.');
      }
    }
  }
}

void main() {
  CRUDApp app = CRUDApp();
  app.run();
}