class TicketBookModel {
  TicketBookModel({
    this.movieName,
    this.movieTime,
    this.cinemaName,
    this.seletedDate,
    this.cinemaAddress,
    this.langauage,
    this.selectedSeatsName,
    this.cancellation,
  });

  final String? movieName;
  final String? movieTime;
  final String? cinemaName;
  final String? seletedDate;
  final String? cinemaAddress;
  final String? langauage;
  final bool? cancellation;
  List<String>? selectedSeatsName;
}
