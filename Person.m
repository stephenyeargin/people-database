//
//  Person.m
//  People Database
//

#import "Person.h"

@implementation Person

- (void)enterInfo {

    char cstring[40];
    
    NSLog(@"What is the first name?");
    scanf("%s", cstring);
    firstName = [NSString stringWithCString:cstring encoding:1];
    
    NSLog(@"What is %@'s last name?",firstName);
    scanf("%s",cstring);
    lastName = [NSString stringWithCString:cstring encoding:1];

    NSLog(@"What gender (m/f) is %@ %@?", firstName, lastName);
    scanf("%s",cstring);
    gender = [NSString stringWithCString:cstring encoding:1];
    
    NSLog(@"How old is %@ %@?", firstName, lastName);
    scanf("%i", &age);
    
}

- (void)printInfo {

    NSString *genderFormatted;
    if ([gender  isEqual: @"m"]) {
        genderFormatted = @"male";
    }
    else if ([gender  isEqual: @"f"]) {
        genderFormatted = @"female";
    }
    else {
        genderFormatted = @"unknown";
    }
    
    NSLog(@"%@ %@ is %i years old and is %@", firstName, lastName, age, genderFormatted);
}

@end
