import 'package:bloc/bloc.dart';

class HomePageViewIndexCubit extends Cubit<int> {
  HomePageViewIndexCubit(int initialState) : super(0);
  setIndex({required pageIndex}){
    emit(pageIndex);
  }
}
