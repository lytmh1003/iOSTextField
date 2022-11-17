//
//  ViewController.h
//  UITextField控件
//
//  Created by 李育腾 on 2022/5/29.
//

#import <UIKit/UIKit.h>
// <UITextFieldDelegate> 协议函数

@interface ViewController : UIViewController <UITextFieldDelegate> {
    UITextField * _textField;
    //文本输入区域
    //例如，用户名，密码等需要输入文本文字的内容区域]
    //只能输入单行文字，不能输入或显示多行
    
    // 继承于UIControl 控件
    //于UIControl 继承于 UIView
}

// 定义属性
@property (retain, nonatomic) UITextField* textField;

@end

