.class Lcom/estrongs/android/pop/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/dv;


# instance fields
.field a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/pop/view/c;->a(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/i;->a()I

    move-result v5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v2

    if-nez p1, :cond_6

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/estrongs/android/view/cr;->B:Ljava/lang/String;

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    const-string v3, "New"

    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    const-string v0, "http://win-title/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v2, Lcom/estrongs/android/view/cr;->B:Ljava/lang/String;

    :cond_2
    invoke-static {v0, v3}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/controller/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/controller/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)Z

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v1

    iget-object v6, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v6}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->au()Lcom/estrongs/android/ui/d/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/android/ui/d/i;->b()Lcom/estrongs/android/ui/d/h;

    move-result-object v6

    invoke-virtual {v0, v1, v6, v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/view/cr;Lcom/estrongs/android/ui/d/h;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/c;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    new-instance v0, Lcom/estrongs/android/pop/view/d;

    move-object v1, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/pop/view/d;-><init>(Lcom/estrongs/android/pop/view/c;Lcom/estrongs/android/view/cr;Ljava/lang/String;[Ljava/lang/String;IZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/c;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    move-object v3, p1

    goto :goto_0

    :cond_6
    move-object v3, p1

    goto :goto_1
.end method
