.class public Lcom/dianxinos/lockscreen/ui/LockScreenViewPager;
.super Lcom/dianxinos/lockscreen/ui/DXViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/lockscreen/ui/DXViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/LockScreenViewPager;->setOverScrollMode(I)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
