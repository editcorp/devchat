//
//  AAPLCameraVCDelegate.h
//  DevChat
//
//  Created by Michael L Gueterman on 2/21/17.
//  Copyright © 2017 Michael L Gueterman. All rights reserved.
//

#ifndef AAPLCameraVCDelegate_h
#define AAPLCameraVCDelegate_h

#import <Foundation/Foundation.h>

@protocol AAPLCameraVCDelegate <NSObject>

-(void)shouldEnableRecordUI:(BOOL) enable;
-(void)shouldEnableCameraUI:(BOOL) enable;
-(void)canStartRecording;
-(void)recordingHasStarted;
-(void)videoRecordingComplete:(NSURL*)videoURL;
-(void)videoRecordFailed;
-(void)snapshotTaken:(NSData*)snapshotData;
-(void)snapshotFailed;

@end

#endif /* AAPLCameraVCDelegate_h */
