//
//  ViewController.m
//  ZMWImagePickerTest
//
//  Created by mac on 16/3/25.
//  Copyright © 2016年 Seven. All rights reserved.
//

#import "ViewController.h"
#import <DNImagePickerController.h>
@interface ViewController ()<DNImagePickerControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
//图片
- (IBAction)pic:(id)sender {
    
    DNImagePickerController *pickerController=[[DNImagePickerController alloc]init];
    pickerController.imagePickerDelegate=self;
    [self presentViewController:pickerController animated:YES completion:nil];
}

#pragma mark==DNImagePickerControllerDelegate
//点击send按钮调用的方法
-(void)dnImagePickerController:(DNImagePickerController *)imagePicker sendImages:(NSArray *)imageAssets isFullImage:(BOOL)fullImage imageArray:(NSArray *)imageArray
{
    //imageArray==被选中的图片数组
    //fullImage==是否是原图
    NSLog(@"imageArray===%@ fullImage========%d",imageArray,fullImage);
}
//点击取消按钮调用的方法
-(void)dnImagePickerControllerDidCancel:(DNImagePickerController *)imagePicker
{
    [self dismissViewControllerAnimated:YES completion:nil];
}








- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
