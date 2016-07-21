.class Lcom/facebook/ads/internal/view/a$b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/a;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a$b;->a:Lcom/facebook/ads/internal/view/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/view/a;Lcom/facebook/ads/internal/view/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/a$b;-><init>(Lcom/facebook/ads/internal/view/a;)V

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
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a$b;->a:Lcom/facebook/ads/internal/view/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a;->a(Lcom/facebook/ads/internal/view/a;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
