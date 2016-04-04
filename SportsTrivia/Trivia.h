//
//  Trivia.h
//  SportsTrivia
//
//  Created by Michael Maloof on 4/4/16.
//  Copyright © 2016 Jetpack Dinosaur. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Trivia : NSObject


@property NSString *question;

@property NSString *answer;

@property NSString *option1;
@property NSString *option2;
@property NSString *option3;
@property NSString *option4;

- (void) questionList;

@end
