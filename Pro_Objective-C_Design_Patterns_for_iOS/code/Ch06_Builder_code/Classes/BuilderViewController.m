//
//  BuilderViewController.m
//  Builder
//
//  Created by Carlo Chung on 11/27/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "BuilderViewController.h"
#import "ChasingGame.h"
#import "StandardCharacterBuilder.h"

@implementation BuilderViewController

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.客户端生成 StandardCharacterBuilder 和 ChasingGame 的实例
    CharacterBuilder *characterBuilder = [[[StandardCharacterBuilder alloc] init] autorelease];
    ChasingGame *game = [[[ChasingGame alloc] init] autorelease];

    // 2.向 ChasingGame 发送构造消息创建不同的角色
    Character *player = [game createPlayer:characterBuilder];
    Character *enemy = [game createEnemy:characterBuilder];

    // do something else with the player and enemey
}


@end
