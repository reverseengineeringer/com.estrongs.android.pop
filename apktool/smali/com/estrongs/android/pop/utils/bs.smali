.class Lcom/estrongs/android/pop/utils/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/estrongs/android/pop/utils/cb;

.field final synthetic d:Lcom/estrongs/android/view/aw;

.field final synthetic e:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Z

.field final synthetic i:Lcom/estrongs/a/a/p;

.field final synthetic j:Lcom/estrongs/android/pop/utils/bn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/bn;ZLjava/util/List;Lcom/estrongs/android/pop/utils/cb;Lcom/estrongs/android/view/aw;Lcom/estrongs/android/pop/esclasses/ESActivity;ZZZLcom/estrongs/a/a/p;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bs;->j:Lcom/estrongs/android/pop/utils/bn;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/utils/bs;->a:Z

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/bs;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/estrongs/android/pop/utils/bs;->c:Lcom/estrongs/android/pop/utils/cb;

    iput-object p5, p0, Lcom/estrongs/android/pop/utils/bs;->d:Lcom/estrongs/android/view/aw;

    iput-object p6, p0, Lcom/estrongs/android/pop/utils/bs;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-boolean p7, p0, Lcom/estrongs/android/pop/utils/bs;->f:Z

    iput-boolean p8, p0, Lcom/estrongs/android/pop/utils/bs;->g:Z

    iput-boolean p9, p0, Lcom/estrongs/android/pop/utils/bs;->h:Z

    iput-object p10, p0, Lcom/estrongs/android/pop/utils/bs;->i:Lcom/estrongs/a/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/utils/bs;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bs;->b:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bs;->c:Lcom/estrongs/android/pop/utils/cb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bs;->c:Lcom/estrongs/android/pop/utils/cb;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bs;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/utils/cb;->a(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bs;->d:Lcom/estrongs/android/view/aw;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bs;->d:Lcom/estrongs/android/view/aw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/aw;->a(Z)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bs;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bs;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F()V

    :cond_3
    iget-boolean v0, p0, Lcom/estrongs/android/pop/utils/bs;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bs;->j:Lcom/estrongs/android/pop/utils/bn;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bs;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/bs;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/utils/bn;->a(Lcom/estrongs/android/pop/utils/bn;Landroid/app/Activity;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bs;->j:Lcom/estrongs/android/pop/utils/bn;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bn;->a:Lcom/estrongs/fs/b/am;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bs;->j:Lcom/estrongs/android/pop/utils/bn;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bn;->a:Lcom/estrongs/fs/b/am;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/am;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bs;->j:Lcom/estrongs/android/pop/utils/bn;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/bn;->a:Lcom/estrongs/fs/b/am;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/am;->requestStop()V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bs;->j:Lcom/estrongs/android/pop/utils/bn;

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/bs;->e:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/bs;->b:Ljava/util/List;

    iget-boolean v3, p0, Lcom/estrongs/android/pop/utils/bs;->g:Z

    iget-boolean v4, p0, Lcom/estrongs/android/pop/utils/bs;->h:Z

    iget-object v5, p0, Lcom/estrongs/android/pop/utils/bs;->i:Lcom/estrongs/a/a/p;

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/utils/bn;->a(Lcom/estrongs/android/pop/utils/bn;Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;ZZLcom/estrongs/a/a/p;)V

    goto :goto_0
.end method
