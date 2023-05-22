class WatchEntity {
  final String? postImg;
  final String? profileUrl;
  final String? username;
  final String? userDesc;
  final String? date;
  final String? postDesc;

  WatchEntity({
    this.postDesc,
    this.postImg,
    this.profileUrl,
    this.username,
    this.userDesc,
    this.date,
  });
}

class WatchListClass {
  static final List<WatchEntity> watchData = [
    WatchEntity(
      username: "Komal Khan",
      userDesc: "Digital Banking Officer",
      date: "2d",
      profileUrl: "assets/profile1.jpg",
      postImg: "assets/watch_1.png",
      postDesc: "Family Guy Funny Moments #131 TRY NOT TO CRY\nFamily Guy Funny Moments #131 TRY NOT TO CRY #familyguyclips #familyguymemes ."
    ),
    WatchEntity(
      username: "Shahnoor Hussain",
      userDesc: "Search Engine Optim...",
      date: "12d",
      profileUrl: "assets/profile2.jpg",
      postImg: "assets/watch_2.png",
        postDesc: "Avengers vs Thanos fight scene in hindi #short #movie #hindi #ironman"
    ),
    WatchEntity(
      username: "Adnan Khan",
      userDesc: "Flutter Developer co-Fo...",
      date: "41d",
      profileUrl: "assets/profile3.jpg",
      postImg: "assets/watch_3.png",
        postDesc: "Choti Eid\nEid ka Din"

    ),
    WatchEntity(
      username: "Amir Khan",
      userDesc: "Flutter Developer Fou...",
      date: "32d",
      profileUrl: "assets/profile4.jpg",
      postImg: "assets/watch_4.png",
        postDesc: "Family Guy | Lois bought a Toy for Peter that looks like her Like our page for more!"
    ),
     ];
}