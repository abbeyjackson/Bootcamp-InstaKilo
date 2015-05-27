//
//  Pictures.m
//  InstaKilo
//
//  Created by Abegael Jackson on 2015-05-24.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "Pictures.h"

@implementation Pictures

-(instancetype)initWithImage:(UIImage*)image subject:(NSString*)subject andLocation:(NSString*)location{
    self = [super init];
    if (self) {
        _image = image;
        _subject = subject;
        _location = location;
    }
    return self;
}


@end
