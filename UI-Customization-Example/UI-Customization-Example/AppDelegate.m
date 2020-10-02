//
//  Copyright © 2020 Bandyer. All rights reserved.
//  See LICENSE.txt for licensing information
//

#import <Bandyer/Bandyer.h>

#import "AppDelegate.h"
#import "UIColor+Custom.h"
#import "UIFont+Custom.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //Before we dive into the details of how the SDK must be configured and initialized
    //you should add NSCameraUsageDescription and NSMicrophoneUsageDescription keys into app Info.plist
    //if you haven't done so already, otherwise your app is going to crash anytime it tries to access camera
    //or microphone devices.
    //In this sample app, those values have been already added for you.
    
    //To enable build on physical devices, you should disable bitcode on build settings tab of your target settings. In this sample app, this flag is already set for you.
    
    //Consider also to add NSPhotoLibraryUsageDescription key into app Info.plist in case you want your users to upload photos on our services.

    //If your build target is less than iOS 11, please add iCloud entitlement with at least Key-value storage checked,
    //otherwise your app is going to crash anytime the user try to upload a document from iCloud.
    //In this sample app, this is already done for you inside 'Signing & Capabilities' tab of project settings.
    
    //Here we are going to initialize the Bandyer SDK.
    //The sdk needs a configuration object where it is specified which environment the sdk should work in.
    BDKConfig *config = [BDKConfig new];
    
    //Here we are telling the SDK we want to work in a sandbox environment.
    //Beware the default environment is production, we strongly recommend to test your app in a sandbox environment.
    config.environment = BDKEnvironment.sandbox;

    //Here we are disabling CallKit support.
    //Make sure to disable CallKit, otherwise it will be enable by default if the system supports CallKit (i.e iOS >= 10.0).
    config.callKitEnabled = NO;

#error "Please initialize the Bandyer SDK with your App Id"
    //Now we are ready to initialize the SDK providing the app id token identifying your app in Bandyer platform.
    [BandyerSDK.instance initializeWithApplicationId:@"PUT YOUR APP ID HERE" config:config];

    [self applyTheme];

    return YES;
}

- (void)applyTheme
{
    UIColor *accentColor = UIColor.accentColor;
    
    if (@available(iOS 14.0, *)) {
    } else {
        self.window.tintColor = accentColor;
    }
    
    //This is the core of your customisation possibility using Bandyer SDK theme.
    //Let's suppose that your app is highly customised. Setting the following properties will let you to apply your colors, bar properties and fonts to all Bandyer's view controllers.
    
    //Colors
    BDKTheme.defaultTheme.accentColor = accentColor;
    BDKTheme.defaultTheme.primaryBackgroundColor = UIColor.customBackground;
    BDKTheme.defaultTheme.secondaryBackgroundColor = UIColor.customSecondary;
    BDKTheme.defaultTheme.tertiaryBackgroundColor = UIColor.customTertiary;
    
    //Bars
    BDKTheme.defaultTheme.barTranslucent = FALSE;
    BDKTheme.defaultTheme.barStyle = UIBarStyleBlack;
    BDKTheme.defaultTheme.keyboardAppearance = UIKeyboardAppearanceDark;
    BDKTheme.defaultTheme.barTintColor = UIColor.customBarTintColor;
    
    //Fonts
    BDKTheme.defaultTheme.navBarTitleFont = UIFont.robotoMedium;
    BDKTheme.defaultTheme.secondaryFont = UIFont.robotoLight;
    BDKTheme.defaultTheme.bodyFont = UIFont.robotoThin;
    BDKTheme.defaultTheme.font = UIFont.robotoRegular;
    BDKTheme.defaultTheme.emphasisFont = UIFont.robotoBold;
    BDKTheme.defaultTheme.mediumFontPointSize = 15;
}

@end