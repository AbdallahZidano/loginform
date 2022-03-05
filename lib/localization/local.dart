import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'message': 'Welcome to Flutter Login Form',
          'title': 'Flutter Language - Localization',
          'changelang': 'Change Language'
        },
        'ar_EG': {
          'hello': 'مرحباً بك',
          'message': 'اهلا بك في برنامج تسجيل الدخول',
          'title': 'فلاتر - متعدد اللغات',
          'changelang': 'أختر لفة',
          'Arabic': 'اللغة العربية',
          'Dont\'t have Account ? ': 'لاتمكلك حساب ؟ ',
          'Login': 'تسجيل الدخول',
          'Username': 'اسم المستخدم',
          'Password': 'كلمة السر',
          'Let\'s help you to meet your Task!': 'دعنا نساعدك على تلبية مهمتك!',
          'Welcome Onboard!': 'مرحباً بك !',
          'Sign Up': 'حساب جديد',
          'Name': 'الاسم',
          'Phone number': 'رقم الهاتف',
          'Confirm Password': 'تأكيد كلمة السر',
          'You have Account ?': 'هل تملك حساب',
          'Home': 'الرئيسية',
          'Accuont': 'حسابك',
          'Card': 'العربة',
          'Favorite': 'المفضلة',
          'Recent': 'السجل',
          'Logout': 'تسجيل الخروج',
          'Choose Your Language': 'أختر لغتك',
          'ENGLISH': 'اللغة الانجليزية',
        },
      };
}
