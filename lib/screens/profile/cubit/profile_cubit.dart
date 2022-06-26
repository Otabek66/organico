import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico/screens/profile/state/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState>{
ProfileCubit() : super (ProfileInitial());

}