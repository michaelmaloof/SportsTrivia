//
//  Trivia.m
//  SportsTrivia
//
//  Created by Michael Maloof on 4/4/16.
//  Copyright © 2016 Jetpack Dinosaur. All rights reserved.
//

#import "Trivia.h"

@implementation Trivia

- (void) questionList {
    
    int questionInt = arc4random_uniform(5);
    
    if (questionInt == 0) {
        
        self.question = @"Who is the only player to win the Heisman Trophy twice?";
        self.answer = @"Archie Griffin";
        
        self.option1 = @"Archie Griffin";
        self.option2 = @"Johnny Manziel";
        self.option3 = @"Desmond Howard";
        self.option4 = @"Bo Jackson";
        
    }else if (questionInt == 1) {
        
        self.question = @"Who is the only NBA player to have ever averaged a triple double for an entire season?";
        self.answer = @"Oscar Robertson";
        
        self.option1 = @"Kobe Bryant";
        self.option2 = @"Oscar Robertson";
        self.option3 = @"Michael Jordan";
        self.option4 = @"Larry Bird";
        
    }else if (questionInt == 2) {
        
        self.question = @"Who has the most career homeruns in MLB history?";
        self.answer = @"Barry Bonds";
        
        self.option1 = @"Babe Ruth";
        self.option2 = @"Alex Rodrigueze";
        self.option3 = @"Barry Bonds";
        self.option4 = @"Hank Aaron";
        
    }else if (questionInt == 3) {
        
        self.question = @"Which one of these athletes never acted in a Hollywood film as a starring role?";
        self.answer = @"Pete Rose";
        
        self.option1 = @"O.J. Simpson";
        self.option2 = @"Kareem Abdul Jabbarr";
        self.option3 = @"Jim Brown";
        self.option4 = @"Pete Rose";
        
    }else if (questionInt == 4) {
        
        self.question = @"Who won the first Super Bowl?";
        self.answer = @"Green Bay Packers";
        
        self.option1 = @"Green Bay Packers";
        self.option2 = @"San Fransisco 49ers";
        self.option3 = @"Dallas Cowboys";
        self.option4 = @"Cleveland Browns";
        
    }
    
}

@end

