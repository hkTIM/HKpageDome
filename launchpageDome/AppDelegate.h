//
//  AppDelegate.h
//  launchpageDome
//
//  Created by 黄坤 on 2017/4/18.
//  Copyright © 2017年 Tim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

