.class Lcom/estrongs/android/ui/e/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cd;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cd;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cd;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/view/e;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cd;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/e;->o()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/e;->q()Ljava/io/File;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/io/model/ArchiveEntryFile;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/e;->q()Ljava/io/File;

    move-result-object v1

    check-cast v1, Lcom/estrongs/io/model/ArchiveEntryFile;

    invoke-virtual {v1}, Lcom/estrongs/io/model/ArchiveEntryFile;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/e;->r()Lcom/estrongs/io/archive/h;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/io/archive/rar/a;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/e;->r()Lcom/estrongs/io/archive/h;

    move-result-object v1

    check-cast v1, Lcom/estrongs/io/archive/rar/a;

    invoke-virtual {v1}, Lcom/estrongs/io/archive/rar/a;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/view/e;->a(Ljava/util/List;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/view/e;->h()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/e;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method
