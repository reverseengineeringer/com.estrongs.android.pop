.class public Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:F

.field private b:Landroid/os/Handler;

.field private c:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

.field private d:Lcom/dianxinos/lockscreen/ui/RealTimeView;

.field private e:Lcom/dianxinos/lockscreen/ui/SDCardView;

.field private f:Lcom/dianxinos/lockscreen/ui/BatteryCardView;

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/TextView;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->i:Z

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->a(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->g:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->b:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->i:Z

    invoke-direct {p0, p1}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->a(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->g:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/dianxinos/lockscreen/ad;->lock_screen_layout:I

    invoke-static {p1, v0, p0}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private d()V
    .locals 2

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_bottom_slide:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->c:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_label:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/a;->j()Z

    move-result v0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/dianxinos/lockscreen/ac;->ls_realtime_view:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/RealTimeView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->d:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->lock_screen_sd_card_view:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/SDCardView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->e:Lcom/dianxinos/lockscreen/ui/SDCardView;

    sget v0, Lcom/dianxinos/lockscreen/ac;->battery_card:I

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/lockscreen/ui/BatteryCardView;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->f:Lcom/dianxinos/lockscreen/ui/BatteryCardView;

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->d:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->a()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->e:Lcom/dianxinos/lockscreen/ui/SDCardView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/SDCardView;->a()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->f:Lcom/dianxinos/lockscreen/ui/BatteryCardView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->a()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->c:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->d:Lcom/dianxinos/lockscreen/ui/RealTimeView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/RealTimeView;->b()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->e:Lcom/dianxinos/lockscreen/ui/SDCardView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/SDCardView;->b()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->f:Lcom/dianxinos/lockscreen/ui/BatteryCardView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/BatteryCardView;->b()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->c:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->c()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->c:Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ui/SlideUnlockHintView;->a()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->d()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->a:F

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->a:F

    sub-float/2addr v0, v1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    invoke-static {p0}, Lcom/nineoldandroids/b/a;->a(Landroid/view/View;)F

    move-result v0

    neg-float v0, v0

    invoke-static {p0, v0}, Lcom/nineoldandroids/b/a;->b(Landroid/view/View;F)V

    :goto_2
    invoke-static {p0}, Lcom/nineoldandroids/b/a;->a(Landroid/view/View;)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {p0, v2}, Lcom/nineoldandroids/b/a;->d(Landroid/view/View;F)V

    goto :goto_1

    :cond_2
    invoke-static {p0, v0}, Lcom/nineoldandroids/b/a;->b(Landroid/view/View;F)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setLockScreenLabel(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUseTouchInside(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dianxinos/lockscreen/ui/HealthChargeSlideView;->i:Z

    return-void
.end method
