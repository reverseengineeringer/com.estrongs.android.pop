.class Lcom/estrongs/android/ui/view/x;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getOAuthVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "1.0a"

    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->b(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getRequestTokenUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/estrongs/android/pop/spfs/OAuthUtil;->getLine(Ljava/net/URL;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/spfs/OAuthUtil;->getDataAsMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Empty Response"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->d:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    instance-of v3, v0, Ljava/net/UnknownHostException;

    if-nez v3, :cond_1

    instance-of v0, v0, Ljava/net/ConnectException;

    if-nez v0, :cond_1

    const-string v0, "timed out"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->d(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    const v2, 0x7f0b024c

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "oauth_callback_confirmed"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "oauth_callback_confirmed"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "oauth_token"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    const-string v3, "oauth_token_secret"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->b(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getOAuthLoginUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->b:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/estrongs/android/pop/spfs/SPFileSystem;->getOAuthLoginUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->b:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/x;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
