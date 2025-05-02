import 'dart:convert';

import 'package:ai_measurement/presentation/account_setup_four_screen/delete_profile_model/delete_profile_response.dart';
import 'package:ai_measurement/presentation/account_setup_four_screen/get_profiles_model/get_profiles_response.dart';
import 'package:ai_measurement/presentation/change_email_otp_screen/change_email_otp_model/change_email_otp_response.dart';
import 'package:ai_measurement/presentation/change_password_screen/change_password_model/change_password_request.dart';
import 'package:ai_measurement/presentation/change_password_screen/change_password_model/change_password_response.dart';
import 'package:ai_measurement/presentation/edit_profile_screen/edit_profile_model/edit_profile_request.dart';
import 'package:ai_measurement/presentation/edit_profile_screen/edit_profile_model/edit_profile_response.dart';
import 'package:ai_measurement/presentation/email_verification_screen/email_verification_model/email_verification_request.dart';
import 'package:ai_measurement/presentation/email_verification_screen/email_verification_model/email_verification_response.dart';
import 'package:ai_measurement/presentation/favorites_2_custom_title_screen/model/create_collection_request.dart';
import 'package:ai_measurement/presentation/favorites_2_custom_title_screen/model/create_collection_response.dart';
import 'package:ai_measurement/presentation/favorites_3_custom_title_screen/get_favourites_by_collection_model/get_favourites_by_collection_response.dart';
import 'package:ai_measurement/presentation/favorites_one_screen/favourites_model/favourites_response.dart';
import 'package:ai_measurement/presentation/forgot_password_screen/forgot_password_model/forgot_password_request.dart';
import 'package:ai_measurement/presentation/forgot_password_screen/forgot_password_model/forgot_password_response.dart';
import 'package:ai_measurement/presentation/reset_password_otp_screen/reset_password_model/reset_password_request.dart';
import 'package:ai_measurement/presentation/reset_password_otp_screen/reset_password_model/reset_password_response.dart';
import 'package:ai_measurement/presentation/search_one_screen/fetch_products_model/fetch_products_response.dart';
import 'package:ai_measurement/presentation/search_two_screen/product_details_model/product_details_response.dart';
import 'package:ai_measurement/presentation/sign_in_five_screen/set_up_profile_model/set_up_profile_request.dart';
import 'package:ai_measurement/presentation/sign_up_screen/sign_up_code_sent_model/sign_up_code_sent_response.dart';
import 'package:ai_measurement/presentation/sign_up_screen/sign_up_model/sign_up_request.dart';
import 'package:ai_measurement/presentation/sign_up_screen/sign_up_model/sign_up_response.dart';
import 'package:ai_measurement/presentation/when_clicked_on_fav_product_icon_dialog/add_to_favourite_model/add_to_favourite_request.dart';
import 'package:ai_measurement/presentation/when_clicked_on_fav_product_icon_dialog/get_collection_model/get_collection_response.dart';
import 'package:dio/dio.dart';

import '../../../presentation/change_email_otp_screen/change_email_otp_model/change_email_otp_request.dart';
import '../../../presentation/change_email_screen/change_email_model/change_email_request.dart';
import '../../../presentation/change_email_screen/change_email_model/change_email_response.dart';
import '../../../presentation/change_phone_number_screen/change_phone_model/change_phone_request.dart';
import '../../../presentation/change_phone_number_screen/change_phone_model/change_phone_response.dart';
import '../../../presentation/login_screen/login_model/login_request.dart';
import '../../../presentation/login_screen/login_model/login_response.dart';
import '../../../presentation/reset_new_password_screen/reset_new_password_model/reset_new_password_request.dart';
import '../../../presentation/reset_new_password_screen/reset_new_password_model/reset_new_password_response.dart';
import '../../../presentation/sign_in_five_screen/set_up_profile_model/set_up_profile_response.dart';
import '../../../presentation/sign_up_screen/sign_up_code_sent_model/sign_up_code_sent_request.dart';
import '../../../presentation/when_clicked_on_fav_product_icon_dialog/add_to_favourite_model/add_to_favourite_response.dart';
import '../../utils/progress_bar.dart';
import '../session/session_helper.dart';
import 'api_constants.dart';
import 'dio_client.dart';

class ApiWorker with ApiConstants {
  late DioClient dio;
  String id = '';

  ApiWorker() {
    dio = DioClient();
  }

  var token;

