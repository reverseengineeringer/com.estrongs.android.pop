.class Lcom/estrongs/android/ui/e/cz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/e/cy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cy;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cz;->b:Lcom/estrongs/android/ui/e/cy;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/cz;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/estrongs/android/util/be;->c()Lcom/estrongs/android/util/be;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cz;->b:Lcom/estrongs/android/ui/e/cy;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P:Lcom/estrongs/android/widget/g;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/be;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cz;->b:Lcom/estrongs/android/ui/e/cy;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cz;->b:Lcom/estrongs/android/ui/e/cy;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cz;->b:Lcom/estrongs/android/ui/e/cy;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cz;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cz;->b:Lcom/estrongs/android/ui/e/cy;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cz;->b:Lcom/estrongs/android/ui/e/cy;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cz;->b:Lcom/estrongs/android/ui/e/cy;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v1}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P:Lcom/estrongs/android/widget/g;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/g;->e()Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/fs/h;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cz;->b:Lcom/estrongs/android/ui/e/cy;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/cy;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Lcom/estrongs/android/ui/e/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->k()V

    return-void
.end method
