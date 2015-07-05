.class Lcom/estrongs/android/pop/view/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->a()[Lcom/estrongs/fs/impl/usb/g;

    move-result-object v2

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->e()Z

    move-result v3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/util/am;->d()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, Lcom/estrongs/android/util/am;->e()V

    invoke-static {}, Lcom/estrongs/android/util/am;->d()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->b()[Lcom/estrongs/fs/impl/usb/g;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v4, v5

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bl;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v6, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/view/bm;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/view/bm;-><init>(Lcom/estrongs/android/pop/view/bl;[Lcom/estrongs/fs/impl/usb/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
