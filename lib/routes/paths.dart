class Paths {
  static PathObject SPLASH = PathObject('splash', '/splash');
  static PathObject LOGIN = PathObject('login', '/login');
  static PathObject DASHBOARD = PathObject('dashboard', '/dashboard');
}

class PathObject{
  final String name;
  final String path;

  PathObject(this.name, this.path);
}