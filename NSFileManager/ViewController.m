//
//  ViewController.m
//  NSFileManager
//
//  Created by 刘松洪 on 16/10/14.
//  Copyright © 2016年 刘松洪. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSFileManager *fileManager = [NSFileManager defaultManager];//返回的就是单列
    //document 目录路径
    NSString *documentStr    = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSLog(@"document目录路径:%@",documentStr);
    //Library 目录路径
    NSString *libPathStr     = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) firstObject];
    NSLog(@"Library目录路径:%@",libPathStr);
    //cache 目录路径
    NSString *cachePathStr   = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject];
    NSLog(@"cache目录路径:%@",cachePathStr);
    //temp 目录路径
    NSString *tempPatchStr   = NSTemporaryDirectory();
    NSLog(@"temp目录路径:%@",tempPatchStr);
    //沙盒路径
    NSString *sandBoxPathStr = NSHomeDirectory();
    NSLog(@"沙盒目录路径:%@",sandBoxPathStr);
    
    
    NSLog(@"%@",[[NSBundle mainBundle] bundlePath]);
    //应用应用程序资源包内容方法:
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"apple" ofType:@"png"];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
