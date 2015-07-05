.class Lcom/estrongs/android/ui/pcs/k;
.super Lcom/baidu/sapi2/shell/listener/AuthorizationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/j;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-direct {p0}, Lcom/baidu/sapi2/shell/listener/AuthorizationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/j;->a(Lcom/estrongs/android/ui/pcs/j;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSession()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v1

    iget-object v0, v1, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v0, v1, Lcom/baidu/sapi2/SapiAccount;->email:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v0, v1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/j;->b(Lcom/estrongs/android/ui/pcs/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/j;->c(Lcom/estrongs/android/ui/pcs/j;)Z

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-static {v3}, Lcom/estrongs/android/ui/pcs/j;->d(Lcom/estrongs/android/ui/pcs/j;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-static {v4}, Lcom/estrongs/android/ui/pcs/j;->e(Lcom/estrongs/android/ui/pcs/j;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/estrongs/android/ui/pcs/aj;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/j;->c(Lcom/estrongs/android/ui/pcs/j;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/j;->f(Lcom/estrongs/android/ui/pcs/j;)Lcom/estrongs/android/ui/pcs/r;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/j;->f(Lcom/estrongs/android/ui/pcs/j;)Lcom/estrongs/android/ui/pcs/r;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/pcs/r;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/j;->f(Lcom/estrongs/android/ui/pcs/j;)Lcom/estrongs/android/ui/pcs/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/r;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/j;->a(Lcom/estrongs/android/ui/pcs/j;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/k;->a:Lcom/estrongs/android/ui/pcs/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/j;->dismiss()V

    goto/16 :goto_0
.end method
