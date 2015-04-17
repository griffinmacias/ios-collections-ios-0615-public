//
//  FISCollections.h
//  Collections
//
//  Created by Chris Gonzales on 5/30/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISCollections : NSObject

//declare methods here
- (NSArray *)sortArrayAsc:(NSArray *)numberSorter;
- (NSArray *)sortArrayDesc:(NSArray *)descNumberSorter;
- (NSArray *)swapElements:(NSArray *)orderChanger;
- (NSArray *)reverseArray:(NSArray *)revorderChanger;
- (NSArray *)keshaMaker:(NSArray *)characterChanger;
- (NSDictionary *)greaterAndLessThan10:(NSArray *)numberList;
- (NSArray *)findWinners:(NSDictionary *)players;
- (NSArray *)findA:(NSArray *)aItems;
- (NSInteger)sumArray:(NSArray *)numbers;
- (NSArray *)addS:(NSArray *)arrayNeddsSatEnd;
-(NSDictionary *)countWordsInStory:(NSString *)theStory;
-(NSDictionary *)organizeSongsByArtist:(NSArray *)artistsAndsongs;

@end
