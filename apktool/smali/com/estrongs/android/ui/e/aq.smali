.class Lcom/estrongs/android/ui/e/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/aq;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/aq;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/aq;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/w;->k(Lcom/estrongs/android/ui/e/w;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/pcs/r;->a(I)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/pcs/r;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/aq;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/aq;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    instance-of v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/aq;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/ui/e/aq;->a:Lcom/estrongs/android/ui/e/w;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/estrongs/android/ui/e/w;->a(Lcom/estrongs/android/ui/e/w;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->az(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Market"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ad;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/view/aw;->g(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Lcom/estrongs/android/view/aw;->G()V

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/util/am;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/fs/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/r;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/estrongs/fs/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/m;->R:Lcom/estrongs/fs/m;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/m;)V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Press_Logout"

    const-string v2, "Press_Logout"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v5

    :cond_3
    const-string v0, "pcs://"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/view/aw;->g(Ljava/lang/String;)V

    goto :goto_0
.end method
