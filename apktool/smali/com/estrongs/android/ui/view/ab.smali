.class Lcom/estrongs/android/ui/view/ab;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Lcom/estrongs/android/ui/view/x;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/ab;-><init>(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, " www.estrongs.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fbconnect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->b()Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->b()Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a()V

    :cond_0
    return-void

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "box"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "http://127.0.0.1:50767"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    const-string v3, "auth_token"

    invoke-static {v1, p2, v3}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v2

    sget v3, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "token"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "verifier"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Flickr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "http://www.estrongs.com"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    const-string v1, "oauth_token"

    invoke-static {v0, p2, v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    const-string v3, "oauth_verifier"

    invoke-static {v0, p2, v3}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Instagram"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "http://www.estrongs.com"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    const-string v3, "code"

    invoke-static {v1, p2, v3}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Facebook"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "fbconnect://success"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    const-string v3, "access_token"

    invoke-static {v1, p2, v3}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->d:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_5
    move v2, v1

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "fbconnect://success"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->d:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->d(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    const v2, 0x7f0b024c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0, p1, p2, p3}, Lcom/estrongs/android/util/ac;->a(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "fbconnect://success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    const-string v1, "access_token"

    invoke-static {v0, p2, v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "token"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->d:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ab;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
