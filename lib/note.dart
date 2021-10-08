class Note {
  final int id;
  final String note;
  final int userId;

  Note({this.id, this.note, this.userId});


  factory Note.fromJson(Map<String, dynamic> json) => Note(
      userId: json['userId'],
      id: json['id'],
      note: json['note']);


}