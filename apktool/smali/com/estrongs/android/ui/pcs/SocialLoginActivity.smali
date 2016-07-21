.class public Lcom/estrongs/android/ui/pcs/SocialLoginActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/baidu/sapi2/utils/enums/SocialType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    const v0, 0x7f0e0494

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiWebView;

    invoke-static {p0, v0}, Lcom/estrongs/android/ui/pcs/an;->a(Landroid/content/Context;Lcom/baidu/sapi2/SapiWebView;)V

    new-instance v1, Lcom/estrongs/android/ui/pcs/ar;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/pcs/ar;-><init>(Lcom/estrongs/android/ui/pcs/SocialLoginActivity;Lcom/baidu/sapi2/SapiWebView;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->setOnBackCallback(Lcom/baidu/sapi2/SapiWebView$OnBackCallback;)V

    new-instance v1, Lcom/estrongs/android/ui/pcs/as;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/as;-><init>(Lcom/estrongs/android/ui/pcs/SocialLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->setOnFinishCallback(Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;)V

    new-instance v1, Lcom/estrongs/android/ui/pcs/at;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/at;-><init>(Lcom/estrongs/android/ui/pcs/SocialLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->setAuthorizationListener(Lcom/baidu/sapi2/shell/listener/AuthorizationListener;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->a:Lcom/baidu/sapi2/utils/enums/SocialType;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/sapi2/SapiWebView;->loadSocialLogin(Lcom/baidu/sapi2/utils/enums/SocialType;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030106

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "social_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/SocialType;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->a:Lcom/baidu/sapi2/utils/enums/SocialType;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->a:Lcom/baidu/sapi2/utils/enums/SocialType;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->a()V

    return-void
.end method
