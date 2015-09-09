//
//  IGTableCell.m
//  SuperHeroes
//
//  Created by Igor Guk on 08.08.15.
//  Copyright (c) 2015 Igor Guk. All rights reserved.
//

#import "IGTableCell.h"

@interface IGTableCell ()

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbImage;

@end

@implementation IGTableCell

- (void)setupWithHero:(IGHero *)hero {
    self.nameLabel.text = hero.name;
    self.thumbImage.image = hero.image;
}

@end
