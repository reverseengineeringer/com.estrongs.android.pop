.class Lcom/duapps/ad/stats/k;
.super Landroid/webkit/WebViewClient;

# interfaces
.implements Lcom/duapps/ad/stats/i;


# instance fields
.field a:Lcom/duapps/ad/stats/p;

.field b:Landroid/webkit/WebView;

.field final synthetic c:Lcom/duapps/ad/stats/c;

.field private d:Ljava/lang/Runnable;

.field private e:Ljava/lang/Runnable;

.field private volatile f:Z

.field private volatile g:Z

.field private volatile h:Z


# direct methods
.method public constructor <init>(Lcom/duapps/ad/stats/c;Lcom/duapps/ad/stats/p;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Lcom/duapps/ad/stats/l;

    invoke-direct {v0, p0}, Lcom/duapps/ad/stats/l;-><init>(Lcom/duapps/ad/stats/k;)V

    iput-object v0, p0, Lcom/duapps/ad/stats/k;->d:Ljava/lang/Runnable;

    new-instance v0, Lcom/duapps/ad/stats/m;

    invoke-direct {v0, p0}, Lcom/duapps/ad/stats/m;-><init>(Lcom/duapps/ad/stats/k;)V

    iput-object v0, p0, Lcom/duapps/ad/stats/k;->e:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/duapps/ad/stats/k;->f:Z

    iput-boolean v1, p0, Lcom/duapps/ad/stats/k;->g:Z

    iput-boolean v1, p0, Lcom/duapps/ad/stats/k;->h:Z

    iput-object p2, p0, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    return-void
.end method

.method private a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    const-string v0, "SslError"

    invoke-direct {p0, v0}, Lcom/duapps/ad/stats/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] handleError"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v0, v0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v0, v0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/duapps/ad/stats/k;->g:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView]Action canceled."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/u;->g(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/duapps/ad/stats/k;->h:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] already consumed"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] onReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/stats/k;->h:Z

    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    iget-object v2, p0, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    invoke-virtual {v2}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duapps/ad/stats/c;->i(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    invoke-virtual {v0}, Lcom/duapps/ad/stats/c;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/duapps/ad/stats/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/stats/k;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/duapps/ad/stats/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duapps/ad/stats/k;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/duapps/ad/stats/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/stats/k;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/duapps/ad/stats/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/stats/k;->g:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/stats/k;->g:Z

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] Page finished"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v0, v0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v0, v0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/duapps/ad/stats/k;->g:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView]Action canceled."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    invoke-static {v0}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/u;->g(Landroid/content/Context;Lcom/duapps/ad/stats/p;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/duapps/ad/stats/k;->h:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] already consumed"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/duapps/ad/stats/k;->f:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] start TIMEOUT_FINISH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v0, v0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ToolClickHandler"

    const-string v1, "[WebView] onPageStarted."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/duapps/ad/stats/k;->b:Landroid/webkit/WebView;

    iput-boolean v2, p0, Lcom/duapps/ad/stats/k;->f:Z

    iput-boolean v2, p0, Lcom/duapps/ad/stats/k;->h:Z

    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v0, v0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v0, v0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] start TIMEOUT_START: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v0, v0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duapps/ad/stats/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/duapps/ad/stats/k;->a(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ToolClickHandler"

    const-string v2, "[WebView] shouldOverrideUrlLoading."

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v1, v1, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/duapps/ad/stats/k;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v1, v1, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/duapps/ad/stats/k;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/duapps/ad/stats/k;->g:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/duapps/ad/stats/k;->h:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/duapps/ad/stats/k;->f:Z

    if-eqz v1, :cond_4

    :cond_1
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ToolClickHandler"

    const-string v2, "[WebView]Action canceled."

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-boolean v0, p0, Lcom/duapps/ad/stats/k;->h:Z

    :cond_3
    :goto_0
    return v0

    :cond_4
    if-nez p2, :cond_6

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ToolClickHandler"

    const-string v2, "[WebView] null URL."

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v2, p0, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    iget-object v3, p0, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    invoke-virtual {v3}, Lcom/duapps/ad/stats/p;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/duapps/ad/stats/c;->i(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    invoke-virtual {v1}, Lcom/duapps/ad/stats/c;->a()V

    iput-boolean v0, p0, Lcom/duapps/ad/stats/k;->h:Z

    goto :goto_0

    :cond_6
    invoke-static {p2}, Lcom/duapps/ad/stats/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "ToolClickHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WebView] Market URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v2, p0, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    invoke-virtual {v1, v2, p2}, Lcom/duapps/ad/stats/c;->a(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    invoke-virtual {v1, v0}, Lcom/duapps/ad/stats/p;->b(Z)V

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v2, p0, Lcom/duapps/ad/stats/k;->a:Lcom/duapps/ad/stats/p;

    invoke-virtual {v1, v2, p2}, Lcom/duapps/ad/stats/c;->h(Lcom/duapps/ad/stats/p;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    invoke-virtual {v1}, Lcom/duapps/ad/stats/c;->a()V

    iput-boolean v0, p0, Lcom/duapps/ad/stats/k;->h:Z

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->b:Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] Decode URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/duapps/ad/stats/k;->f:Z

    if-nez v0, :cond_b

    invoke-static {}, Lcom/duapps/ad/base/l;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "ToolClickHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WebView] start TIMEOUT_START: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/duapps/ad/stats/k;->c:Lcom/duapps/ad/stats/c;

    iget-object v0, v0, Lcom/duapps/ad/stats/c;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duapps/ad/stats/k;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
