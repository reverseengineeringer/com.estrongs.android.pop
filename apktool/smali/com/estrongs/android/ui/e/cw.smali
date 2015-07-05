.class Lcom/estrongs/android/ui/e/cw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ae;

.field final synthetic b:Lcom/estrongs/android/ui/e/cv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cv;Lcom/estrongs/android/widget/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cw;->b:Lcom/estrongs/android/ui/e/cv;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/cw;->a:Lcom/estrongs/android/widget/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cw;->a:Lcom/estrongs/android/widget/ae;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/ae;->e()Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->K(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const v1, 0x7f0b0047

    invoke-static {v0, v1, v6}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/estrongs/fs/b/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/cw;->b:Lcom/estrongs/android/ui/e/cv;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/cv;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/cp;->b(Lcom/estrongs/android/ui/e/cp;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, v1, v5}, Lcom/estrongs/fs/b/a;-><init>(Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    iget-object v3, p0, Lcom/estrongs/android/ui/e/cw;->b:Lcom/estrongs/android/ui/e/cv;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/cv;->a:Lcom/estrongs/android/ui/e/cp;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/cp;->b:Landroid/content/Context;

    const v4, 0x7f0b0576

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/estrongs/fs/b/a;->setDescription(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/m;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Lcom/estrongs/fs/b/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/ix;

    const v3, 0x7f0b0084

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3, v2}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    invoke-virtual {v2, v1}, Lcom/estrongs/fs/b/a;->a(Lcom/estrongs/android/ui/dialog/cg;)V

    invoke-virtual {v2}, Lcom/estrongs/fs/b/a;->execute()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cw;->a:Lcom/estrongs/android/widget/ae;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ae;->k()V

    goto :goto_0
.end method
