void main(){
  var rect = new Rectangle(3, 4, 20, 15);
  print(rect.left);
  rect.right = 12;
  print(rect.left);
  print(rect.right);
}

///
/// dart的get set方法
///
/// @author stone305585@live.com
/// @date 2018-09-12 13:02:08
class Rectangle {
  int left;
  int top;
  int width;
  int height;

  Rectangle(this.left, this.top, this.width, this.height);

  int get right => left + width;

  set right(int value) => left = value - width;

  int get bottom => top + height;

  set bottom(int value) => top = value - height;
}