.class Lcom/estrongs/android/pop/view/bw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/drag/c;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bw;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/drag/l;Ljava/lang/Object;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bw;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bw;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b037b

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/util/am;->aV(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bw;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b037c

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bw;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b0307

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bw;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bw;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    goto :goto_0

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bw;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {p2}, Lcom/estrongs/android/util/bd;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/aj;->b(Landroid/app/Activity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bw;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public b(Lcom/estrongs/android/ui/drag/l;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
