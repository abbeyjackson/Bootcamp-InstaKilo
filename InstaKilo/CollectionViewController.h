//
//  CollectionViewController.h
//  InstaKilo
//
//  Created by Abegael Jackson on 2015-05-24.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewController : UICollectionViewController

@property (nonatomic, strong) NSMutableArray *mainArray;
@property (weak, nonatomic) IBOutlet UILabel *sectionHeader;
@end
