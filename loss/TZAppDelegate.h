//
//  TZAppDelegate.h
//  loss
//
//  Created by tsung on 12-9-19.
//  Copyright (c) 2012年 tsung. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class PlayerController;

typedef enum {
    L_DUNT, L_SINGLE, L_LIST, L_MAGIC
} LoopType;

@interface TZAppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet PlayerController *playerController;
    
    NSUserDefaults *ud;
	NSNotificationCenter *notifCenter;
    
    NSSet *supportVideoFormats;
	NSSet *supportAudioFormats;
	NSSet *supportSubFormats;
    
	NSMutableDictionary *bookmarks;
    
    LoopType loopType;
    NSString *loopTypeString;
}

@property (assign) IBOutlet NSWindow *window;

@property (readonly) NSMutableDictionary *bookmarks;
@property (readonly) NSSet *supportVideoFormats;
@property (readonly) NSSet *supportAudioFormats;
@property (readonly) NSSet *supportSubFormats;
@property (readwrite) LoopType loopType;

// settings
// cycle type state string
@property (copy) NSString *loopTypeString;

+(TZAppDelegate *) sharedAppDelegate;
-(IBAction)openFile:(id)sender;
-(IBAction)changeLoopType:(id)sender;

@end
