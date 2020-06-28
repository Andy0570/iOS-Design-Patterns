//
//  AbstractFactoryViewController.m
//  AbstractFactory
//
//  Created by Carlo Chung on 11/1/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
//

#import "AbstractFactoryViewController.h"
#import "BrandingFactory.h"

@implementation AbstractFactoryViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// 实现 loadView 方法，以编程方式创建视图层级，不使用 nib。
- (void)loadView {

    // 使用从 BrandingFactory 获得的带品牌的 UI 元素构建视图
	BrandingFactory * factory = [BrandingFactory factory];
	
	//...
	UIView * view = [factory brandedView];
	//... 把 view 放在视图的合适位置

	//...
	UIButton * button = [factory brandedMainButton];
	//... 把 button 放在视图的合适位置
    
	//...
	UIToolbar * toolbar = [factory brandedToolbar];
    //... 把 toolbar 放在视图的合适位置
}



/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
