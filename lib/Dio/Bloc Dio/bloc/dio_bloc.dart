import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:new_app/Dio/ArticalModel.dart';

part 'dio_event.dart';
part 'dio_state.dart';

class DioBloc extends Bloc<DioEvent, DioState> {
  DioBloc() : super(DioInitial()) {
    on<DioEvent>((event, emit) {
      if(event is GetDioData){
        emit(DioLoading());
        try{
          
          
        }catch(e) {
          emit(DioError(error: e.toString()));
        }
      }
    });
  }
}
