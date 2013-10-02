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
#import <IOKit/kext/KextManager.h>


int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"Carillon started");
        
        CFArrayRef array = CFArrayCreate(kCFAllocatorDefault, NULL, 0, NULL);
        OSReturn response = KextManagerLoadKextWithIdentifier(CFSTR("com.apple.driver.AppleHDA"), NULL);
        CFRelease(array);

        if (response != kOSReturnSuccess)
        {
            NSLog(@"Error loading AppleHDA.kext");
        }
        else
        {
            NSLog(@"Loaded AppleHDA.kext");
        }
        
        [[[NSSound alloc] initWithData:[ChimeData getChimeData]] play];
        sleep(3);
    }
    
    exit(0);
}
