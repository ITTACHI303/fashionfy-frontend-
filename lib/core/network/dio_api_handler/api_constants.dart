String id = '';

mixin class ApiConstants {
  static const String baseUrl = "https://fashionify-backend.onrender.com";
  static const String loginUrl = "/api/auth/login";
  static const String signUpStep1Url = "/api/auth/signup-step1";
  static const String signUpStep2Url = "/api/auth/signup-step2";
  static const String verifyUrl = "/api/auth/verify";
  static const String resetPasswordUrl = "/api/auth/reset-password";
  static const String verifyPasswordResetTokenUrl =
      "/api/auth/verify-password-reset-token";
  static const String requestPasswordResetStep1Url =
      "/api/auth/request-password-reset-step1";
  static const String addProfileUrl = "/api/user-profiles/profiles";
  static const String getProfilesUrl = "/api/user-profiles/profiles";
  static const String changePassword = "/api/change-auth/update-password";
  static const String changeEmail = "/api/change-auth/update-email";
  static const String verifyNewEmail = "/api/change-auth/verify-new-email";
  static const String changePhone = "/api/change-auth/update-phone-number";
  static const String verifyNewPhone =
      "/api/change-auth/verify-new-phone-number";
  static const String deleteProfile = "/api/user-profiles/profiles/";
  static const String updateProfile = "/api/user-profiles/profiles/";
  static const String authGoogle = "/api/auth/google";
  static const String addFavourites = "/api/favorites/add";
  static const String getFavourites = "/api/favorites/user/";
  static const String deleteFavourites = "/api/favorites/delete";
  static const String fetchProducts = "/api/products/all";
  static const String searchProducts = "/api/products/search?searchTerm=";
  static const String fetchProductById = "/api/products/";
  static const String createCollection = "/api/favorite-collections/create";
  static const String getCollections = "/api/favorite-collections/user/";
  static const String getFavouritesByCollection = "/api/favorites/collection/";
}
