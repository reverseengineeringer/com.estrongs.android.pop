.class Lcom/estrongs/android/ui/view/bl;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/view/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/bj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/bl;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->a:Ljava/lang/String;

    const-string v1, "<is_binded>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bl;->a:Ljava/lang/String;

    const-string v2, "</is_binded>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ""

    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bl;->a:Ljava/lang/String;

    const-string v3, "<is_binded>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sinaweibo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Sina_Register"

    const-string v2, "Sina_Register"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thirdpart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bl;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/bd;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v2, v2, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->e(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v3, v3, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v3}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->f(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Z

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v4, v4, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v4}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->g(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v5, v5, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v5}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->h(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/estrongs/android/ui/pcs/aj;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "qq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "QQ_Register"

    const-string v2, "QQ_Register"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "renren"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "RenRen_Register"

    const-string v2, "RenRen_Register"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bl;->b:Lcom/estrongs/android/ui/view/bj;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_2
.end method
