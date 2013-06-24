//
//  DBManager.h
//  BBPlayersInfo
//
//  Created by Lingcong Liang on 6/21/13.
//  Copyright (c) 2013 Lingcong Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AWSDynamoDB/AWSDynamoDB.h>
#import <AWSRuntime/AWSRuntime.h>

@interface DBManager : NSObject
    //create a empty table that UserID is primary Key, and with candidate keys like email,name,password,deckID
    +(void)createTable;

    //show the current status of table
    +(NSString *)getTestTableStatus;

    //insert user infomation when signing up
    +(void)insertUsers:(NSString * )UserID insertPassword:(NSString *)Password insertName:(NSString *)Name insertEmail:(NSString *) Email insertDeck:(NSArray *)DeckIDs;

    +(NSMutableArray *)getUserList;
    +(NSMutableDictionary *)getUserInfo:(NSString * )userID;
    +(void)updateAttributeStringValue:(NSString *)aValue forKey:(NSString *)aKey withPrimaryKey:(DynamoDBAttributeValue *)aPrimaryKey;
    +(void)deleteUser:(DynamoDBAttributeValue *)aPrimaryKey;
    +(void)cleanUp;
@end
