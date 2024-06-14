import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:new_app/Dio/ArticalModel.dart';
import 'package:new_app/Dio/DioHelper.dart';

part 'dio_event.dart';
part 'dio_state.dart';

class DioBloc extends Bloc<DioEvent, DioState> {
  DioBloc() : super(DioInitial()) {
    on<GetDioData>(_onGetDioData);
  }

  Future<void> _onGetDioData(GetDioData event, Emitter<DioState> emit) async {
    emit(DioLoading());
    try {
      final response =
          await Helpers.GetData(url: 'v2/top-headlines', query: {
        'country': 'us',
        'apiKey': 'YOUR_API_KEY', 
      });
      List<Artical> articles = (response.data['articles'] as List)
          .map((article) => Artical.fromJson(article))
          .toList();
      emit(DioLoaded(articles: articles, artical: []));
    } catch (e) {
      emit(DioError(error: e.toString()));
    }
  }
}
