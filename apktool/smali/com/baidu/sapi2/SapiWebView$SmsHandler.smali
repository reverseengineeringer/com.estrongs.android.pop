.class Lcom/baidu/sapi2/SapiWebView$SmsHandler;
.super Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method private constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->c:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/SapiWebView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiWebView$SmsHandler;-><init>(Lcom/baidu/sapi2/SapiWebView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "javascript:%s(\'%s\',\'%s\');"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->c:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->c:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->i(Lcom/baidu/sapi2/SapiWebView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/sapi2/SapiWebView$SmsHandler$1;

    invoke-direct {v0, p0}, Lcom/baidu/sapi2/SapiWebView$SmsHandler$1;-><init>(Lcom/baidu/sapi2/SapiWebView$SmsHandler;)V

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->c:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->h(Lcom/baidu/sapi2/SapiWebView;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->c:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->j(Lcom/baidu/sapi2/SapiWebView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
