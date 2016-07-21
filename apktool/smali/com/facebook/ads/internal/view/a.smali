.class public Lcom/facebook/ads/internal/view/a;
.super Lcom/facebook/ads/internal/view/e;


# instance fields
.field private final a:Lcom/facebook/ads/internal/view/a$a;

.field private b:Lcom/facebook/ads/internal/adapters/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/view/a$a;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/view/a;->a:Lcom/facebook/ads/internal/view/a$a;

    new-instance v0, Lcom/facebook/ads/internal/view/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/internal/view/a$b;-><init>(Lcom/facebook/ads/internal/view/a;Lcom/facebook/ads/internal/view/a$1;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/a;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-static {p0}, Lcom/facebook/ads/internal/util/h;->b(Landroid/webkit/WebView;)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/a;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/a;->setHorizontalScrollbarOverlay(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/a;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/view/a;->setVerticalScrollbarOverlay(Z)V

    new-instance v0, Lcom/facebook/ads/internal/view/a$c;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/a$c;-><init>(Lcom/facebook/ads/internal/view/a;)V

    const-string v1, "AdControl"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/view/a;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/a;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/internal/view/a$1;

    invoke-direct {v2, p0, p2}, Lcom/facebook/ads/internal/view/a$1;-><init>(Lcom/facebook/ads/internal/view/a;Lcom/facebook/ads/internal/view/a$a;)V

    invoke-direct {v0, v1, p0, p3, v2}, Lcom/facebook/ads/internal/adapters/e;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/facebook/ads/internal/adapters/e$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/a;->b:Lcom/facebook/ads/internal/adapters/e;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/a;)Lcom/facebook/ads/internal/view/a$a;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a;->a:Lcom/facebook/ads/internal/view/a$a;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/a;)Lcom/facebook/ads/internal/adapters/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a;->b:Lcom/facebook/ads/internal/adapters/e;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/e;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/adapters/e;->b(I)V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a;->b:Lcom/facebook/ads/internal/adapters/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/e;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/a;->b:Lcom/facebook/ads/internal/adapters/e;

    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/internal/util/h;->a(Landroid/webkit/WebView;)V

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e;->destroy()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/view/e;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a;->a:Lcom/facebook/ads/internal/view/a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a;->a:Lcom/facebook/ads/internal/view/a$a;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/a$a;->a(I)V

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a;->b:Lcom/facebook/ads/internal/adapters/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/e;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a;->b:Lcom/facebook/ads/internal/adapters/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/e;->b()V

    goto :goto_0
.end method
