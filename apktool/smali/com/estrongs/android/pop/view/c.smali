.class Lcom/estrongs/android/pop/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/ca;


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
    .locals 10

    const/4 v5, 0x0

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v7

    if-nez p1, :cond_7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, v7, Lcom/estrongs/android/view/aw;->u:Ljava/lang/String;

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    const-string v3, "New"

    :cond_1
    :goto_1
    if-eqz v7, :cond_3

    const-string v0, "http://win-title/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v7, Lcom/estrongs/android/view/aw;->u:Ljava/lang/String;

    :cond_2
    invoke-static {v0, v3}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Z)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->b()Lcom/estrongs/android/ui/d/d;

    move-result-object v4

    invoke-static {v1, v2, v4, v3, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/view/aw;Lcom/estrongs/android/ui/d/d;Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v2, v0, v5

    const/4 v1, 0x1

    aget-object v5, v0, v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/c;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    new-instance v0, Lcom/estrongs/android/pop/view/d;

    move-object v1, p0

    move v8, p2

    move v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/estrongs/android/pop/view/d;-><init>(Lcom/estrongs/android/pop/view/c;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILcom/estrongs/android/view/aw;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/c;->a:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/c;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/c;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_6
    move-object v3, p1

    goto :goto_0

    :cond_7
    move-object v3, p1

    goto :goto_1
.end method
