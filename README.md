# Gesture

iOS手势识别器(UIGestureRecognizer)
点击手势 (UITapGestureRecognizer)
滑动手势 (UISwipeGestureRecognizer)
旋转手势 (UIRotationGestureRecognizer)
捏合手势 (UIPinchGestureRecognizer)
长按手势 (UILongPressGestureRecognizer)
平移手势 (UIPanGestureRecognizer) 屏幕边缘平移手势 (UIScreenEdgePanGestureRecognizer)
UIGestureRecognizer
￼￼￼￼￼￼￼
￼- initWithTarget:action:
- addTarget:action:
- removeTarget:action:
￼
￼- locationInView:
- locationOfTouch:inView:
- numberOfTouches
￼
￼state
view
enable cancelsTouchesInView delaysTouchesBegin
UITapGestureRecognizer
numberOfTapsRequired numberOfTouchesRequired
UISwipeGestureRecognizer
￼￼￼￼￼￼￼￼￼￼- requireGestureRecognizerToFail: (eg:􏰲􏰵􏰂􏰬􏰸􏰵􏰜􏰍)
￼￼￼
direction numberOfTouchesRequired
UIRotationGestureRecognizer
rotation (这是旋转角度的绝对值,不是增量值,如果需要增量值,需要每次rotation置0) velocity (每秒多少弧长,radius为1)
UIPinchGestureRecognizer
scale (如果需要获得增量值,也需要每次scale置1) velocity (每秒多少scale)
UILongPressGestureRecognizer
minimumPressDuration numberOfTouchesRequired numberOfTapsRequired alowableMovement
UIPanGestureRecognizer
maximumNumberOfTouches minimumNumberOfTouches

￼￼￼￼￼￼￼￼￼￼￼￼￼
￼- translationInView:
- setTranslation:inView:
- velocityInView: (􏰆􏰉􏰋CGPoint􏰃􏰯􏰀􏰄􏰪􏰩􏰋􏰊􏰘􏰶x􏰚y􏰓􏰭􏰃􏰴􏰐􏰆􏰉)
