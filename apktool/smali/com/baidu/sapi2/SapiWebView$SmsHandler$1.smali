.class Lcom/baidu/sapi2/SapiWebView$SmsHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView$SmsHandler;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$SmsHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$SmsHandler$1;->a:Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SmsHandler$1;->a:Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->c:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SmsHandler$1;->a:Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->c:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->i(Lcom/baidu/sapi2/SapiWebView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
