//
//  main.m
//  Carillon
//
//  Created by Nico on 8/13/13.
//  Copyright (c) 2013 nicoSWD. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import <AppKit/AppKit.h>
#import "ChimeData.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {        
        [[[NSSound alloc] initWithData:[ChimeData getChimeData]] play];
        sleep(3);
    }
    
    exit(0);
}