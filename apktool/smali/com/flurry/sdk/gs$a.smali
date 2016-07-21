.class final Lcom/flurry/sdk/gs$a;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gs;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/gs;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/gs$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gs$a;-><init>(Lcom/flurry/sdk/gs;)V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 4

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHideCustomView()"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->s(Lcom/flurry/sdk/gs;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->w(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->w(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v2}, Lcom/flurry/sdk/gs;->u(Lcom/flurry/sdk/gs;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->u(Lcom/flurry/sdk/gs;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v2}, Lcom/flurry/sdk/gs;->s(Lcom/flurry/sdk/gs;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->v(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->v(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->v(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->v(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->v(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1, v3}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/he;->stopLoading()V

    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->x(Lcom/flurry/sdk/gs;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ez;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->y(Lcom/flurry/sdk/gs;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0, v3}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0, v3}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0, v3}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Landroid/view/View;)Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 7

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowCustomView(14)"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->s(Lcom/flurry/sdk/gs;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->t(Lcom/flurry/sdk/gs;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->t(Lcom/flurry/sdk/gs;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1, p1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Landroid/view/View;)Landroid/view/View;

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;I)I

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1, p3}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->u(Lcom/flurry/sdk/gs;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->u(Lcom/flurry/sdk/gs;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v2}, Lcom/flurry/sdk/gs;->s(Lcom/flurry/sdk/gs;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v2}, Lcom/flurry/sdk/gs;->u(Lcom/flurry/sdk/gs;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->v(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    new-instance v2, Lcom/flurry/sdk/gs$a$1;

    const v3, 0x1030011

    invoke-direct {v2, p0, v0, v3, v0}, Lcom/flurry/sdk/gs$a$1;-><init>(Lcom/flurry/sdk/gs$a;Landroid/content/Context;ILandroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->v(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->v(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/gs$a$2;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gs$a$2;-><init>(Lcom/flurry/sdk/gs$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->v(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/gs$a$3;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/gs$a$3;-><init>(Lcom/flurry/sdk/gs$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->v(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->v(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_2
    invoke-static {v0, p2, v6}, Lcom/flurry/sdk/ez;->a(Landroid/app/Activity;IZ)Z

    goto/16 :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowCustomView(7)"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/flurry/sdk/gs$a;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method
