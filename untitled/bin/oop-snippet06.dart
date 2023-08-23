class parentClass {
  String subject = "Example of Super Key word";

}
class Subclass extends parentClass {
  String subject = "Science";
  void showMessage() {
    print(super.subject);
    print("$subject has ${subject.length} letters .");
  }
}
void main()
{
  Subclass myClass = new Subclass();
  myClass.showMessage();
}