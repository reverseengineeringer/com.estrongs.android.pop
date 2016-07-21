.class final Lcom/flurry/sdk/ex$c;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ex;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ex$c;->a:Lcom/flurry/sdk/ex;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/ex;Lcom/flurry/sdk/ex$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ex$c;-><init>(Lcom/flurry/sdk/ex;)V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/ex$c;->a:Lcom/flurry/sdk/ex;

    invoke-static {v0}, Lcom/flurry/sdk/ex;->c(Lcom/flurry/sdk/ex;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/ex$c;->a:Lcom/flurry/sdk/ex;

    invoke-static {v0}, Lcom/flurry/sdk/ex;->c(Lcom/flurry/sdk/ex;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ex$c;->a:Lcom/flurry/sdk/ex;

    invoke-static {v0}, Lcom/flurry/sdk/ex;->c(Lcom/flurry/sdk/ex;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/ex$c;->a:Lcom/flurry/sdk/ex;

    invoke-static {v0}, Lcom/flurry/sdk/ex;->c(Lcom/flurry/sdk/ex;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/ex$c;->a:Lcom/flurry/sdk/ex;

    invoke-static {v0}, Lcom/flurry/sdk/ex;->c(Lcom/flurry/sdk/ex;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
