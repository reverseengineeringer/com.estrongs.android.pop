.class public Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/dianxinos/lockscreen/ui/i;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    new-instance v0, Lcom/dianxinos/lockscreen/ui/i;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/ui/i;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a:Lcom/dianxinos/lockscreen/ui/i;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a:Lcom/dianxinos/lockscreen/ui/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a:Lcom/dianxinos/lockscreen/ui/i;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/i;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a:Lcom/dianxinos/lockscreen/ui/i;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/i;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a:Lcom/dianxinos/lockscreen/ui/i;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/i;->c()V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a:Lcom/dianxinos/lockscreen/ui/i;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/i;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a:Lcom/dianxinos/lockscreen/ui/i;

    invoke-virtual {v0, p1}, Lcom/dianxinos/lockscreen/ui/i;->a(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a:Lcom/dianxinos/lockscreen/ui/i;

    invoke-virtual {v0, p1}, Lcom/dianxinos/lockscreen/ui/i;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a:Lcom/dianxinos/lockscreen/ui/i;

    invoke-virtual {v0, p1}, Lcom/dianxinos/lockscreen/ui/i;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a:Lcom/dianxinos/lockscreen/ui/i;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/i;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->b:Z

    return-void
.end method

.method public setListener(Lcom/dianxinos/lockscreen/ui/j;)V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a:Lcom/dianxinos/lockscreen/ui/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/LockScreenDrawerView;->a:Lcom/dianxinos/lockscreen/ui/i;

    invoke-virtual {v0, p1}, Lcom/dianxinos/lockscreen/ui/i;->a(Lcom/dianxinos/lockscreen/ui/j;)V

    :cond_0
    return-void
.end method
