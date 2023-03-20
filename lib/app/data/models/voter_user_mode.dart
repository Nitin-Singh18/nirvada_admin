class VoterUserModel {
  late String voterIdNumber;
  late String phoneNumber;

  VoterUserModel({required this.voterIdNumber, required this.phoneNumber});

  VoterUserModel.fromJson(Map<String, dynamic> json) {
    voterIdNumber = json['voter_id_number'] ?? "";
    phoneNumber = json['phone_number'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['voter_id_number'] = this.voterIdNumber;
    data['phone_number'] = this.phoneNumber;
    return data;
  }
}
