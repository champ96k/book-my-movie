// ignore_for_file: unnecessary_getters_setters, use_setters_to_change_properties

import 'dart:math';

import 'package:book_my_movie/core/enum/seat_status.dart';
import 'package:book_my_movie/core/hive/hive_config.dart';
import 'package:book_my_movie/features/booked_movies/data/models/booked_movie_model.dart';
import 'package:book_my_movie/features/ticket_booking/data/models/ticket_book_model/ticket_book_model.dart';
import 'package:book_my_movie/features/ticket_booking/presentation/pages/seat_selection_screen.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

part 'ticket_booking_state.dart';

class TicketBookingCubit extends Cubit<TicketBookingState> {
  TicketBookingCubit() : super(TicketBookingInitial()) {
    initializeSeatStatus();
  }

  List<List<SeatStatus>> seatStatusList = [];
  Map<String, int> selectedSeatsCount = {};

  int _totalTicketCount = 2;
  int get totalTicketCount => _totalTicketCount;

  TicketBookModel? _ticketBookModel;

  TicketBookModel? get ticketBookModel => _ticketBookModel;

  // Initial ticket count
  int _ticketCount = 1;

  // Initialize seat status and selected seats list
  void initializeSeatStatus() {
    seatStatusList = List.generate(
      rowCount,
      (row) => List.generate(rowCount, (col) {
        // Randomly mark some seats as sold
        return Random().nextInt(12) == col
            ? SeatStatus.sold
            : SeatStatus.available;
      }),
    );
    _emitState();
  }

  // Toggle seat selection and update selected seats list
  void toggleSeatSelection(int row, int col) {
    SeatStatus currentStatus = seatStatusList[row][col];

    if (currentStatus == SeatStatus.available) {
      if (_ticketCount <= totalTicketCount) {
        seatStatusList[row][col] = SeatStatus.selected;
        selectedSeatsCount['${String.fromCharCode(65 + row)}${col + 1}'] =
            _ticketCount++;
      } else {
        emit(
          SeatSelectionErrorState(
              'You already selected $_totalTicketCount seats'),
        );
      }
    } else if (currentStatus == SeatStatus.selected) {
      seatStatusList[row][col] = SeatStatus.available;
      selectedSeatsCount['${String.fromCharCode(65 + row)}${col + 1}'] =
          _ticketCount--;
      selectedSeatsCount.remove('${String.fromCharCode(65 + row)}${col + 1}');
    }
    _emitState();
  }

  // Get a list of selected seats
  List<String> getSelectedSeats() {
    final _seletedSeat = selectedSeatsCount.keys.toList();
    _ticketBookModel?.selectedSeatsName = _seletedSeat;
    return _seletedSeat;
  }

  void setTotalTicketCount(int value) {
    _totalTicketCount = value;
    _emitState();
  }

  void _emitState() {
    emit(
      SeatSelectionState(
        List.from(seatStatusList),
        dateTime: DateTime.now().millisecond.toString(),
      ),
    );
  }

  void setTicketBookModel(TicketBookModel? value) {
    _ticketBookModel = value;
  }

  Future<void> addBookedMovies(TicketBookModel t) async {
    try {
      emit(SeatSelectionLoadingState());
      await Future.delayed(const Duration(seconds: 3));
      final movieModel = convertToBookedModel(t);
      final _moviesBox =
          await Hive.openBox<BookedMovieModel>(HiveConfig.movieBox);
      await _moviesBox.add(movieModel);
      debugPrint("Saved to Hive!");
      emit(TicketConfirmState());
    } catch (e) {
      debugPrint('Something went wrong : $e');
      _emitState();
    }
  }

  BookedMovieModel convertToBookedModel(TicketBookModel? t) {
    final orderId = _generateRandomOrderId();
    final screenName = _generateRandomScreenName();

    final model = BookedMovieModel(
      movieName: t?.movieName,
      bookedTime: DateTime.now().toString(),
      bookedDate: DateTime.now().toString(),
      cinemaAddress: t?.cinemaAddress,
      cinemaName: t?.cinemaName,
      langauge: t?.langauage,
      movieId: t?.movieId,
      orderId: orderId,
      posterURL: t?.posterURL,
      screenName: screenName,
      showDate: t?.seletedDate,
      tickets: t?.selectedSeatsName ?? [],
      showTime: t?.movieTime,
    );
    return model;
  }

  String _generateRandomOrderId() {
    final random = Random();
    return '${random.nextInt(10000)}';
  }

  String _generateRandomScreenName() {
    final random = Random();
    final screenNames = ['Screen 1', 'Screen 2', 'Screen 3', 'Screen 4'];
    return screenNames[random.nextInt(screenNames.length)];
  }
}
