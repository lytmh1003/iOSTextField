//
//  ViewController.m
//  UITextField控件
//
//  Created by 李育腾 on 2022/5/29.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textField = _textField;
// self.textField 或者 _textField

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.textField = [[UITextField alloc] init];
    
    self.textField.frame = CGRectMake(100, 240, 180, 40);
    
    //设置内容文字
    self.textField.text = @" 用户名 ";
    
    //设置字体大小
    self.textField.font = [UIFont systemFontOfSize: 18];
    
    // 设置字体颜色
    self.textField.textColor = [UIColor blueColor];
    
//设置边框风格
    //UITextBorderStyleRoundedRect 圆角风格--默认风格
    //UITextBorderStyleLine 线框风格
    //UITextBorderStyleBezel bezel 线框
    //UITextBorderStyleNone 无边框风格
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    //
// 设置虚拟键盘风格
// 不同情况 不同风格
    // UIKeyboardTypeDefault 默认风格
    // UIKeyboardTypeNamePhonePad 字母和数字组合风格
    //UIKeyboardTypeNumberPad 纯数字风格
    self.textField.keyboardType = UIKeyboardTypeDefault;
    
    
    // 提示文字信息
    // 当text 属性为空，显示此条信息
    // 浅灰色属性
    self.textField.placeholder = @"请输入用户名";
    
//是否作为密码输入
    // YES作为密码 -- 加密
    // NO 不加密 -- 显示输入的文字
    self.textField.secureTextEntry = YES;
    
    [self.view addSubview:_textField];
    
    //设置协议代理
//    self.textField.delegate = self;
}



//// 点击空白处调用此函数
-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // 使 虚拟键盘 回收
    // 不再作为第一消息响应
    [self.textField resignFirstResponder] ;
}

// UITextFieldDelegate 的协议函数 -4个
//

-(void) textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"开始编辑！");
}

-(void) textFieldDidEndEditing:(UITextField *)textField {
    // 当我们输入密码结束的时候 密码清空
    self.textField.text = @"";


    NSLog(@"编辑结束！");
}

//是否可以输入
// 返回值为YES 可以
// NO 不能输入文字
- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
    // NO 的时候 无法输入 -权限不够
}

//是否可以结束输入
// 返回值为YES 可以结束输入
// NO 不能输入文字
-(BOOL) textFieldShouldEndEditing:(UITextField *)textField {
    return YES;

    // NO的时候 无法收回键盘
}
////
@end
