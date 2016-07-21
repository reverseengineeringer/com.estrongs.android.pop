.class Lcom/estrongs/android/ui/e/es;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/e/er;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/er;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/es;->b:Lcom/estrongs/android/ui/e/er;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/es;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/estrongs/android/util/bm;->c()Lcom/estrongs/android/util/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/es;->b:Lcom/estrongs/android/ui/e/er;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/er;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->K:Lcom/estrongs/android/widget/f;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/util/bm;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/es;->b:Lcom/estrongs/android/ui/e/er;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/er;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iput-boolean v3, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/es;->b:Lcom/estrongs/android/ui/e/er;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/er;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/es;->b:Lcom/estrongs/android/ui/e/er;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/er;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/es;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/es;->b:Lcom/estrongs/android/ui/e/er;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/er;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/view/y;->a(Landroid/app/Activity;)Lcom/estrongs/android/view/y;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/es;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/es;->b:Lcom/estrongs/android/ui/e/er;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/er;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    iget-boolean v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n:Z

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/y;->a(Ljava/util/List;Z)Lcom/estrongs/android/view/af;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/es;->b:Lcom/estrongs/android/ui/e/er;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/er;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/es;->b:Lcom/estrongs/android/ui/e/er;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/er;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/es;->b:Lcom/estrongs/android/ui/e/er;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/er;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->K:Lcom/estrongs/android/widget/f;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/f;->e()Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/fs/h;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/es;->b:Lcom/estrongs/android/ui/e/er;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/er;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->b(Lcom/estrongs/android/ui/e/cr;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->K:Lcom/estrongs/android/widget/f;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/f;->k()V

    return-void
.end method
