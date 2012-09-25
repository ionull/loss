//
//  TZAppDelegate.m
//  loss
//
//  Created by tsung on 12-9-19.
//  Copyright (c) 2012年 tsung. All rights reserved.
//

#import "TZAppDelegate.h"
#import "PlayerController.h"
#import "LaunchServiceHandler.h"

NSString * const kMPCFMTBookmarkPath	= @"%@/Library/Preferences/%@.bookmarks.plist";

static TZAppDelegate *_sharedAppDelegate = nil;
static BOOL init_ed = NO;

@implementation TZAppDelegate

@synthesize bookmarks;
@synthesize supportVideoFormats;
@synthesize supportAudioFormats;
@synthesize supportSubFormats;
@synthesize loopType;
@synthesize loopTypeString;

- (void)setLoopTypePresent {
    switch (loopType) {
        case L_DUNT:
        default:
            loopTypeString = @"0";
            break;
        case L_LIST:
            loopTypeString = @"n";
            break;
        case L_SINGLE:
            loopTypeString = @"1";
            break;
    }
}

+(TZAppDelegate *) sharedAppDelegate {
    if(_sharedAppDelegate == nil) {
        _sharedAppDelegate = [[super allocWithZone:nil]init];
    }
    return _sharedAppDelegate;
}

-(id) init
{
	if (init_ed == NO) {
		init_ed = YES;
        
		ud = [NSUserDefaults standardUserDefaults];
		notifCenter = [NSNotificationCenter defaultCenter];
        
		NSBundle *mainBundle = [NSBundle mainBundle];
		// 建立支持格式的Set
		for( NSDictionary *dict in [mainBundle objectForInfoDictionaryKey:@"CFBundleDocumentTypes"]) {
			
			NSString *obj = [dict objectForKey:@"CFBundleTypeName"];
			// 对不同种类的格式
			if ([obj isEqualToString:@"Audio Media"]) {
				// 如果是音频文件
				supportAudioFormats = [[NSSet alloc] initWithArray:[dict objectForKey:@"CFBundleTypeExtensions"]];
				
			} else if ([obj isEqualToString:@"Video Media"]) {
				// 如果是视频文件
				supportVideoFormats = [[NSSet alloc] initWithArray:[dict objectForKey:@"CFBundleTypeExtensions"]];
			} else if ([obj isEqualToString:@"Subtitle"]) {
				// 如果是字幕文件
				supportSubFormats = [[NSSet alloc] initWithArray:[dict objectForKey:@"CFBundleTypeExtensions"]];
			}
		}
		
		/////////////////////////setup bookmarks////////////////////
		// 得到书签的文件名
		NSString *lastStoppedTimePath = [NSString stringWithFormat:kMPCFMTBookmarkPath,
										 NSHomeDirectory(), [mainBundle objectForInfoDictionaryKey:@"CFBundleIdentifier"]];
		// 得到记录播放时间的dict
		bookmarks = [[NSMutableDictionary alloc] initWithContentsOfFile:lastStoppedTimePath];
		if (!bookmarks) {
			// 如果文件不存在或者格式非法
			bookmarks = [[NSMutableDictionary alloc] initWithCapacity:10];
		}
        
        // 循环播放设置读取
        //NSString *cycleType = [mainBundle valueForKey:@"CycleType"];
        //loopType = [mainBundle objectForInfoDictionaryKey:@"LoopType"];
        //if(loopType == nil) {
            loopType = L_SINGLE;
        //}
        [self setLoopTypePresent];
	}
	return self;
}

+(id) allocWithZone:(NSZone *)zone { return [[self sharedAppDelegate] retain]; }
-(id) copyWithZone:(NSZone*)zone { return self; }
-(id) retain { return self; }
-(NSUInteger) retainCount { return NSUIntegerMax; }
-(void) release { }//dunt delete this! will get crashed!
-(id) autorelease { return self; }

-(void) dealloc
{
	_sharedAppDelegate = nil;
	
	[supportVideoFormats release];
	[supportAudioFormats release];
	[supportSubFormats release];
	
	[bookmarks release];
	
	[super dealloc];
}

-(void) awakeFromNib
{
	//NSBundle *mainBundle = [NSBundle mainBundle];
    
	// setup version info
	/*[aboutText setStringValue:[NSString stringWithFormat: @"SPlayerX %@ (Build %@)",
							   [mainBundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"],
                               [mainBundle objectForInfoDictionaryKey:@"CFBundleVersion"]]];
     */
    
	// setup url list for OpenURL Panel
	//[openUrlController initURLList:bookmarks];
    
	// setup sleep timer
	NSTimer *prevSlpTimer = [NSTimer timerWithTimeInterval:20
													target:playerController
												  selector:@selector(preventSystemSleep)
												  userInfo:nil
												   repeats:YES];
	NSRunLoop *rl = [NSRunLoop mainRunLoop];
	[rl addTimer:prevSlpTimer forMode:NSDefaultRunLoopMode];
	[rl addTimer:prevSlpTimer forMode:NSModalPanelRunLoopMode];
	[rl addTimer:prevSlpTimer forMode:NSEventTrackingRunLoopMode];
}

/////////////////////////////////////Application Delegate//////////////////////////////////////
-(BOOL) application:(NSApplication *)theApplication openFile:(NSString *)filename
{
	[playerController loadFiles:[NSArray arrayWithObject:filename] fromLocal:YES];
	return YES;
}

-(void) application:(NSApplication *)theApplication openFiles:(NSArray *)filenames
{
	[playerController loadFiles:filenames fromLocal:YES];
	[theApplication replyToOpenOrPrint:NSApplicationDelegateReplySuccess];
}

-(NSApplicationTerminateReply) applicationShouldTerminate:(NSApplication *)sender
{
	[playerController stop];
	
	[ud synchronize];
	
	NSString *lastStoppedTimePath = [NSString stringWithFormat:kMPCFMTBookmarkPath,
									 NSHomeDirectory(), [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"]];
	
	//[openUrlController syncToBookmark:bookmarks];
	
	[bookmarks writeToFile:lastStoppedTimePath atomically:NO];
    
    
    // ***** Rate It *****
    [Appirater appLaunched:YES];
    
	return NSTerminateNow;
}


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // check set default
    [LaunchServiceHandler appLaunched:YES];
}

-(IBAction)openFile:(id)sender {
    NSLog(@"open");
    NSOpenPanel *openPanel = [NSOpenPanel openPanel];
	[openPanel setCanChooseFiles:YES];
	[openPanel setCanChooseDirectories:NO];
	[openPanel setResolvesAliases:NO];
	// 现在还不支持播放列表，因此禁用多选择
	[openPanel setAllowsMultipleSelection:NO];
    [openPanel setCanCreateDirectories:NO];
	//[openPanel setTitle:kMPXStringOpenMediaFiles];
	
	if ([openPanel runModal] == NSFileHandlingPanelOKButton) {
		[playerController loadFiles:[openPanel URLs] fromLocal:YES];
	}
}

-(IBAction)changeLoopType:(id)sender {
    switch(loopType) {
        case L_DUNT:
        default:
            loopType = L_LIST;
            break;
        case L_LIST:
            loopType = L_SINGLE;
            break;
        case L_SINGLE:
            loopType = L_DUNT;
            break;
    }
    [self setLoopTypePresent];
}

@end
