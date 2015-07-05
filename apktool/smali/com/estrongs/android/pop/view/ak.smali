.class Lcom/estrongs/android/pop/view/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ak;->a:Lcom/estrongs/android/pop/view/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/be;->b()V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ak;->a:Lcom/estrongs/android/pop/view/aj;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->K()V

    sget-boolean v1, Lcom/estrongs/android/pop/z;->R:Z

    if-nez v1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->b()V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ak;->a:Lcom/estrongs/android/pop/view/aj;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/utils/cl;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/estrongs/android/ui/guesture/b;->a:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/estrongs/android/ui/guesture/b;->b:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/estrongs/android/ui/guesture/b;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ak;->a:Lcom/estrongs/android/pop/view/aj;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ad;->m(Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ak;->a:Lcom/estrongs/android/pop/view/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->postInvalidate()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ak;->a:Lcom/estrongs/android/pop/view/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->T()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/nativetool/c;->a(Landroid/net/LocalSocket;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ak;->a:Lcom/estrongs/android/pop/view/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->az()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/view/a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ak;->a:Lcom/estrongs/android/pop/view/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/aj;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/al;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/al;-><init>(Lcom/estrongs/android/pop/view/ak;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    sget-boolean v0, Lcom/estrongs/android/pop/z;->ap:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/estrongs/android/pop/view/am;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/am;-><init>(Lcom/estrongs/android/pop/view/ak;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/am;->start()V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
