
class DragMCQQuestion {
  String question="question";
  String option="option";

  DragMCQQuestion({this.question="question", this.option="option"});


}
class DragMCQOption {
  String option="a";

  DragMCQOption({this.option="a"});


}
final allDragMCQOptions=[
  DragMCQOption(option: "a"),
  DragMCQOption(option: "an"),



];

final allDragMCQQuestions = [
  DragMCQQuestion(
    question: "apple",
    option: "an"
  ),
  DragMCQQuestion(
      question: "ball",
      option: "a"
  ),
  DragMCQQuestion(
      question: "cat",
      option: "a"
  ),
  DragMCQQuestion(
      question: "dog",
      option: "a"
  ),
  DragMCQQuestion(
      question: "elephant",
      option: "an"
  ),
  DragMCQQuestion(
      question: "football",
      option: "a"
  ),

];
