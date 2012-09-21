//
//  TZAppDelegate.h
//  loss
//
//  Created by tsung on 12-9-19.
//  Copyright (c) 2012年 tsung. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class PlayerController;

@interface TZAppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet PlayerController *playerController;
    
    NSUserDefaults *ud;
	NSNotificationCenter *notifCenter;
    
    NSSet *supportVideoFormats;
	NSSet *supportAudioFormats;
	NSSet *supportSubFormats;
    
	NSMutableDictionary *bookmarks;
}

@property (assign) IBOutlet NSWindow *window;

@property (readonly) NSMutableDictionary *bookmarks;
@property (readonly) NSSet *supportVideoFormats;
@property (readonly) NSSet *supportAudioFormats;
@property (readonly) NSSet *supportSubFormats;

+(TZAppDelegate *) sharedAppDelegate;
-(IBAction)openFile:(id)sender;

@end
