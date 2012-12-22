//
//  SampleVerticallyAlignedViewController.m
//  SampleVerticallyAligned
//
//  Created by tetsuco on 11/09/06.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SampleVerticallyAlignedViewController.h"


@implementation SampleVerticallyAlignedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // ラベルを配置1
    UILabel *label1 = [[UILabel alloc] init];
    label1.frame = CGRectMake(10, 10, 200, 40);
    label1.backgroundColor = [UIColor darkGrayColor];   // 背景色
    label1.textColor = [UIColor whiteColor];            // テキストの色
    label1.font = [UIFont systemFontOfSize:[UIFont systemFontSize]];    // フォント
    label1.textAlignment = UITextAlignmentLeft;         // 左寄せ
    label1.numberOfLines = 2;                           // 表示可能最大行数
    label1.text = @"縦揃えができない。";                    // 表示内容
    [self.view addSubview:label1];
    
    
    // ラベルを配置2
    VerticallyAlignedLabel *label2 = [[VerticallyAlignedLabel alloc] init];
    label2.frame = CGRectMake(10, 100, 200, 40);
    label2.backgroundColor = [UIColor darkGrayColor];   // 背景色
    label2.textColor = [UIColor whiteColor];            // テキストの色
    label2.font = [UIFont systemFontOfSize:[UIFont systemFontSize]];    // フォント
    label2.textAlignment = UITextAlignmentLeft;         // 左寄せ
    label2.verticalAlignment = VerticalAlignmentTop;    // 上寄せ
    label2.numberOfLines = 2;                           // 表示可能最大行数
    label2.text = @"縦揃えができる。";                      // 表示内容
    [self.view addSubview:label2];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
