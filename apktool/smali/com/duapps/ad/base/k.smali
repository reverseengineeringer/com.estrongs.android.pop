.class public Lcom/duapps/ad/base/k;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    sget v0, Lcom/dianxinos/a/a/g;->Loading_Dialog_Fullscreen:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/duapps/ad/base/k;->d:Landroid/content/Context;

    sget v0, Lcom/dianxinos/a/a/e;->toolbox_loadingdialog_circle:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/base/k;->setContentView(I)V

    sget v0, Lcom/dianxinos/a/a/d;->loading_text:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/base/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duapps/ad/base/k;->a:Landroid/widget/TextView;

    sget v0, Lcom/dianxinos/a/a/d;->loading_circle:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/base/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duapps/ad/base/k;->c:Landroid/widget/ImageView;

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/dianxinos/a/a/d;->view_board:I

    invoke-virtual {p0, v0}, Lcom/duapps/ad/base/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dianxinos/a/a/c;->loading_dialog_black_board:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private a()V
    .locals 7

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/duapps/ad/base/k;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/base/k;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duapps/ad/base/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/base/k;->d:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/base/k;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/duapps/ad/base/k;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/duapps/ad/base/k;->b()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-direct {p0}, Lcom/duapps/ad/base/k;->a()V

    invoke-direct {p0}, Lcom/duapps/ad/base/k;->b()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/duapps/ad/base/k;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method
