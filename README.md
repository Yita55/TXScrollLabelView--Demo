# TXScrollLabelView--Demo


使用第三方库[TXScrollLabelView](https://github.com/tingxins/TXScrollLabelView)实现的类似公告栏通知效果


##Example
```
/** Step1: 滚动文字 */
NSString *scrollTitle = @"xxxxxx";

/** Step2: 创建 ScrollLabelView */
TXScrollLabelView *scrollLabelView = [TXScrollLabelView scrollWithTitle:scrollTitle type:TXScrollLabelViewTypeFlipNoRepeat velocity:velocity options:UIViewAnimationOptionCurveEaseInOut];

/** Step3: 设置代理进行回调(Optional) */
scrollLabelView.scrollLabelViewDelegate = self;

/** Step4: 布局(Required) */
scrollLabelView.frame = CGRectMake(50, 100, 300, 30);
[self.view addSubview:scrollLabelView];

/** Step5: 开始滚动(Start scrolling!) */
[scrollLabelView beginScrolling];
```

##实现代理
```
- (void)scrollLabelView:(TXScrollLabelView *)scrollLabelView didClickWithText:(NSString *)text atIndex:(NSInteger)index{

    NSLog(@"%@-----%ld",text,index);

}
```
