.class Lcom/estrongs/android/ui/view/z;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const v4, 0x7f080444

    const/16 v2, 0x8

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->a:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    const v2, 0x7f0802bf

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->finish()V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/view/aa;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/view/aa;-><init>(Lcom/estrongs/android/ui/view/z;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/aa;->start()V

    goto :goto_1

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->b:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->e(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v2, v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->c(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->d:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->f(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->g(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->e(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->e(Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_1

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->e:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v1, v0, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;->f:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/z;->a:Lcom/estrongs/android/ui/view/CreateOAuthServiceProvider;

    invoke-static {v0, v4, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto/16 :goto_0
.end method
