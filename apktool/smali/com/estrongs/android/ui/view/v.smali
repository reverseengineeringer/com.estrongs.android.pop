.class Lcom/estrongs/android/ui/view/v;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Lcom/estrongs/android/ui/view/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/v;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0, p2}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->c(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->f(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Lcom/estrongs/android/ui/view/u;

    move-result-object v0

    iget-boolean v0, v0, Lcom/estrongs/android/ui/view/u;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0, p2}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->d(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x12c

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/ui/view/w;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/view/w;-><init>(Lcom/estrongs/android/ui/view/v;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "box"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "https://localhost"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    const-string v2, "code"

    invoke-static {v0, p2, v2}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onedrive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "kuaipan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vdisk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    const-string v3, "http://www.estrongs.com"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "kuaipan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    const-string v2, "oauth_token"

    invoke-static {v0, p2, v2}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    const-string v2, "code"

    invoke-static {v0, p2, v2}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gdrive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "http://localhost"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    const-string v2, "code"

    invoke-static {v0, p2, v2}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dropbox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "http://localhost"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    const-string v2, "oauth_token"

    invoke-static {v0, p2, v2}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "megacloud"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "http://localhost"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    const-string v2, "oauth_token"

    invoke-static {v0, p2, v2}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    const-string v3, "oauth_verifier"

    invoke-static {v2, p2, v3}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->e:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_9
    move v1, v2

    goto/16 :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->g(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0, p1, p2, p3}, Lcom/estrongs/android/util/ah;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "openapi.qzone.qq.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/v;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
