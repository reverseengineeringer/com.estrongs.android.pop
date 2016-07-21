.class Lcom/flurry/sdk/gs$b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gs;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/gs;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/gs;Lcom/flurry/sdk/gs$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/gs$b;-><init>(Lcom/flurry/sdk/gs;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadResource: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v0

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->f(Lcom/flurry/sdk/gs;)V

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->g(Lcom/flurry/sdk/gs;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->h(Lcom/flurry/sdk/gs;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Z)Z

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->i(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->c()Lcom/flurry/sdk/he;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->c()V

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->j(Lcom/flurry/sdk/gs;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->i(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->c()Lcom/flurry/sdk/he;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->f()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->j(Lcom/flurry/sdk/gs;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->k(Lcom/flurry/sdk/gs;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->l(Lcom/flurry/sdk/gs;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->m(Lcom/flurry/sdk/gs;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->i(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->b()V

    goto/16 :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished: url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adcontroller index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v2}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/au;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v0

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->f(Lcom/flurry/sdk/gs;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->o(Lcom/flurry/sdk/gs;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gs;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->l(Lcom/flurry/sdk/gs;)I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->l(Lcom/flurry/sdk/gs;)I

    move-result v0

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adding WebView to AdUnityView"

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gs;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->i(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->c()Lcom/flurry/sdk/he;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->f()V

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0, v3}, Lcom/flurry/sdk/gs;->b(Lcom/flurry/sdk/gs;Z)Z

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->h(Lcom/flurry/sdk/gs;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->g(Lcom/flurry/sdk/gs;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->i(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->c()Lcom/flurry/sdk/he;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->f()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->g(Lcom/flurry/sdk/gs;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mraidAdNotSupported"

    invoke-static {v0}, Lcom/flurry/sdk/b;->a(Ljava/lang/String;)Lcom/flurry/sdk/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->i(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/hj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hj;->c()Lcom/flurry/sdk/he;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/he;->a(Lcom/flurry/sdk/bb;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    iget-object v3, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v3}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->k(Lcom/flurry/sdk/gs;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->l(Lcom/flurry/sdk/gs;)I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->m(Lcom/flurry/sdk/gs;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->i(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->b()V

    goto/16 :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageStarted: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v0

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->n(Lcom/flurry/sdk/gs;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->i(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/hj;->c()Lcom/flurry/sdk/he;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/he;->d()V

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0, v4}, Lcom/flurry/sdk/gs;->b(Lcom/flurry/sdk/gs;Z)Z

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0, v4}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;Z)Z

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedError: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->dismissProgressDialog()V

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "market"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v0}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/gs;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "errorCode"

    sget-object v2, Lcom/flurry/sdk/ba;->p:Lcom/flurry/sdk/ba;

    invoke-virtual {v2}, Lcom/flurry/sdk/ba;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "webViewErrorCode"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "failingUrl"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    sget-object v2, Lcom/flurry/sdk/bb;->g:Lcom/flurry/sdk/bb;

    iget-object v3, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v3}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading: url = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v1

    if-eq p1, v1, :cond_2

    :cond_0
    move v3, v0

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->e(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/he;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/he;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/ma;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldOverrideUrlLoading: target url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v1, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v4}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldOverrideUrlLoading: getScheme = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "flurry"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v2, "event"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v4}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Lcom/flurry/sdk/b;->a(Ljava/lang/String;)Lcom/flurry/sdk/bb;

    move-result-object v2

    sget-object v4, Lcom/flurry/sdk/bb;->A:Lcom/flurry/sdk/bb;

    invoke-virtual {v2, v4}, Lcom/flurry/sdk/bb;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v4, v3}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;Z)Z

    iget-object v4, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v4}, Lcom/flurry/sdk/gs;->k(Lcom/flurry/sdk/gs;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v4}, Lcom/flurry/sdk/gs;->p(Lcom/flurry/sdk/gs;)V

    iget-object v4, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v4}, Lcom/flurry/sdk/gs;->q(Lcom/flurry/sdk/gs;)V

    :cond_3
    iget-object v4, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v4}, Lcom/flurry/sdk/gs;->i(Lcom/flurry/sdk/gs;)Lcom/flurry/sdk/hj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/hj;->c()Lcom/flurry/sdk/he;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/flurry/sdk/he;->b(Lcom/flurry/sdk/bb;)V

    iget-object v4, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v4, v2, v1}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Landroid/net/Uri;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/lt;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v4, "requiresCallComplete"

    const-string v5, "true"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    iget-object v5, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v5}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v5, v0}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    sget-object v4, Lcom/flurry/sdk/bb;->h:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v6}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6, v0}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v1}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->l()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v2}, Lcom/flurry/sdk/ma;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "shouldOverrideUrlLoading: isMarketUrl "

    invoke-static {v7, v1, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v1}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/flurry/sdk/fi;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    :goto_2
    if-nez v1, :cond_5

    invoke-static {v2}, Lcom/flurry/sdk/ma;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v1}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "shouldOverrideUrlLoading: isGooglePlayUrl "

    invoke-static {v7, v1, v4}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v1}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/flurry/sdk/fi;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    :cond_5
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    sget-object v2, Lcom/flurry/sdk/bb;->S:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v5}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading: loadUrl doGenericLaunch "

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->o()Lcom/flurry/sdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v1}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v4}, Lcom/flurry/sdk/gs;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v5}, Lcom/flurry/sdk/gs;->r(Lcom/flurry/sdk/gs;)Z

    move-result v6

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/s;ZZ)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->c(Lcom/flurry/sdk/gs;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shouldOverrideUrlLoading: doGenericLaunch "

    invoke-static {v7, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->o()Lcom/flurry/sdk/g;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v1}, Lcom/flurry/sdk/gs;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v4}, Lcom/flurry/sdk/gs;->getAdObject()Lcom/flurry/sdk/s;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/gs$b;->a:Lcom/flurry/sdk/gs;

    invoke-static {v5}, Lcom/flurry/sdk/gs;->r(Lcom/flurry/sdk/gs;)Z

    move-result v6

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/sdk/g;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/sdk/s;ZZ)V

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto/16 :goto_2

    :cond_9
    move-object v2, p2

    goto/16 :goto_1
.end method
