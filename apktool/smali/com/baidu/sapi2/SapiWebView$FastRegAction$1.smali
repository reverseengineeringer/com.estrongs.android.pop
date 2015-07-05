.class Lcom/baidu/sapi2/SapiWebView$FastRegAction$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Lcom/baidu/sapi2/SapiWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$1;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$1;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$FastRegAction$1;->b:Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView$FastRegAction;->b(Lcom/baidu/sapi2/SapiWebView$FastRegAction;Z)Z

    return-void
.end method
