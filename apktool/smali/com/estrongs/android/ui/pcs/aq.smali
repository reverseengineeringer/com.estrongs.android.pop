.class Lcom/estrongs/android/ui/pcs/aq;
.super Lcom/baidu/sapi2/shell/listener/AuthorizationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/SocialLoginActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/SocialLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/aq;->a:Lcom/estrongs/android/ui/pcs/SocialLoginActivity;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/listener/AuthorizationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "result_msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/aq;->a:Lcom/estrongs/android/ui/pcs/SocialLoginActivity;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/aq;->a:Lcom/estrongs/android/ui/pcs/SocialLoginActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->finish()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/aq;->a:Lcom/estrongs/android/ui/pcs/SocialLoginActivity;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->setResult(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/aq;->a:Lcom/estrongs/android/ui/pcs/SocialLoginActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->finish()V

    return-void
.end method
