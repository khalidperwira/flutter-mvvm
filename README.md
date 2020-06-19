# Flutter MVVM Design
Cuma buat belajar, mungkin bisa lebih simpel lagi, contohnya BLoC. BLoC punya **State** and **Event**, event bisa mengubah stte. di tutorial 53, event itu int tapi aku rubah jadi kelas EventUser(referensi 59) karena mungkin bakal berguna buat projek lain. di 53 juga, kelas state memakai nama User tapi aku pikir ini bakal redundan dengan kelas User di model jadi aku merubahnya menjadi MUserState untuk User di BLoC. Untuk kelas User di model aku rubah juga menjadi MUser

repo ini lebih fokus kepada : 
- Memakai Flutter BLoC yang baru
- Bermain dengan API request
- Memisahkan projek

Mungkin akan gambar diagram-diagramnya nanti

## Reference 

Tutorial By : Erico Darmawan Handoyo

- Flutter HTTP : 
    - [FLUTTER 37. HTTP Request / Koneksi ke API (Get Method)](https://www.youtube.com/watch?v=wZMCS2W82UI&list=PLZQbl9Jhl-VACm40h5t6QMDB92WlopQmV&index=37)

- Flutter BLOB :
    - [FLUTTER 45. BLoC State Management (flutter_bloc Package)](https://www.youtube.com/watch?v=PyJmvb34Mq0&list=PLZQbl9Jhl-VACm40h5t6QMDB92WlopQmV&index=45)
    - [FLUTTER 59. Flutter_bloc ver 1.0 & Bloc Visual Studio Code Plugin](https://www.youtube.com/watch?v=5sNTyNT9u1g&list=PLZQbl9Jhl-VACm40h5t6QMDB92WlopQmV&index=59)

- Flutter MVVM :
    - [FLUTTER 53. MVVM Architecture](https://www.youtube.com/watch?v=5ZwNx9GG3pc&list=PLZQbl9Jhl-VACm40h5t6QMDB92WlopQmV&index=53)

## Pengembangan Lebih Lanjut

- Multipage : route
- BLoC : Hydrated BLoC State + MultiBLoC in MultiPage
- UI : Add Division Package (Styling Widget Inspired by CSS)
- 