//
//  CollectionViewController.m
//  InstaKilo
//
//  Created by Abegael Jackson on 2015-05-24.
//  Copyright (c) 2015 Abegael Jackson. All rights reserved.
//

#import "CollectionViewController.h"
#import "Pictures.h"
#import "CollectionViewCell.h"
#import "PictureCollection.h"
#import "CollectionReusableView.h"

@interface CollectionViewController ()

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    PictureCollection *pictures = [[PictureCollection alloc]init];
    NSMutableArray *sortArray = [[NSMutableArray alloc]init];
    sortArray = [@[pictures] mutableCopy];
    NSMutableArray *work = [NSMutableArray arrayWithArray:[sortArray filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF == 'kAtWork'"]]];
    NSMutableArray *home = [NSMutableArray arrayWithArray:[sortArray filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF == 'kAtHome'"]]];
    NSMutableArray *sleeping = [NSMutableArray arrayWithArray:[sortArray filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF == 'kIsAsleep'"]]];
    NSMutableArray *awake = [NSMutableArray arrayWithArray:[sortArray filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"SELF == 'kIsAwake'"]]];
    
    _mainArray = [NSMutableArray arrayWithObjects:work, home, sleeping, awake, nil];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    PictureCollection *pic = [[PictureCollection alloc]init];
    return pic.pictures.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    PictureCollection *pic = [[PictureCollection alloc]init];
    Pictures *picture = pic.pictures[indexPath.row];
    
    cell.imageCell.image = picture.image;
    
    
    
    return cell;
}



//-(void)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
//    CollectionViewCell *cell = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"SectionHeader" forIndexPath:indexPath];
//    _sectionHeader.text = 
//}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
