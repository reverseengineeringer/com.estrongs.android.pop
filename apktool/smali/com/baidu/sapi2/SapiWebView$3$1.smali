.class Lcom/baidu/sapi2/SapiWebView$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/baidu/sapi2/SapiWebView$3;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/SapiWebView$3;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$3$1;->b:Lcom/baidu/sapi2/SapiWebView$3;

    iput-object p2, p0, Lcom/baidu/sapi2/SapiWebView$3$1;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$3$1;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
