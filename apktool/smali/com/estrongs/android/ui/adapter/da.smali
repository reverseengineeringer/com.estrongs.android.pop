.class Lcom/estrongs/android/ui/adapter/da;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/cz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/cz;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/da;->a:Lcom/estrongs/android/ui/adapter/cz;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/da;->a:Lcom/estrongs/android/ui/adapter/cz;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cz;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "apk://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/da;->a:Lcom/estrongs/android/ui/adapter/cz;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cz;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "apk://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/da;->a:Lcom/estrongs/android/ui/adapter/cz;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cz;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "app://user"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/da;->a:Lcom/estrongs/android/ui/adapter/cz;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cz;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "app://user"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/da;->a:Lcom/estrongs/android/ui/adapter/cz;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cz;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "app://user"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/da;->a:Lcom/estrongs/android/ui/adapter/cz;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cz;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "app://user"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/da;->a:Lcom/estrongs/android/ui/adapter/cz;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cz;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "app://system"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/da;->a:Lcom/estrongs/android/ui/adapter/cz;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cz;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "app://system"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/da;->a:Lcom/estrongs/android/ui/adapter/cz;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cz;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/w;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/estrongs/android/ui/dialog/is;

    iget-object v1, p0, Lcom/estrongs/android/ui/adapter/da;->a:Lcom/estrongs/android/ui/adapter/cz;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/cz;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v1, v1, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/is;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/is;->show()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/ui/adapter/db;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/adapter/db;-><init>(Lcom/estrongs/android/ui/adapter/da;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/da;->a:Lcom/estrongs/android/ui/adapter/cz;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cz;->a:Lcom/estrongs/android/ui/adapter/cx;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/cx;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->a(Z)V

    invoke-static {}, Lcom/estrongs/fs/impl/local/m;->f()V

    goto/16 :goto_0
.end method
