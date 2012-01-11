//
//  taobaoDemoViewController.m
//  taobaoDemo
//
//  Created by gaoxiaofei on 11-3-22.
//  Copyright 2011 fly-mobi.com. All rights reserved.
//

#import "IndexViewController.h"
#import "NSMutableDictionaryTaobao.h"
#import "NSStringEx.h"

@implementation IndexViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


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

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
	[dict testDefault];
	[dict setObject:@"iPhone" forKey:@"q"];
	NSString *urlString = [dict urlString];
	urlString = [NSString stringWithFormat:@"http://gw.api.taobao.com/router/rest?%@", urlString];
	urlString = [urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	NSURL *url = [NSURL URLWithString:urlString];
	NSURLRequest *request = [NSURLRequest requestWithURL:url];
	[web loadRequest:request];
}

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
	[web release];
    [super dealloc];
}

@end
