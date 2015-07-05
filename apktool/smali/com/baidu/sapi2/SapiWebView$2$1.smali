.class Lcom/baidu/sapi2/SapiWebView$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView$2;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$2$1;->b:Lcom/baidu/sapi2/SapiWebView$2;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$2$1;->b:Lcom/baidu/sapi2/SapiWebView$2;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$2;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->e(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$2$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/SapiWebView$AuthWidgetCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
