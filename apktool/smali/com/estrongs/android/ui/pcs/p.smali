.class Lcom/estrongs/android/ui/pcs/p;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/p;->a:Lcom/estrongs/android/ui/pcs/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sget-object v1, Lcom/baidu/sapi2/utils/enums/SocialType;->WEIXIN:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/p;->a:Lcom/estrongs/android/ui/pcs/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/l;->b(Lcom/estrongs/android/ui/pcs/l;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "social_type"

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/baidu/sapi2/utils/enums/SocialType;->getSocialType(I)Lcom/baidu/sapi2/utils/enums/SocialType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/p;->a:Lcom/estrongs/android/ui/pcs/l;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/l;->b(Lcom/estrongs/android/ui/pcs/l;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
