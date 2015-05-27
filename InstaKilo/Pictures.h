//
//  Pictures.h
//  InstaKilo
//
//  Created by Abegael Jackson on 2015-05-24.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Pictures : NSObject

@property (nonatomic, weak) UIImage *image;
@property (nonatomic, weak) NSString *subject;
@property (nonatomic, weak) NSString *location;

-(instancetype)initWithImage:(UIImage*)image subject:(NSString*)subject andLocation:(NSString*)location;

@end
