//
//  Pirate+FISExtraPirateMethods.m
//  OpenMe
//
//  Created by Leo Kwan on 7/15/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "Pirate+FISExtraPirateMethods.h"

@implementation Pirate (FISExtraPirateMethods)

+(instancetype)pirateFromDictionary:(NSDictionary *)dictionary
                         andContext:(NSManagedObjectContext *)context {

    Pirate *newPirate = [NSEntityDescription insertNewObjectForEntityForName:@"Pirate" inManagedObjectContext:context];
    newPirate.name = dictionary[@"name"];
    
    return  newPirate;

    

}

@end
