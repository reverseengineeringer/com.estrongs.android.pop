.class Lcom/flurry/sdk/ex$a;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ex;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ex$a;->a:Lcom/flurry/sdk/ex;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/ex;Lcom/flurry/sdk/ex$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ex$a;-><init>(Lcom/flurry/sdk/ex;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ex$a;->a:Lcom/flurry/sdk/ex;

    invoke-static {v0}, Lcom/flurry/sdk/ex;->c(Lcom/flurry/sdk/ex;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/flurry/sdk/ex$a;->a:Lcom/flurry/sdk/ex;

    invoke-static {v0}, Lcom/flurry/sdk/ex;->c(Lcom/flurry/sdk/ex;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/flurry/sdk/em;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/ex;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auth token is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/ex$a;->a:Lcom/flurry/sdk/ex;

    iget-object v1, p0, Lcom/flurry/sdk/ex$a;->a:Lcom/flurry/sdk/ex;

    invoke-static {v1}, Lcom/flurry/sdk/ex;->a(Lcom/flurry/sdk/ex;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ex;->removeView(Landroid/view/View;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ex$a;->a:Lcom/flurry/sdk/ex;

    invoke-static {v1}, Lcom/flurry/sdk/ex;->b(Lcom/flurry/sdk/ex;)Lcom/flurry/sdk/ex$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/flurry/sdk/ex$b;->a(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
