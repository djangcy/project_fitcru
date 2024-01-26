// ignore_for_file: non_constant_identifier_names

class MessageConstants {
  static String get invalidUser_title => 'User not registered';
  static String get invalidUser_body => 'Your credentials are not linked to a '
      'registered FitCrü account.\nPlease contact '
      'a FitCrü representitive if you '
      'continue to recieve this message.';

  static String get preparingUser_title => 'Processing';
  static String get preparingUser_body => 'Your data is busy being set up. '
      'Please try again later.\n\n'
      'Please feel free to contact a '
      'FitCrü representitive if you '
      'continue to see this message '
      'after 24 hours.';

  static String get generalError_title => 'Oops...';
  static String get generalError_body => 'Something went wrong.';

  static String get generalSuccess_title => 'Success';
  static String get generalSuccess_body => 'Success';

  static String get emailSentSuccess_title => 'Email sent';
  static String get emailSentSuccess_body =>
      'The email sent successfully.\nCheck your inbox.';

  static String get emailSentFailed_title => 'Email not sent';
  static String get emailSentFailed_body =>
      'The email failed to send.\nMake sure that '
      'your credentials are correct and that you '
      'have a stable internet connection';

  static String get dynamicLinkError_title => 'Invalid link';
  static String get dynamicLinkError_body =>
      'The link used was invalid or incorrect. Please Try again.\n'
      'Please contact a FitCrü representitve if this error persists.';

  static String get weightStatFulfilled_title => 'Oops';
  static String get weightStatFulfilled_body =>
      'You have already entered your weight today.'
      '\nPlease try again tomorrow.';

  static String get videoLinkError_title => 'Oops';
  static String get videoLinkError_body =>
      'This link points to a video that either '
      'does not exist, or has been removed.\n'
      'Please contact a FitCrü representitive if '
      'this error persists';

  static String get freeVegInfo_title => 'About Free Veg';
  static String get freeVegInfo_body => 'Free veg may be eaten with every meal '
      'in unmeasured amounts. They are a great '
      'way to bulk up your meals as well as add '
      'fibre and vitamins essential for overall '
      'health.';

  static String get snackInfo_title => 'About Snacks';
  static String get snackInfo_body => 'Snacks can be eaten at any point '
      'during the day. You can have them '
      'all at once, split them between '
      'mealtimes, time them around your '
      'workout, or leave them for your '
      'late-night cravings.';
}
