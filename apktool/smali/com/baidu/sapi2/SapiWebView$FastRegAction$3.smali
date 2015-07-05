.class Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Lcom/baidu/sapi2/SapiWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->e(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v2}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->f(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v2, v1, v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->h(Lcom/baidu/sapi2/SapiWebView;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->c(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$3;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->b(Lcom/baidu/sapi2/SapiWebView$FastRegAction;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
