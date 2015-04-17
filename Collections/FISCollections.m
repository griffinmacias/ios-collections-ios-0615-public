//
//  FISCollections.m
//  Collections
//
//  Created by Chris Gonzales on 5/30/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISCollections.h"

@implementation FISCollections

//define methods here
- (NSArray *)sortArrayAsc:(NSArray *)numberSorter
{
    NSSortDescriptor *bigTosmall = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    NSArray *sortedNumbers = [numberSorter sortedArrayUsingDescriptors:@[bigTosmall]];
    return sortedNumbers;
}

- (NSArray *)sortArrayDesc:(NSArray *)descNumberSorter
{
    NSSortDescriptor *smallTobig = [[NSSortDescriptor alloc] initWithKey:nil ascending:NO];
    NSArray *descSortedNumbers = [descNumberSorter sortedArrayUsingDescriptors:@[smallTobig]];
    return descSortedNumbers;
}

- (NSArray *)swapElements:(NSArray *)orderChanger
{
    NSMutableArray *changedOrder = [orderChanger mutableCopy];
    [changedOrder exchangeObjectAtIndex:1 withObjectAtIndex:2];
    return [NSArray arrayWithArray:changedOrder];
}

- (NSArray *)reverseArray:(NSArray *)revorderChanger
{
    NSArray* reversedArray = [[revorderChanger reverseObjectEnumerator] allObjects];
    return reversedArray;
}

- (NSArray *)keshaMaker:(NSArray *)characterChanger
{
    NSMutableArray *changedCharacter = [[NSMutableArray alloc] init];
    for (NSString *character in characterChanger) {
        [changedCharacter addObject:[character stringByReplacingCharactersInRange:NSMakeRange(2, 1) withString:@"$"]];
    }
    
    return changedCharacter;
}

- (NSDictionary *)greaterAndLessThan10:(NSArray *)numberList
{
    NSPredicate *lessT10 = [NSPredicate predicateWithFormat:@"self < 10"];
    NSPredicate *greaterT10 = [NSPredicate predicateWithFormat:@"self > 10"];
    NSDictionary *filtered = @{@"greater_than_10":[numberList filteredArrayUsingPredicate:greaterT10],
              @"less_than_10":[numberList filteredArrayUsingPredicate:lessT10]};
    return filtered;
    
}

- (NSArray *)findWinners:(NSDictionary *)players
{
    NSMutableArray *theWinners = [[NSMutableArray alloc] init];
    for (id key in players) {
        if ([[players objectForKey:key] isEqual: @"winner"]) {
            [theWinners addObject:key];
        }
        
    }
    return [theWinners copy];
}

- (NSArray *)findA:(NSArray *)aItems
{
    NSPredicate *beginswithA = [NSPredicate predicateWithFormat:@"self BEGINSWITH %@", @"a"];
    NSArray *anamesFiltered = [aItems filteredArrayUsingPredicate:beginswithA];
    return anamesFiltered;
}

- (NSInteger)sumArray:(NSArray *)numbers
{
    NSNumber *sum = [numbers valueForKeyPath:@"@sum.self"];
    NSInteger theSum = [sum integerValue];
    return theSum;
}

-(NSArray *)addS:(NSArray *)arrayNeddsSatEnd
{
    NSMutableArray *addedS = [[NSMutableArray alloc] init];
    [arrayNeddsSatEnd enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if (idx == 1) {
            [addedS addObject:obj];
        } else {
            [addedS addObject:[NSString stringWithFormat:@"%@s",obj]];
        }
    }];
    return addedS;
}

-(NSDictionary *)countWordsInStory:(NSString *)theStory
{
    NSArray *words = [theStory componentsSeparatedByString:@" "];
    NSMutableDictionary *archivedWords = [NSMutableDictionary dictionary];
    
    for (NSString *word in words) {
        if ([archivedWords objectForKey:word] != nil) {
            NSNumber *counter = [archivedWords objectForKey:word];
            counter = [NSNumber numberWithInt:([counter intValue] + 1)];
            [archivedWords setObject:counter forKey:word];
        } else {
            [archivedWords setObject:@1 forKey:word];
        }
    }
    
    return [archivedWords copy];
    
}

-(NSDictionary *)organizeSongsByArtist:(NSArray *)artistsAndsongs
{
    NSMutableDictionary *artistOrder = [[NSMutableDictionary alloc] init];
    
    for (NSString *item in artistsAndsongs) {
        NSArray *words = [item componentsSeparatedByString:@" - "];
        NSString *artist = words[0];
        NSString *songTitle = words[1];
        if ([artistOrder objectForKey:artist]) {
            [artistOrder[artist] addObject:songTitle];
        } else {
            [artistOrder setValue:[[NSMutableArray alloc] initWithObjects:songTitle, nil]  forKey:artist];
        }
        
    }
    return [artistOrder copy];
}

@end
