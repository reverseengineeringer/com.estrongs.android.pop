.class public Lcom/dianxinos/lockscreen/ui/DXViewPager;
.super Landroid/support/v4/view/ViewPager;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->a:Z

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->b:Z

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->d:Landroid/os/Handler;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/DXViewPager;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method

.method private setAutoScroll(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dianxinos/lockscreen/ui/DXViewPager;->scrollTo(II)V

    return-void
.end method


# virtual methods
.method public arrowScroll(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->a:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x11

    if-eq p1, v1, :cond_2

    const/16 v1, 0x42

    if-ne p1, v1, :cond_0

    :cond_2
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->a:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->c:Z

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->d:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->d:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->c:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setBlockTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->b:Z

    return-void
.end method

.method public setInitMessage(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->d:Landroid/os/Handler;

    return-void
.end method

.method public setNoScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->c:Z

    return-void
.end method

.method public setViewTouchMode(Z)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/DXViewPager;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/DXViewPager;->beginFakeDrag()Z

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/dianxinos/lockscreen/ui/DXViewPager;->a:Z

    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/DXViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/DXViewPager;->endFakeDrag()V

    goto :goto_0
.end method
