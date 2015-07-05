.class Lcom/baidu/sapi2/SapiWebView$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$13;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$13;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u7684\u624b\u673a\u88ab\u6076\u610f\u8f6f\u4ef6\u7be1\u6539\uff0c\u53ef\u80fd\u65e0\u6cd5\u4f7f\u7528\u7b2c\u4e09\u65b9\u5e10\u53f7\u767b\u5f55\u767e\u5ea6\uff0c\u8bf7\u66f4\u6362\u5176\u4ed6\u767b\u5f55\u65b9\u5f0f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
