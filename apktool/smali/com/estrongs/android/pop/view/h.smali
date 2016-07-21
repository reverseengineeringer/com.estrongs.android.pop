.class Lcom/estrongs/android/pop/view/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/bi;->b()V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Y()V

    sget-boolean v1, Lcom/estrongs/android/pop/z;->R:Z

    if-nez v1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->b()V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/utils/cu;->d(Landroid/content/Context;)Z

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

    iget-object v1, p0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ad;->l(Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->postInvalidate()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->G(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aj()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/nativetool/c;->a(Landroid/net/LocalSocket;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aA()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/pop/view/a;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/view/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/i;-><init>(Lcom/estrongs/android/pop/view/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    sget-boolean v0, Lcom/estrongs/android/pop/z;->ap:Z

    if-nez v0, :cond_4

    new-instance v0, Lcom/estrongs/android/pop/view/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/j;-><init>(Lcom/estrongs/android/pop/view/h;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/j;->start()V

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/estrongs/android/cleaner/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "fb_UV"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "fb_PV"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    :goto_2
    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a;->a()Lcom/estrongs/android/pop/app/ad/a;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ad/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/h;->a:Lcom/estrongs/android/pop/view/g;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/g;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/pop/view/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/m;-><init>(Lcom/estrongs/android/pop/view/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
