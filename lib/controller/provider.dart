// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:inshort_clone/view/app_base/app_base.dart';
import 'package:inshort_clone/view/discover_screen/discover.dart';

class FeedProvider extends ChangeNotifier {
  String _appBarTitle;
  int _activeCategory = 1;
  bool _hasDataLoaded = false;
  bool _searchAppBarVisible = true;
  bool _appBarVisible = false;
  bool _watermarkVisible = false;
  bool _feedBottomActionbarVisible = false;
  int _curentArticalIndex = 0;
  PageController _feedPageController;
  PageController _screenController;
  List<Widget> _baseScreen = [
    DiscoverScreen(),
    BuildNewsScreen(),
  ];
  String _newsURL = "https://google.com/";
  bool _webviwAdded = false;
  List<String> _lastGetRequest = List.filled(0, "", growable: true);

  //

  bool get gethasDataLoaded => this._hasDataLoaded;

  int get getActiveCategory => this._activeCategory;

  String get getAppBarTitle => this._appBarTitle;

  bool get getSearchAppBarVisible => this._searchAppBarVisible;

  bool get getAppBarVisible => this._appBarVisible;

  bool get getWatermarkVisible => this._watermarkVisible;

  bool get getFeedBottomActionbarVisible => this._feedBottomActionbarVisible;

  int get getCurentArticalIndex => this._curentArticalIndex;

  PageController get getfeedPageController => this._feedPageController;

  PageController get getScreenController => this._screenController;

  List<Widget> get getBaseScreenList => this._baseScreen;

  String get getNewsURL => _newsURL;

  List<String> get getLastGetRequest => _lastGetRequest;

  bool get webviwAdded => _webviwAdded;

  ///

  void setActiveCategory(int activeCategory) {
    this._activeCategory = activeCategory;
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void setAppBarTitle(String appBarTitle) {
    this._appBarTitle = appBarTitle;
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void setDataLoaded(bool status) {
    this._hasDataLoaded = status;
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void setSearchAppBarVisible(bool searchAppBarVisible) {
    this._searchAppBarVisible = searchAppBarVisible;
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void setAppBarVisible(bool appBarVisible) {
    this._appBarVisible = appBarVisible;
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void setWatermarkVisible(bool visible) {
    this._watermarkVisible = visible;
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void setFeedBottomActionbarVisible(bool feedBottomActionbarVisible) {
    this._feedBottomActionbarVisible = feedBottomActionbarVisible;
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void setCurentArticalIndex(int curentArticalIndex) {
    this._curentArticalIndex = curentArticalIndex;
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void setfeedPageController(PageController pageController) {
    this._feedPageController = pageController;
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void setScreenController(PageController pageController) {
    this._screenController = pageController;
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void addWebScren(Widget widget) {
    _baseScreen.add(widget);
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void setNewsURL(String newsURL) {
    this._newsURL = newsURL;
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void setWebViewAdded() {
    this._webviwAdded = true;
    WidgetsBinding.instance.addPostFrameCallback((_){
      notifyListeners();
    });
  }

  void setLastGetRequest(String request, String value) {
    _lastGetRequest.clear();
    _lastGetRequest.add(request);
    _lastGetRequest.add(value);
    notifyListeners();
  }
}