  ///login
  Future<LoginResponse?> loginApi(LoginRequest loginRequest, context) async {
    print('login request is ${loginRequest.toJson()}');
    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants.loginUrl,
      data: json.encode(loginRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });
    print('login Response: $response');
    ProgressBar.hideProgressBar();
    return LoginResponse.fromJson(response.data);
  }

  ///sign up step 1
  Future<SignUpResponse> signUpApi(SignUpRequest signUpRequest, context) async {
    print('signUp request is ${signUpRequest.toJson()}');
    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants.signUpStep1Url,
      data: json.encode(signUpRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });
    print('signUp Response: $response');
    ProgressBar.hideProgressBar();
    return SignUpResponse.fromJson(response.data);
  }

  ///sign up step 2
  Future<SignUpCodeSentResponse> signUpCodeSentApi(
      SignUpCodeSentRequest signUpCodeSentRequest, context) async {
    print('signUpCodeSent request is ${signUpCodeSentRequest.toJson()}');
    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants.signUpStep2Url,
      data: json.encode(signUpCodeSentRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });
    print('signUpCodeSent Response: $response');
    ProgressBar.hideProgressBar();
    return SignUpCodeSentResponse.fromJson(response.data);
  }

  ///verification
  Future<EmailVerificationResponse> emailVerificationApi(
      EmailVerificationRequest emailVerificationRequest, context) async {
    print('signUpCodeSent request is ${emailVerificationRequest.toJson()}');
    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants.verifyUrl,
      data: json.encode(emailVerificationRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });
    print('signUpCodeSent Response: $response');
    ProgressBar.hideProgressBar();
    return EmailVerificationResponse.fromJson(response.data);
  }

  ///forgot password
  Future<ForgotPasswordResponse> forgotPasswordApi(
      ForgotPasswordRequest forgotPasswordRequest, context) async {
    print('forgotPassword request is ${forgotPasswordRequest.toJson()}');
    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants.requestPasswordResetStep1Url,
      data: json.encode(forgotPasswordRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });
    print('forgotPassword Response: $response');
    ProgressBar.hideProgressBar();
    return ForgotPasswordResponse.fromJson(response.data);
  }

  ///reset password token
  Future<ResetPasswordResponse> resetPasswordApi(
      ResetPasswordRequest resetPasswordRequest, context) async {
    print('resetPassword request is ${resetPasswordRequest.toJson()}');
    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants.verifyPasswordResetTokenUrl,
      data: json.encode(resetPasswordRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });
    print('resetPassword Response: $response');
    ProgressBar.hideProgressBar();
    return ResetPasswordResponse.fromJson(response.data);
  }

  ///reset new password
  Future<ResetNewPasswordResponse> resetNewPasswordApi(
      ResetNewPasswordRequest resetNewPasswordRequest, context) async {
    print('resetNewPassword request is ${resetNewPasswordRequest.toJson()}');
    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants.resetPasswordUrl,
      data: json.encode(resetNewPasswordRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });
    print('resetNewPassword Response: $response');
    ProgressBar.hideProgressBar();
    return ResetNewPasswordResponse.fromJson(response.data);
  }

  ///set up profile
  Future<SetUpProfileResponse> setUpProfileApi(
      SetUpProfileRequest setUpProfileRequest, context) async {
    print('setUpProfile request is ${setUpProfileRequest.toJson()}');
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }
    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants.addProfileUrl,
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
      data: FormData.fromMap(setUpProfileRequest.toJson()),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });
    print('setUpProfile Response: $response');
    ProgressBar.hideProgressBar();
    return SetUpProfileResponse.fromJson(response.data);
  }

  ///get profiles
  Future<List<GetProfilesResponse>> getProfileApi(context) async {
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }

    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .getbycustom(
      context,
      ApiConstants.getProfilesUrl,
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
        throw DioExceptionHandler.fromDioError(error, context),
      );
    });

    ProgressBar.hideProgressBar();

    List data = response.data;
    return data.map((e) => GetProfilesResponse.fromJson(e)).toList();
  }

  ///delete profiles
  Future<DeleteProfileResponse> deleteProfileApi(context, profileId) async {
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }

    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .deletebycustom(
      context,
      "${ApiConstants.deleteProfile}$profileId",
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
        throw DioExceptionHandler.fromDioError(error, context),
      );
    });

    ProgressBar.hideProgressBar();

    return DeleteProfileResponse.fromJson(response.data);
  }

  ///edit profile
  Future<EditProfileResponse> editProfileApi(
      EditProfileRequest editProfileRequest, context) async {
    var profileId = await SessionHelper().getProfileId();
    print('editProfileRequest is ${editProfileRequest.toJson()}');
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }
    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .putbycustom(
      context,
      "${ApiConstants.deleteProfile}$profileId",
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
      data: FormData.fromMap(editProfileRequest.toJson()),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });
    print('EditProfileResponse: $response');
    ProgressBar.hideProgressBar();
    return EditProfileResponse.fromJson(response.data);
  }

  ///change password
  Future<ChangePasswordResponse> changePassword(
      ChangePasswordRequest changePasswordRequest, context) async {
    print('changePasswordRequest is ${changePasswordRequest.toJson()}');
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }
    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants.changePassword,
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
      data: json.encode(changePasswordRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });
    print('ChangePasswordResponse: $response');
    ProgressBar.hideProgressBar();
    return ChangePasswordResponse.fromJson(response.data);
  }

  /// Change Email
  Future<ChangeEmailResponse> changeEmail(
      ChangeEmailRequest changeEmailRequest, context) async {
    print('changeEmailRequest is ${changeEmailRequest.toJson()}');
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }
    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants
          .changeEmail, // Make sure this is defined in your ApiConstants
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
      data: json.encode(changeEmailRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });

    print('ChangeEmailResponse: $response');
    ProgressBar.hideProgressBar();
    return ChangeEmailResponse.fromJson(response.data);
  }

  /// verify Email
  Future<ChangeEmailOtpResponse> verifyEmail(
      ChangeEmailOtpRequest changeEmailOtpRequest, context) async {
    print('changeEmailOtpRequest is ${changeEmailOtpRequest.toJson()}');
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }
    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants
          .verifyNewEmail, // Make sure this is defined in your ApiConstants
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
      data: json.encode(changeEmailOtpRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });

    print('ChangeEmailOtpResponse: $response');
    ProgressBar.hideProgressBar();
    return ChangeEmailOtpResponse.fromJson(response.data);
  }

  /// Change Phone
  Future<ChangePhoneResponse> changePhone(
      ChangePhoneRequest changePhoneRequest, context) async {
    print('changePhoneRequest is ${changePhoneRequest.toJson()}');
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }

    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants.changePhone, // Ensure this constant is defined
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
      data: json.encode(changePhoneRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });

    print('ChangePhoneResponse: $response');
    ProgressBar.hideProgressBar();
    return ChangePhoneResponse.fromJson(response.data);
  }

  ///get products
  Future<List<FetchProductsResponse>> getProducts(context) async {
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }

    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .getbycustom(
      context,
      ApiConstants.fetchProducts,
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
        throw DioExceptionHandler.fromDioError(error, context),
      );
    });

    ProgressBar.hideProgressBar();

    List data = response.data;
    return data.map((e) => FetchProductsResponse.fromJson(e)).toList();
  }

  ///get products
  Future<List<FetchProductsResponse>> searchProduct(context, input) async {
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }

    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .getbycustom(
      context,
      "${ApiConstants.searchProducts}$input",
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
        throw DioExceptionHandler.fromDioError(error, context),
      );
    });

    ProgressBar.hideProgressBar();

    List data = response.data;
    return data.map((e) => FetchProductsResponse.fromJson(e)).toList();
  }

  ///get products by Id
  Future<ProductDetailsResponse> getProductById(context, productId) async {
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }

    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .getbycustom(
      context,
      "${ApiConstants.fetchProductById}$productId",
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
        throw DioExceptionHandler.fromDioError(error, context),
      );
    });

    ProgressBar.hideProgressBar();

    return ProductDetailsResponse.fromJson(response.data);
  }

  /// add to favourite
  Future<AddToFavouriteResponse> addToFavourite(
      AddToFavouriteRequest addToFavouriteRequest, context) async {
    print('addToFavouriteRequest is ${addToFavouriteRequest.toJson()}');
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }

    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants.addFavourites, // Ensure this constant is defined
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
      data: json.encode(addToFavouriteRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });

    print('AddToFavouriteResponse: $response');
    ProgressBar.hideProgressBar();
    return AddToFavouriteResponse.fromJson(response.data);
  }

  ///get favourites
  Future<List<FavouritesResponse>> getFavourites(context) async {
    var userId = await SessionHelper().getUserId();
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }

    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .getbycustom(
      context,
      "${ApiConstants.getFavourites}${userId.toString()}",
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
        throw DioExceptionHandler.fromDioError(error, context),
      );
    });

    ProgressBar.hideProgressBar();

    List data = response.data;
    return data.map((e) => FavouritesResponse.fromJson(e)).toList();
  }

  ///create collection
  Future<CreateCollectionResponse> createCollection(
      CreateCollectionRequest createCollectionRequest, context) async {
    print('createCollectionRequest is ${createCollectionRequest.toJson()}');
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }

    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .postbycustom(
      context,
      ApiConstants.createCollection, // Ensure this constant is defined
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
      data: json.encode(createCollectionRequest),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
          throw DioExceptionHandler.fromDioError(error, context));
    });

    print('CreateCollectionResponse: $response');
    ProgressBar.hideProgressBar();
    return CreateCollectionResponse.fromJson(response.data);
  }

  ///get collections
  Future<List<GetCollectionResponse>> getCollection(context) async {
    var userId = await SessionHelper().getUserId();
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }

    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .getbycustom(
      context,
      "${ApiConstants.getCollections}${userId}",
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
        throw DioExceptionHandler.fromDioError(error, context),
      );
    });

    ProgressBar.hideProgressBar();

    List data = response.data;
    return data.map((e) => GetCollectionResponse.fromJson(e)).toList();
  }

  ///get favourites by collection
  Future<List<GetFavouritesByCollectionResponse>> getFavouritesByCollection(
      context, collectionId) async {
    try {
      token = await SessionHelper().getToken();
    } catch (e) {
      print('Error occurred: $e');
    }

    ProgressBar.showProgressBarApi(context);

    final response = await dio
        .getbycustom(
      context,
      "${ApiConstants.getFavouritesByCollection}${collectionId}",
      options: Options(headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token",
      }),
    )
        .onError((DioException error, stackTrace) {
      return Future.error(
        throw DioExceptionHandler.fromDioError(error, context),
      );
    });

    ProgressBar.hideProgressBar();

    List data = response.data;
    return data
        .map((e) => GetFavouritesByCollectionResponse.fromJson(e))
        .toList();
  }
}
