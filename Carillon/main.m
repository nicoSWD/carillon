//
//  main.m
//  Carillon
//
//  Created by Nico on 8/13/13.
//  Copyright (c) 2013 nicoSWD. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import <AppKit/AppKit.h>
#import <IOKit/kext/KextManager.h>
#import "ChimeData.h"


int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"Carillon started");
        NSLog(@"Debugging version");
        
        if (getuid() != 0)
        {
            NSLog(@"Must run as root. Exiting...");
            exit(1);
        }
        
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        CFStringRef identifier;

        const char *kexts[7] = {
            "com.kext.HDAEnabler",
            "org.voodoo.driver.VoodooHDA",
            "com.tonymacx86.ALC8xxHDA",
            "net.osrom.kext.HDAEnabler",
            "com.insanelymac.RealtekRTL8111",
            "com.apple.driver.AppleAC97Audio",
            "com.apple.driver.AppleHDA"
        };

        if (![defaults objectForKey:@"audioKext"])
        {
            NSLog(@"First run. Scanning for kexts...");
            
            unsigned int kextCount = sizeof(kexts) / sizeof(kexts[0]);
            bool kextFound = false;
            
            for (int i = 0; i < kextCount; i++)
            {
                NSLog(@"Checking for %s", kexts[i]);
                identifier = CFStringCreateWithCString(NULL, kexts[i], kCFStringEncodingMacRoman);
                OSReturn response = KextManagerLoadKextWithIdentifier(identifier, NULL);
                
                if (response == kOSReturnSuccess)
                {
                    [defaults setFloat:i forKey:@"audioKext"];
                    [defaults synchronize];
                    kextFound = true;
                    
                    NSLog(@"Found kext: %s", kexts[i]);
                }
                else
                {
                    NSLog(@"Not found. Continuing...");
                }
            }
            
            if (!kextFound)
            {
                NSLog(@"No kext found. Playing audio anyway");
            }
        }
        else
        {
            long key = [defaults integerForKey:@"audioKext"];
            identifier = CFStringCreateWithCString(NULL, kexts[key], kCFStringEncodingMacRoman);
            OSReturn response = KextManagerLoadKextWithIdentifier(identifier, NULL);
            
            if (response == kOSReturnSuccess)
            {
                NSLog(@"Loading default kext: %s", kexts[key]);
            }
            else
            {
                NSLog(@"Error loading default kexy");
                NSLog(@"Clearing user defaults");
                
                [defaults setObject:nil forKey:@"audioKext"];
                [defaults synchronize];
            }
        }

        NSLog(@"Playing sound...");
        
        [[[NSSound alloc] initWithData:[ChimeData getChimeData]] play];
        sleep(3);
    }
    
    exit(0);
}