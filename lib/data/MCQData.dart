class MCQQuestion{
  String question="question";
  String option="option";

  MCQQuestion(this.question, this.option);
}
class MCQOption{
  String option="option";

  MCQOption(this.option);
}
final allMCQOptions=[
  MCQOption("Past"),
  MCQOption("Present"),
  MCQOption("Future"),


];

final allMCQQuestions=[
  MCQQuestion("I wish,I will become the president of my country.", "Future"),
  MCQQuestion("I will see you later.", "Future"),
  MCQQuestion("In future, the temperature will increase due to global warming.", "Future"),
  MCQQuestion("Sita was watching some cartoons.", "Past"),
  MCQQuestion("I am watching TV.", "Present"),



];