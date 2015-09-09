//
//  IGHeroDataSource.h
//  SuperHeroes
//
//  Created by Igor Guk on 11.08.15.
//  Copyright (c) 2015 Igor Guk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "IGHero.h"

@interface IGHeroDataSource : NSObject

- (IGHero *)heroAtIndex:(NSInteger)index;
- (NSInteger)countOfHeroes;
- (void)saveModel:(IGHero *)model;

@end
