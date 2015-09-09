//
//  IGCollectionViewController.m
//  SuperHeroes
//
//  Created by Igor Guk on 23.08.15.
//  Copyright (c) 2015 Igor Guk. All rights reserved.
//

#import "IGCollectionViewController.h"
#import "IGHeroDataSource.h"
#import "IGCollectionCell.h"

@interface IGCollectionViewController ()

@property (nonatomic, strong) IGHeroDataSource *hero;

@end

@implementation IGCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.hero = [[IGHeroDataSource alloc] init];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.hero countOfHeroes];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifaer = @"CollectionCell";
    
    IGCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifaer forIndexPath:indexPath];
    NSInteger row = [indexPath row];
    [cell setupWithHero:[self.hero heroAtIndex:row]];

    
    return cell;
}

@end
