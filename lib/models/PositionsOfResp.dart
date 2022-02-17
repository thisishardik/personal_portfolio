class PositionsOfResp {
  final String? companyName, position, duration, location, description;

  PositionsOfResp({this.companyName, this.position, this.duration, this.location,
    this.description});
}

List<PositionsOfResp> positions_of_responsibility = [
  PositionsOfResp(
    companyName: "bitgrit Incorporation",
    position: "Student Campus Ambassador",
    duration: "08/2021 - Present",
    location: "Chennai",
    description: "Spearheading a community of 105 members comprising technical, design, management, and corporate working together to promote an ecosystem of democratized AI aimed towards skill development.",
  ),
  PositionsOfResp(
    companyName: "Next Tech Lab",
    position: "Research Associate",
    duration: "04/2021 - Present",
    location: "Chennai",
    description: "Performed literature reviews on emerging technologies in the domain of Vision AI and NLP and devising methods of implementation. Conducting effective paper reading sessions.",
  ),
  PositionsOfResp(
    companyName: "Data Science Community SRM",
    position: "Machine Learning Developer",
    duration: "06/2020 - 06/2021",
    location: "Chennai",
    description: "Identified new problem areas in the domain of computer vision and collaborated to research technical details to find innovative solutions. Conducted workshops on the fundamentals and applications of Data Science in solving real-world problems.",
  ),
];
