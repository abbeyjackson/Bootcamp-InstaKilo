//
//  PictureCollection.m
//  InstaKilo
//
//  Created by Abegael Jackson on 2015-05-24.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "PictureCollection.h"
#import "Pictures.h"

@implementation PictureCollection


NSString *const kIsAsleep = @"sleeping";
NSString *const kIsAwake = @"awake";
NSString *const kAtWork = @"work";
NSString *const kAtHome = @"home";


-(instancetype)init{
    self = [super init];
    if (self) {
        
        _pictures = [NSMutableArray arrayWithArray:@[
                                                     [[Pictures alloc] initWithImage:[UIImage imageNamed:@"01.jpg"] subject:kIsAwake andLocation:kAtWork],
                                                     [[Pictures alloc] initWithImage:[UIImage imageNamed:@"02.jpg"] subject:kIsAwake andLocation:kAtHome],
                                                     [[Pictures alloc] initWithImage:[UIImage imageNamed:@"03.jpg"] subject:kIsAwake andLocation:kAtHome],
                                                     [[Pictures alloc] initWithImage:[UIImage imageNamed:@"04.jpg"] subject:kIsAsleep andLocation:kAtHome],
                                                     [[Pictures alloc] initWithImage:[UIImage imageNamed:@"05.jpg"] subject:kIsAsleep andLocation:kAtWork],
                                                     [[Pictures alloc] initWithImage:[UIImage imageNamed:@"06.jpg"] subject:kIsAwake andLocation:kAtHome],
                                                     [[Pictures alloc] initWithImage:[UIImage imageNamed:@"07.jpg"] subject:kIsAsleep andLocation:kAtHome],
                                                     [[Pictures alloc] initWithImage:[UIImage imageNamed:@"08.jpg"] subject:kIsAsleep andLocation:kAtHome],
                                                     [[Pictures alloc] initWithImage:[UIImage imageNamed:@"08.jpg"] subject:kIsAsleep andLocation:kAtHome],
                                                     [[Pictures alloc] initWithImage:[UIImage imageNamed:@"09.jpg"] subject:kIsAsleep andLocation:kAtHome],
                                                     [[Pictures alloc] initWithImage:[UIImage imageNamed:@"10.jpg"] subject:kIsAwake andLocation:kAtWork]
                                                     ]];
    }
                     return self;
}





@end
