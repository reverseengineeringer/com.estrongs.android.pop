.class Lcom/baidu/sapi2/SapiWebView$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$7;->f:Lcom/baidu/sapi2/SapiWebView;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/sapi2/SapiWebView$7;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/sapi2/SapiWebView$7;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/sapi2/SapiWebView$7;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/sapi2/SapiWebView$7;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$7;->f:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$7;->f:Lcom/baidu/sapi2/SapiWebView;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$7;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/sapi2/SapiWebView$7;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/sapi2/SapiWebView$7;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/sapi2/SapiWebView$7;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
