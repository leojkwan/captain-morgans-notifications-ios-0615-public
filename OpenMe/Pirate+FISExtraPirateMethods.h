//
//  Pirate+FISExtraPirateMethods.h
//  OpenMe
//
//  Created by Leo Kwan on 7/15/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "Pirate.h"

@interface Pirate (FISExtraPirateMethods)


+(instancetype)pirateFromDictionary:(NSDictionary *)dictionary
                         andContext:(NSManagedObjectContext *)context;


@end
