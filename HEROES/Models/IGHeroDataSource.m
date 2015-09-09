//
//  IGHeroDataSource.m
//  SuperHeroes
//
//  Created by Igor Guk on 11.08.15.
//  Copyright (c) 2015 Igor Guk. All rights reserved.
//

#import "IGHeroDataSource.h"

@interface IGHeroDataSource ()

@property (nonatomic, strong) NSMutableArray *heroArray;

@end

@implementation IGHeroDataSource

- (id)init {
    self = [super init];
    self.heroArray = [[NSMutableArray alloc] init];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"heroDataSource" ofType:@"plist"];
    NSArray *hero = [[NSArray alloc] initWithContentsOfFile:path];
    for (int i = 0; i < hero.count; i++) {
        NSDictionary *temp = [hero objectAtIndex:i];
        NSString *name = [temp objectForKey:@"name"];
        NSString *imageName = [temp objectForKey:@"imageName"];
        UIImage *image = [UIImage imageNamed:imageName];
        [self.heroArray addObject:[[IGHero alloc] initWithString:name andImageName:image]];
    }
    return self;
}

- (IGHero *)heroAtIndex:(NSInteger)index {
    return [self.heroArray objectAtIndex:index];
}

- (NSInteger)countOfHeroes {
    return [self.heroArray count];
}

- (void)saveModel:(IGHero *)model {
    
}

@end
