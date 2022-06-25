import 'package:bloc/bloc.dart';
import 'package:organico/screens/main/state/main_state.dart';


class MainCubit extends Cubit<MainState> {
  MainCubit() : super(HomeState());

  int currentpage = 0;

  pages(int index) {
    currentpage = index;
    if (index == 0) {
      emit(HomeState());
    } else if (index == 1) {
      emit(ExploreState());
    } else if (index == 2) {
      emit(CartState());
    } else {
      emit(ProfileState());
    }
  }

 
}
