//
//  IGCollectionCell.m
//  SuperHeroes
//
//  Created by Igor Guk on 23.08.15.
//  Copyright (c) 2015 Igor Guk. All rights reserved.
//

#import "IGCollectionCell.h"

@interface IGCollectionCell ()

@property (nonatomic, weak) IBOutlet UIImageView *heroImageView;

@end

@implementation IGCollectionCell

- (void)setupWithHero:(IGHero *)hero {
    self.heroImageView.image = hero.image;
}

@end
