//
//  ViewController.m
//  SportsTrivia
//
//  Created by Michael Maloof on 4/4/16.
//  Copyright © 2016 Jetpack Dinosaur. All rights reserved.
//

#import "ViewController.h"
#import "Trivia.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *answerButton3;
@property (weak, nonatomic) IBOutlet UIButton *answerButton2;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UITextView *questionTextView;
@property (weak, nonatomic) IBOutlet UIButton *answerButton1;
@property (weak, nonatomic) IBOutlet UIButton *answerButton4;

@property Trivia *randomQuestion;
@property NSString *aButtonString;
@property NSString *bButtonString;
@property NSString *cButtonString;
@property NSString *dButtonString;
@property int totalQuestionsAsked;
@property int totalCorrectAnswers;
@property int totalIncorrectAnswers;
@property float percentCorrect;
@property Trivia *incorrectLog;
@property int count;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //hide elements before game starts
    [self hideElementsForStart];
    
    //hack to change textView font
    self.questionTextView.editable = YES;
    self.questionTextView.font = [UIFont fontWithName:@"American Typewriter" size:20.0];
    self.questionTextView.editable = NO;
}

- (IBAction)startButtonWasTapped:(id)sender {
    self.startButton.hidden = YES;
    [self unhideElementsForStart];
    [self askQuestion];
}

//hide elements for game
-(void)hideElementsForStart{
    //hide elements
    self.answerButton1.hidden = YES;
    self.answerButton2.hidden = YES;
    self.answerButton3.hidden = YES;
    self.answerButton4.hidden = YES;
    self.scoreLabel.hidden = YES;
    self.questionTextView.hidden = YES;
    //set text to empty state
    self.scoreLabel.text = @"Correct = 100%";
    self.questionTextView.text = @"";
    [self.answerButton1 setTitle:@"" forState:UIControlStateNormal];
    [self.answerButton2 setTitle:@"" forState:UIControlStateNormal];
    [self.answerButton3 setTitle:@"" forState:UIControlStateNormal];
    [self.answerButton4 setTitle:@"" forState:UIControlStateNormal];
}

//unhide elements for game
-(void)unhideElementsForStart {
    self.answerButton1.hidden = NO;
    self.answerButton2.hidden = NO;
    self.answerButton3.hidden = NO;
    self.answerButton4.hidden = NO;
    self.scoreLabel.hidden = NO;
    self.questionTextView.hidden = NO;
}

-(void)askQuestion{
    self.randomQuestion = [[Trivia alloc] init];
    [self.randomQuestion questionList];
    self.questionTextView.text = self.randomQuestion.question;
    self.aButtonString = self.randomQuestion.option1;
    self.bButtonString = self.randomQuestion.option2;
    self.cButtonString = self.randomQuestion.option3;
    self.dButtonString = self.randomQuestion.option4;
    [self.answerButton1 setTitle: self.aButtonString forState:UIControlStateNormal];
    [self.answerButton2 setTitle: self.bButtonString forState:UIControlStateNormal];
    [self.answerButton3 setTitle: self.cButtonString forState:UIControlStateNormal];
    [self.answerButton4 setTitle: self.dButtonString forState:UIControlStateNormal];
}

- (IBAction)answerButton1Selected:(id)sender {
    if (self.aButtonString == self.randomQuestion.answer) {
        
        [self answeredCorrectly];
        
        [self askQuestion];
        
    }else{
        
        [self answeredIncorrectly];
        
        [self askQuestion];
        
    }
}

- (IBAction)answerButton2Selected:(id)sender {
    if (self.bButtonString == self.randomQuestion.answer) {
        
        [self answeredCorrectly];
        
        [self askQuestion];
        
    }else{
        
        [self answeredIncorrectly];
        
        [self askQuestion];
        
    }
}

- (IBAction)answerButton3Selected:(id)sender {
    if (self.cButtonString == self.randomQuestion.answer) {
        
        [self answeredCorrectly];
        
        [self askQuestion];
        
    }else{
        
        [self answeredIncorrectly];
        
        [self askQuestion];
        
    }
}

- (IBAction)answerButton4Selected:(id)sender {
    if (self.dButtonString == self.randomQuestion.answer) {
        
        [self answeredCorrectly];
        
        [self askQuestion];
        
    }else{
        
        [self answeredIncorrectly];
        
        [self askQuestion];
        
    }

}

//If the question is answered incorrectly
-(void)answeredIncorrectly {
    
    self.totalQuestionsAsked += 1;
    
    self.totalIncorrectAnswers += 1;
    
    self.percentCorrect = (100 * self.totalCorrectAnswers)/self.totalQuestionsAsked;
    int percentRounded = (int)roundf(self.percentCorrect);
    self.scoreLabel.text = [NSString stringWithFormat:@"Correct = %d%%",percentRounded];

}

//If the question is answered correctly
- (void) answeredCorrectly {
    
    self.totalQuestionsAsked += 1;
    
    self.totalCorrectAnswers += 1;
    
    self.percentCorrect = (100 * self.totalCorrectAnswers)/self.totalQuestionsAsked;
    int percentRounded = (int)roundf(self.percentCorrect);
    self.scoreLabel.text = [NSString stringWithFormat:@"Correct = %d%%",percentRounded];
    //http://stackoverflow.com/questions/5755197/simple-percentange-calculation
    //http://stackoverflow.com/questions/8785468/convert-float-to-int-in-objective-c
    
}

@end
