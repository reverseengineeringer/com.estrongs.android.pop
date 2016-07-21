.class public Lcom/dianxinos/lockscreen/ui/AdLinearLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/AdLinearLayout;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/AdLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setKeyguardLockState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/dianxinos/lockscreen/ui/AdLinearLayout;->a:Z

    return-void
.end method
