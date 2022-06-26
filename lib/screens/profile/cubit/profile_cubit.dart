import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organico/model/profile_model.dart';
import 'package:organico/screens/profile/state/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState>{
ProfileCubit() : super (ProfileInitial());

List<ProfileModel> profile = [
ProfileModel("assets/profile/icons/profile.svg", "Edit profile"),
ProfileModel("assets/profile/icons/order.svg", "My Orders"),
ProfileModel("assets/profile/icons/wishlist.svg", "My Wishlist"),
ProfileModel("assets/profile/icons/addres.svg", "My Address"),
ProfileModel("assets/profile/icons/pay.svg", "Payment Metod"),
ProfileModel("assets/profile/icons/customer.svg", "Customer Serviece"),
ProfileModel("assets/profile/icons/password.svg", "Change Password"),
ProfileModel("assets/profile/icons/logout.svg", "Logout"),
];

}