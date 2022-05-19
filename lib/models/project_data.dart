class ProjectData {
  String projectTitle;
  String description;
  String image;
  ProjectData({
    required this.projectTitle,
    required this.description,
    required this.image,
  });

  static final List<ProjectData> projectList = [
    ProjectData(
      projectTitle: 'Ecommerce App',
      description: 'Lorem Ipsum is simply dummy',
      image: 'https://i.ibb.co/dPcpXWV/slider1.jpg',
    ),
    ProjectData(
      projectTitle: 'Recipe App',
      description: 'Lorem Ipsum is simply dummy text',
      image: 'https://i.ibb.co/HrB8t6K/slider2.jpg',
    ),
    ProjectData(
      projectTitle: 'Responsive App',
      description: 'Lorem Ipsum is simply dummy',
      image: 'https://i.ibb.co/tKYYkR5/slider3.jpg',
    ),
    ProjectData(
      projectTitle: 'Fintech App',
      description: 'Lorem Ipsum is simply dummy',
      image: 'https://i.ibb.co/kG3wmzB/slider4.jpg',
    ),
  ];
}
