class ElectionModel {
  late String electionId;
  late String electionName;
  late String electionType;
  late String electionState;
  late String electionDate;
  late String electionStartingTime;
  late String electionEndingTime;
  late List<BoothModel> booths;

  ElectionModel(
      {required this.electionId,
      required this.electionName,
      required this.electionType,
      required this.electionState,
      required this.electionDate,
      required this.electionStartingTime,
      required this.electionEndingTime,
      required this.booths});

  ElectionModel.fromJson(Map<String, dynamic> json) {
    electionId = json['election_id'];
    electionName = json['election_name'];
    electionType = json['election_type'];
    electionState = json['election_state'];
    electionDate = json['election_date'];
    electionStartingTime = json['election_starting_time'];
    electionEndingTime = json['election_ending_time'];
    booths = (json['election_booth'] as List<Map<String, dynamic>>)
        .map((e) => BoothModel.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['election_id'] = this.electionId;
    data['election_name'] = this.electionName;
    data['election_type'] = this.electionType;
    data['election_state'] = this.electionState;
    data['election_date'] = this.electionDate;
    data['election_starting_time'] = this.electionStartingTime;
    data['election_ending_time'] = this.electionEndingTime;
    data['election_booth'] = this.booths.map((e) => e.toJson()).toList();
    return data;
  }
}

class BoothModel {
  late String location;

  BoothModel({required this.location});

  BoothModel.fromJson(Map<String, dynamic> json) {
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['location'] = this.location;
    return data;
  }
}
