.class public Lcom/flurry/sdk/gn;
.super Lcom/flurry/sdk/gp;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/flurry/sdk/gp$b;

.field private d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/da;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/gn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/gn;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/gp$b;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/gp$b;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/da;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gp;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/flurry/sdk/gn;->d:I

    iput v0, p0, Lcom/flurry/sdk/gn;->e:I

    iput-object p1, p0, Lcom/flurry/sdk/gn;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/flurry/sdk/gn;->c:Lcom/flurry/sdk/gp$b;

    iput-object p3, p0, Lcom/flurry/sdk/gn;->g:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/flurry/sdk/gp$b;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/flurry/sdk/gn;->c:Lcom/flurry/sdk/gp$b;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gn;->b:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/flurry/sdk/gn;->d:I

    iget v2, p0, Lcom/flurry/sdk/gn;->e:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/flurry/sdk/gn;->b:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gn;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private j()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gn;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/flurry/sdk/gn;->c:Lcom/flurry/sdk/gp$b;

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/gn;->a(Landroid/content/Context;Lcom/flurry/sdk/gp$b;)V

    iget-object v0, p0, Lcom/flurry/sdk/gn;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(FF)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/gn;->d:I

    iput p2, p0, Lcom/flurry/sdk/gn;->e:I

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gn;->show(I)V

    goto :goto_0

    :pswitch_2
    const v0, 0xc350

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gn;->show(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/sdk/gn;->hide()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final setAnchorView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/flurry/sdk/gp;->setAnchorView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/flurry/sdk/gn;->d:I

    iget v2, p0, Lcom/flurry/sdk/gn;->e:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gn;->removeAllViews()V

    invoke-direct {p0}, Lcom/flurry/sdk/gn;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gn;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/gn;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/flurry/sdk/gp;->show(I)V

    :cond_0
    return-void
.end method

.method public show(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/gn;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/flurry/sdk/gp;->show(I)V

    :cond_0
    return-void
.end method
