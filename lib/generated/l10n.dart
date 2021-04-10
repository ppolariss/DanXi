// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `DanXi`
  String get app_name {
    return Intl.message(
      'DanXi',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Fudan QR Code`
  String get fudan_qr_code {
    return Intl.message(
      'Fudan QR Code',
      name: 'fudan_qr_code',
      desc: '',
      args: [],
    );
  }

  /// `Welcome, {name}`
  String welcome(Object name) {
    return Intl.message(
      'Welcome, $name',
      name: 'welcome',
      desc: '',
      args: [name],
    );
  }

  /// `Current Connection`
  String get current_connection {
    return Intl.message(
      'Current Connection',
      name: 'current_connection',
      desc: '',
      args: [],
    );
  }

  /// `Card Balance`
  String get ecard_balance {
    return Intl.message(
      'Card Balance',
      name: 'ecard_balance',
      desc: '',
      args: [],
    );
  }

  /// `Transactions`
  String get ecard_balance_log {
    return Intl.message(
      'Transactions',
      name: 'ecard_balance_log',
      desc: '',
      args: [],
    );
  }

  /// `Canteen Popularity`
  String get dining_hall_crowdedness {
    return Intl.message(
      'Canteen Popularity',
      name: 'dining_hall_crowdedness',
      desc: '',
      args: [],
    );
  }

  /// `Select Campus`
  String get choose_area {
    return Intl.message(
      'Select Campus',
      name: 'choose_area',
      desc: '',
      args: [],
    );
  }

  /// `It's not dining time right now.`
  String get out_of_dining_time {
    return Intl.message(
      'It\'s not dining time right now.',
      name: 'out_of_dining_time',
      desc: '',
      args: [],
    );
  }

  /// `, the least crowded canteen is`
  String get comma_least_crowded_canteen_is {
    return Intl.message(
      ', the least crowded canteen is',
      name: 'comma_least_crowded_canteen_is',
      desc: '',
      args: [],
    );
  }

  /// `Currently, the most crowded canteen is`
  String get most_crowded_canteen_currently_is {
    return Intl.message(
      'Currently, the most crowded canteen is',
      name: 'most_crowded_canteen_currently_is',
      desc: '',
      args: [],
    );
  }

  /// `Canteen`
  String get canteen {
    return Intl.message(
      'Canteen',
      name: 'canteen',
      desc: '',
      args: [],
    );
  }

  /// `COVID-19 Safety Check-In`
  String get fudan_daily {
    return Intl.message(
      'COVID-19 Safety Check-In',
      name: 'fudan_daily',
      desc: '',
      args: [],
    );
  }

  /// `Already done`
  String get fudan_daily_ticked {
    return Intl.message(
      'Already done',
      name: 'fudan_daily_ticked',
      desc: '',
      args: [],
    );
  }

  /// `Tap to check in`
  String get fudan_daily_tick {
    return Intl.message(
      'Tap to check in',
      name: 'fudan_daily_tick',
      desc: '',
      args: [],
    );
  }

  /// `Academic Announcements`
  String get fudan_aao_notices {
    return Intl.message(
      'Academic Announcements',
      name: 'fudan_aao_notices',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message(
      'Loading...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Unable to load content, tap to retry`
  String get failed {
    return Intl.message(
      'Unable to load content, tap to retry',
      name: 'failed',
      desc: '',
      args: [],
    );
  }

  /// `Fatal Error`
  String get fatal_error {
    return Intl.message(
      'Fatal Error',
      name: 'fatal_error',
      desc: '',
      args: [],
    );
  }

  /// `Failed to check in. Unable to obtain the previous record.\nIf you forgot to check in yesterday, you might need to check in manually.`
  String get tick_issue_1 {
    return Intl.message(
      'Failed to check in. Unable to obtain the previous record.\nIf you forgot to check in yesterday, you might need to check in manually.',
      name: 'tick_issue_1',
      desc: '',
      args: [],
    );
  }

  /// `Failed to log in through UIS system.\nIf you has attempted to log in with wrong passwords for several times, you might need to complete a successful login through a browser manually.`
  String get login_issue_1 {
    return Intl.message(
      'Failed to log in through UIS system.\nIf you has attempted to log in with wrong passwords for several times, you might need to complete a successful login through a browser manually.',
      name: 'login_issue_1',
      desc: '',
      args: [],
    );
  }

  /// `Open UIS Login Page`
  String get login_issue_1_action {
    return Intl.message(
      'Open UIS Login Page',
      name: 'login_issue_1_action',
      desc: '',
      args: [],
    );
  }

  /// `Empty Classrooms`
  String get empty_classrooms {
    return Intl.message(
      'Empty Classrooms',
      name: 'empty_classrooms',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Current Campus`
  String get default_campus {
    return Intl.message(
      'Current Campus',
      name: 'default_campus',
      desc: '',
      args: [],
    );
  }

  /// `Select Campus`
  String get select_campus {
    return Intl.message(
      'Select Campus',
      name: 'select_campus',
      desc: '',
      args: [],
    );
  }

  /// `About This App`
  String get about {
    return Intl.message(
      'About This App',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Open Source Software Licenses`
  String get open_source_software_licenses {
    return Intl.message(
      'Open Source Software Licenses',
      name: 'open_source_software_licenses',
      desc: '',
      args: [],
    );
  }

  /// `Project Page`
  String get project_page {
    return Intl.message(
      'Project Page',
      name: 'project_page',
      desc: '',
      args: [],
    );
  }

  /// `Developers`
  String get authors {
    return Intl.message(
      'Developers',
      name: 'authors',
      desc: '',
      args: [],
    );
  }

  /// `Passionate developers\nfrom Engineering @ Fudan University`
  String get author_descriptor {
    return Intl.message(
      'Passionate developers\nfrom Engineering @ Fudan University',
      name: 'author_descriptor',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get app_description_title {
    return Intl.message(
      'Description',
      name: 'app_description_title',
      desc: '',
      args: [],
    );
  }

  /// `A miniature Fudan Integrated Service APP, created by several Fudan undergraduate students with love. We hope it can facilitate your life~`
  String get app_description {
    return Intl.message(
      'A miniature Fudan Integrated Service APP, created by several Fudan undergraduate students with love. We hope it can facilitate your life~',
      name: 'app_description',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Handan Campus`
  String get handan_campus {
    return Intl.message(
      'Handan Campus',
      name: 'handan_campus',
      desc: '',
      args: [],
    );
  }

  /// `Fenglin Campus`
  String get fenglin_campus {
    return Intl.message(
      'Fenglin Campus',
      name: 'fenglin_campus',
      desc: '',
      args: [],
    );
  }

  /// `Jiangwan Campus`
  String get jiangwan_campus {
    return Intl.message(
      'Jiangwan Campus',
      name: 'jiangwan_campus',
      desc: '',
      args: [],
    );
  }

  /// `Zhangjiang Campus`
  String get zhangjiang_campus {
    return Intl.message(
      'Zhangjiang Campus',
      name: 'zhangjiang_campus',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get i_see {
    return Intl.message(
      'OK',
      name: 'i_see',
      desc: '',
      args: [],
    );
  }

  /// `Checking in...`
  String get ticking {
    return Intl.message(
      'Checking in...',
      name: 'ticking',
      desc: '',
      args: [],
    );
  }

  /// `Failed to check in. Check your internet connection.`
  String get tick_failed {
    return Intl.message(
      'Failed to check in. Check your internet connection.',
      name: 'tick_failed',
      desc: '',
      args: [],
    );
  }

  /// `Failed to obtain WLAN information, Precise Location permission required`
  String get current_connection_failed {
    return Intl.message(
      'Failed to obtain WLAN information, Precise Location permission required',
      name: 'current_connection_failed',
      desc: '',
      args: [],
    );
  }

  /// `Not connected to WLAN`
  String get current_connection_no_wifi {
    return Intl.message(
      'Not connected to WLAN',
      name: 'current_connection_no_wifi',
      desc: '',
      args: [],
    );
  }

  /// `Fudan UIS Login`
  String get login_uis {
    return Intl.message(
      'Fudan UIS Login',
      name: 'login_uis',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get login_uis_uid {
    return Intl.message(
      'ID',
      name: 'login_uis_uid',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_uis_pwd {
    return Intl.message(
      'Password',
      name: 'login_uis_pwd',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Logging in...`
  String get logining {
    return Intl.message(
      'Logging in...',
      name: 'logining',
      desc: '',
      args: [],
    );
  }

  /// `Switch Account`
  String get change_account {
    return Intl.message(
      'Switch Account',
      name: 'change_account',
      desc: '',
      args: [],
    );
  }

  /// `Loading Fudan QR Code...\nThis may take 5-10 seconds, depending on Fudan servers.`
  String get loading_qr_code {
    return Intl.message(
      'Loading Fudan QR Code...\nThis may take 5-10 seconds, depending on Fudan servers.',
      name: 'loading_qr_code',
      desc: '',
      args: [],
    );
  }

  /// `Tap to view`
  String get tap_to_view {
    return Intl.message(
      'Tap to view',
      name: 'tap_to_view',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get forum_post_enter_content {
    return Intl.message(
      'Post',
      name: 'forum_post_enter_content',
      desc: '',
      args: [],
    );
  }

  /// `Last Transaction: `
  String get last_transaction {
    return Intl.message(
      'Last Transaction: ',
      name: 'last_transaction',
      desc: '',
      args: [],
    );
  }

  /// `Last 7 days`
  String get last_7_days {
    return Intl.message(
      'Last 7 days',
      name: 'last_7_days',
      desc: '',
      args: [],
    );
  }

  /// `Last 15 days`
  String get last_15_days {
    return Intl.message(
      'Last 15 days',
      name: 'last_15_days',
      desc: '',
      args: [],
    );
  }

  /// `Last 30 days`
  String get last_30_days {
    return Intl.message(
      'Last 30 days',
      name: 'last_30_days',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `The "Hole"`
  String get forum {
    return Intl.message(
      'The "Hole"',
      name: 'forum',
      desc: '',
      args: [],
    );
  }

  /// `Agenda`
  String get timetable {
    return Intl.message(
      'Agenda',
      name: 'timetable',
      desc: '',
      args: [],
    );
  }

  /// `New Post`
  String get new_post {
    return Intl.message(
      'New Post',
      name: 'new_post',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Sign in anonymously as:`
  String get login_with_uis {
    return Intl.message(
      'Sign in anonymously as:',
      name: 'login_with_uis',
      desc: '',
      args: [],
    );
  }

  /// `Reply {name}`
  String reply_to(Object name) {
    return Intl.message(
      'Reply $name',
      name: 'reply_to',
      desc: '',
      args: [name],
    );
  }

  /// `Every dawn is a new sunrise.`
  String get good_morning {
    return Intl.message(
      'Every dawn is a new sunrise.',
      name: 'good_morning',
      desc: '',
      args: [],
    );
  }

  /// `Rise and shine.`
  String get good_noon {
    return Intl.message(
      'Rise and shine.',
      name: 'good_noon',
      desc: '',
      args: [],
    );
  }

  /// `The afternoon knows what the morning never suspected.`
  String get good_afternoon {
    return Intl.message(
      'The afternoon knows what the morning never suspected.',
      name: 'good_afternoon',
      desc: '',
      args: [],
    );
  }

  /// `Goodnight stars, goodnight air, goodnight noises everywhere.`
  String get good_night {
    return Intl.message(
      'Goodnight stars, goodnight air, goodnight noises everywhere.',
      name: 'good_night',
      desc: '',
      args: [],
    );
  }

  /// `The dead of midnight is the noon of thought.`
  String get late_night {
    return Intl.message(
      'The dead of midnight is the noon of thought.',
      name: 'late_night',
      desc: '',
      args: [],
    );
  }

  /// `Export as ICS`
  String get share_as_ics {
    return Intl.message(
      'Export as ICS',
      name: 'share_as_ics',
      desc: '',
      args: [],
    );
  }

  /// `Login failed. Check your ID and/or password.`
  String get login_failed {
    return Intl.message(
      'Login failed. Check your ID and/or password.',
      name: 'login_failed',
      desc: '',
      args: [],
    );
  }

  /// `https://github.com/w568w/DanXi`
  String get project_url {
    return Intl.message(
      'https://github.com/w568w/DanXi',
      name: 'project_url',
      desc: '',
      args: [],
    );
  }

  /// `许冬[w568w]`
  String get dev_name_1 {
    return Intl.message(
      '许冬[w568w]',
      name: 'dev_name_1',
      desc: '',
      args: [],
    );
  }

  /// `赵行健[kavinzhao]`
  String get dev_name_2 {
    return Intl.message(
      '赵行健[kavinzhao]',
      name: 'dev_name_2',
      desc: '',
      args: [],
    );
  }

  /// `郭虹麟[KYLN24]`
  String get dev_name_3 {
    return Intl.message(
      '郭虹麟[KYLN24]',
      name: 'dev_name_3',
      desc: '',
      args: [],
    );
  }

  /// `https://github.com/w568w`
  String get dev_page_1 {
    return Intl.message(
      'https://github.com/w568w',
      name: 'dev_page_1',
      desc: '',
      args: [],
    );
  }

  /// `https://github.com/kavinzhao`
  String get dev_page_2 {
    return Intl.message(
      'https://github.com/kavinzhao',
      name: 'dev_page_2',
      desc: '',
      args: [],
    );
  }

  /// `https://github.com/KYLN24`
  String get dev_page_3 {
    return Intl.message(
      'https://github.com/KYLN24',
      name: 'dev_page_3',
      desc: '',
      args: [],
    );
  }

  /// `https://avatars.githubusercontent.com/u/8389787?v=4`
  String get dev_image_url_1 {
    return Intl.message(
      'https://avatars.githubusercontent.com/u/8389787?v=4',
      name: 'dev_image_url_1',
      desc: '',
      args: [],
    );
  }

  /// `https://avatars.githubusercontent.com/u/12184989?v=4`
  String get dev_image_url_2 {
    return Intl.message(
      'https://avatars.githubusercontent.com/u/12184989?v=4',
      name: 'dev_image_url_2',
      desc: '',
      args: [],
    );
  }

  /// `https://avatars.githubusercontent.com/u/54014142?v=4`
  String get dev_image_url_3 {
    return Intl.message(
      'https://avatars.githubusercontent.com/u/54014142?v=4',
      name: 'dev_image_url_3',
      desc: '',
      args: [],
    );
  }

  /// `DEMO LICENSE FILE\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.`
  String get LICENSES {
    return Intl.message(
      'DEMO LICENSE FILE\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      name: 'LICENSES',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}