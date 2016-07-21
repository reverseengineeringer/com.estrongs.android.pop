.class public Lcom/flurry/sdk/gd;
.super Lcom/flurry/sdk/gh;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/gh;-><init>(Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/gt$a;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/gd;->a:I

    iget-object v0, p0, Lcom/flurry/sdk/gd;->b:Lcom/flurry/sdk/go;

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/go;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/go;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/sdk/gd;->b:Lcom/flurry/sdk/go;

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gd;->b:Lcom/flurry/sdk/go;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gd;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/go;->a(Lcom/flurry/sdk/go$a;)V

    :cond_1
    invoke-interface {p2}, Lcom/flurry/sdk/s;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    iget-boolean v0, v0, Lcom/flurry/sdk/co;->q:Z

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/gd;->setAutoPlay(Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;FF)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/gh;->a(Ljava/lang/String;FF)V

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/flurry/sdk/gd;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/gd;->a:I

    :cond_0
    return-void
.end method

.method protected getViewParams()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/gd;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/gd;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->m()Lcom/flurry/sdk/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/gk;->k()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/gd;->a:I

    :cond_0
    iget v0, p0, Lcom/flurry/sdk/gd;->a:I

    return v0
.end method

.method public initLayout()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gd;->b:Lcom/flurry/sdk/go;

    invoke-virtual {v1}, Lcom/flurry/sdk/go;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/gd;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/gd;->showProgressDialog()V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/flurry/sdk/gh;->setAutoPlay(Z)V

    return-void
.end method
