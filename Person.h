//
//  Person.h
//  People Database
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *firstName;
    NSString *lastName;
    NSString *gender;
    int age;
}

- (void)enterInfo;
- (void)printInfo;

@end
