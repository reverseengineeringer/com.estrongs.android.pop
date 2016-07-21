.class Lcom/estrongs/android/ui/pcs/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/SapiWebView$OnBackCallback;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/n;->a:Lcom/estrongs/android/ui/pcs/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/n;->a:Lcom/estrongs/android/ui/pcs/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/l;->g(Lcom/estrongs/android/ui/pcs/l;)Lcom/baidu/sapi2/SapiWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/n;->a:Lcom/estrongs/android/ui/pcs/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/l;->g(Lcom/estrongs/android/ui/pcs/l;)Lcom/baidu/sapi2/SapiWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/n;->a:Lcom/estrongs/android/ui/pcs/l;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/l;->dismiss()V

    goto :goto_0
.end method
