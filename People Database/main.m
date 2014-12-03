//
//  main.m
//  People Database
//
//  Created by Stephen Yeargin on 12/3/14.
//  Copyright (c) 2014 Stephen Yeargin. All rights reserved.
//  Tutorial Link: http://www.raywenderlich.com/40293/learn-to-code-ios-apps-2-strings-arrays-objects-and-classes
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char response;
        NSMutableArray *people = [[NSMutableArray alloc] init];
        
        do {
            Person *newPerson = [[Person alloc] init];
            
            [newPerson enterInfo];
            [newPerson printInfo];
            [people addObject:newPerson];
            
            NSLog(@"Do you want to enter another name? (y/n)");
            scanf("\n%c", &response);
        } while(response == 'y');
        
        NSLog(@"Number of people in the database: %li", [people count]);
        for (Person *onePerson in people) {
            [onePerson printInfo];
        }
        
    }
    return 0;
}
