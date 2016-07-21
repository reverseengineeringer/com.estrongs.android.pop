.class Lcom/estrongs/android/ui/view/s;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

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

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    const v2, 0x7f0802bf

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->finish()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/ui/view/t;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/view/t;-><init>(Lcom/estrongs/android/ui/view/s;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/t;->start()V

    goto :goto_1

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->c(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v2, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->h:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->c(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->c(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->c(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    iget-boolean v0, v0, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->i:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;I)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v0

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->h:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->b(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->d:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->d(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->e(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->c(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->c(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Landroid/webkit/WebView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto/16 :goto_1

    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->e:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0, v4, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto/16 :goto_0

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->f:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0, v4, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kuaipan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "box"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onedrive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gdrive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_0

    const-string v1, "Gdrive_Create"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v0, :cond_0

    const-string v1, "Dropbox_Create"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/ui/view/s;->a:Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;->a(Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "megacloud"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method
