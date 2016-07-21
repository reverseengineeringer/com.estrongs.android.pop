.class Lcom/facebook/ads/internal/view/c$a;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/c;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/view/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/c$a;->a:Lcom/facebook/ads/internal/view/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/view/c;Lcom/facebook/ads/internal/view/c$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/c$a;-><init>(Lcom/facebook/ads/internal/view/c;)V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    invoke-static {}, Lcom/facebook/ads/internal/util/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "fbad"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "close"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c$a;->a:Lcom/facebook/ads/internal/view/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/c;->a(Lcom/facebook/ads/internal/view/c;)Lcom/facebook/ads/internal/ssp/ANAdRenderer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/ssp/ANAdRenderer$Listener;->onAdClose()V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/internal/view/c$a;->a:Lcom/facebook/ads/internal/view/c;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/c;->a(Lcom/facebook/ads/internal/view/c;)Lcom/facebook/ads/internal/ssp/ANAdRenderer$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/internal/ssp/ANAdRenderer$Listener;->onAdClick()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c$a;->a:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/action/b;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/ads/internal/action/a;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/c$a;->a:Lcom/facebook/ads/internal/view/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/action/a;->a()Lcom/facebook/ads/internal/util/b$a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/view/c;->a(Lcom/facebook/ads/internal/view/c;Lcom/facebook/ads/internal/util/b$a;)Lcom/facebook/ads/internal/util/b$a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/c$a;->a:Lcom/facebook/ads/internal/view/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/ads/internal/view/c;->a(Lcom/facebook/ads/internal/view/c;J)J

    invoke-virtual {v0}, Lcom/facebook/ads/internal/action/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/internal/view/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error executing action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
