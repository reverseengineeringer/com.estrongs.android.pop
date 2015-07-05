.class public final Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/SapiWebView;


# direct methods
.method public constructor <init>(Lcom/baidu/sapi2/SapiWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public action_fast_reg()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->k(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$FastRegHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$9;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$9;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->loadFastReg()V

    goto :goto_0
.end method

.method public action_forget_pwd()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v1, 0x1

    const/4 v4, 0x0

    new-array v0, v1, [Z

    aput-boolean v4, v0, v4

    new-array v1, v1, [Z

    aput-boolean v4, v1, v4

    iget-object v2, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v3, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$10;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;[Z[Z)V

    invoke-virtual {v2, v3}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    aget-boolean v2, v1, v4

    if-nez v2, :cond_0

    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    aget-boolean v0, v0, v4

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    return-object v0

    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public action_lecai_login()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->u(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$LCLoginHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$12;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$12;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public action_nuomi_login()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->t(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$NMLoginHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$11;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$11;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public action_received_sms_code(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->q(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->q(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    move-result-object v0

    iput-object p1, v0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->q(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    move-result-object v0

    iput-object p2, v0, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->q(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$SmsHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->j(Lcom/baidu/sapi2/SapiWebView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/sapi2/SapiWebView$SmsHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public action_social_qzone_webview()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->s(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->QZONE:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->s(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public action_social_renren_webview()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->s(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->RENREN:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->s(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public action_social_sina_sso()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->loadSinaSSOLogin()V

    return-void
.end method

.method public action_social_sina_weibo_webview()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->s(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->SINA_WEIBO:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->s(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public action_social_tx_weibo_webview()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->s(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->TENCENT_WEIBO:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->s(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public action_social_weixin_sso()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->s(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->WEIXIN:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->s(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public action_unite_verify(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->w(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$UniteVerifyHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$14;

    invoke-direct {v1, p0, p1}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$14;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public action_voice_login()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->v(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$VoiceLoginHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$13;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$13;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public authorized_response(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->authorized_response(Ljava/lang/String;I)V

    return-void
.end method

.method public authorized_response(Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const v3, 0x1adb0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->l(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/baidu/sapi2/SapiWebView;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->m(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$3;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$3;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/baidu/sapi2/SapiWebView;->a(Ljava/lang/String;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->m(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$6;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$6;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    if-ne v1, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->m(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$4;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$4;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->m(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$5;

    invoke-direct {v2, p0, v0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$5;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->n(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiWebView$FastRegAction;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->newReg:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/SapiWebView;->a(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/SapiWebView;->b(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    goto :goto_1

    :cond_6
    iget v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->errorCode:I

    if-ne v1, v3, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1, v0}, Lcom/baidu/sapi2/SapiWebView;->c(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->m(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/listener/AuthorizationListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v2, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$7;

    invoke-direct {v2, p0, v0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$7;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public back()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$2;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$2;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public config_canshare_accounts()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getShareAccounts()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/SapiAccount;->toJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public config_fastlogin_features()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->l(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iget-object v2, v0, Lcom/baidu/sapi2/SapiConfiguration;->fastLoginFeatureList:Ljava/util/List;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->DEVICE_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->DEVICE_LOGIN:Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/c;->a(Landroid/content/Context;)Lcom/baidu/sapi2/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->getStrValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/enums/FastLoginFeature;->getStrValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public config_login_share_strategy()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->l(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getStrValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$1;

    invoke-direct {v1, p0}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$1;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public get_preset_phone_number()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->l(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->presetPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->l(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->presetPhoneNumber:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public loginWithDeviceId()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->y(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->y(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public loginWithQRCode()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->x(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v0}, Lcom/baidu/sapi2/SapiWebView;->x(Lcom/baidu/sapi2/SapiWebView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public sapi_cloud_log_op(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public sapi_cloud_log_op_net(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public set_pass_canceled()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    iget-object v1, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    invoke-static {v1}, Lcom/baidu/sapi2/SapiWebView;->r(Lcom/baidu/sapi2/SapiWebView;)Lcom/baidu/sapi2/shell/response/SapiAccountResponse;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->c(Lcom/baidu/sapi2/SapiWebView;Lcom/baidu/sapi2/shell/response/SapiAccountResponse;)V

    return-void
.end method

.method public unite_verify_result(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;->a:Lcom/baidu/sapi2/SapiWebView;

    new-instance v1, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$8;

    invoke-direct {v1, p0, p1}, Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell$8;-><init>(Lcom/baidu/sapi2/SapiWebView$SapiWebViewShell;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiWebView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
