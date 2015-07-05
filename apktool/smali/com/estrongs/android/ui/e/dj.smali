.class Lcom/estrongs/android/ui/e/dj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dj;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dj;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->b(Lcom/estrongs/android/ui/e/cp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dj;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b01be

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/dj;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aW(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v2, Lcom/estrongs/android/pop/app/compress/ai;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/dj;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/estrongs/android/pop/app/compress/ai;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/compress/ai;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/dj;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    goto :goto_0
.end method
