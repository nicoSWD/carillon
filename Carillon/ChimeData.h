//
//  ChimeData.h
//  Carillon
//
//  Created by Nico on 8/8/13.
//  Copyright (c) 2013 nicoSWD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChimeData : NSData

+ (NSData*)base64decode:(NSData*)input;
+ (NSData*)getChimeData;

@end
