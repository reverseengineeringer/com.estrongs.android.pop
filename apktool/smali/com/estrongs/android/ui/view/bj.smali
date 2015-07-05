.class Lcom/estrongs/android/ui/view/bj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x7

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/ui/view/bk;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/view/bk;-><init>(Lcom/estrongs/android/ui/view/bj;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/bk;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/ui/view/bl;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/view/bl;-><init>(Lcom/estrongs/android/ui/view/bj;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/bl;->start()V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "userinfo"

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    iget-object v2, v2, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-virtual {v1, v4, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sinaweibo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Sina_Login"

    const-string v2, "Sina_Login"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->finish()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "qq"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "QQ_Login"

    const-string v2, "QQ_Login"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "renren"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "RenRen_Login"

    const-string v2, "RenRen_Login"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->i(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    if-lez v1, :cond_7

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-static {v2, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->b(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->i(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->i(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->i(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->d(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->j(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->k(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->i(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->i(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->l(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->m(Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    const v1, 0x7f0b0402

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-virtual {v1, v4, v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/bj;->a:Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;->finish()V

    goto/16 :goto_0
.end method
