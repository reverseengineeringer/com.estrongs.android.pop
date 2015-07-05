.class Lcom/estrongs/android/ui/pcs/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/SapiWebView$OnBackCallback;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;

.field final synthetic b:Lcom/estrongs/android/ui/pcs/SocialLoginActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/SocialLoginActivity;Lcom/baidu/sapi2/SapiWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ao;->b:Lcom/estrongs/android/ui/pcs/SocialLoginActivity;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/ao;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ao;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ao;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->goBack()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ao;->b:Lcom/estrongs/android/ui/pcs/SocialLoginActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->finish()V

    goto :goto_0
.end method
