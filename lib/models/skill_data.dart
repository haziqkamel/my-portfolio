class SkillData {
  String image;
  String skillTitle;
  SkillData({
    required this.image,
    required this.skillTitle,
  });

  static final List<SkillData> skills = [
    SkillData(
      image: "https://cdn-icons-png.flaticon.com/512/3234/3234053.png",
      skillTitle: "WP DEVELOPING",
    ),
    SkillData(
      image: "https://cdn-icons-png.flaticon.com/512/1260/1260111.png",
      skillTitle: "UI/UX DESIGN",
    ),
    SkillData(
      image: "https://cdn-icons-png.flaticon.com/512/3159/3159310.png",
      skillTitle: "WEB DESIGN",
    ),
    SkillData(
      image: "https://cdn-icons-png.flaticon.com/512/1688/1688476.png",
      skillTitle: "SEO OPTIMIZE",
    ),
    SkillData(
      image: "https://cdn-icons-png.flaticon.com/512/7075/7075373.png",
      skillTitle: "MOBILE DEVELOPMENT",
    ),
    SkillData(
      image: "https://cdn-icons-png.flaticon.com/512/1434/1434714.png",
      skillTitle: "FLUTTER DEVELOPMENT ",
    )
  ];
}
