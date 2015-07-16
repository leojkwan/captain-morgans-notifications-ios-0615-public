//
//  Ship+FISExtraShipMethods.h
//  OpenMe
//
//  Created by Leo Kwan on 7/15/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "Ship.h"

@interface Ship (FISExtraShipMethods)

+(instancetype)shipFromDictionary:(NSDictionary *)dictionary
                       andContext:(NSManagedObjectContext *)context;


@end
