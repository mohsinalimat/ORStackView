//
//  ORFirstViewControllerTests.m
//  ORStackViewExampleTests
//
//  Created by Daniel Doubrovkine on 6/6/14.
//  Copyright (c) 2014 Orta. All rights reserved.
//

#import "../ORStackViewExample/ORFirstViewController.h"

SpecBegin(ORFirstViewController)

__block UIWindow *window;

beforeEach(^{
    window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
});

it(@"default", ^{
    ORFirstViewController *vc = [[ORFirstViewController alloc] init];
    window.rootViewController = vc;
    expect(vc.view).willNot.beNil();
    [window makeKeyAndVisible];
    expect(window).will.haveValidSnapshotNamed(@"default");
});

SpecEnd