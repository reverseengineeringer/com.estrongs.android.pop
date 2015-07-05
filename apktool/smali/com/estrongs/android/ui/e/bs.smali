.class Lcom/estrongs/android/ui/e/bs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ae;

.field final synthetic b:Lcom/estrongs/android/ui/e/br;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/br;Lcom/estrongs/android/widget/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bs;->b:Lcom/estrongs/android/ui/e/br;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/bs;->a:Lcom/estrongs/android/widget/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B()Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/am;->M(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/am;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0b0047

    invoke-static {v0, v1, v6}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/estrongs/fs/b/a;

    invoke-direct {v3, v2, v1, v5}, Lcom/estrongs/fs/b/a;-><init>(Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/bs;->b:Lcom/estrongs/android/ui/e/br;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/br;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    const v4, 0x7f0b0576

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/b/a;->setDescription(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/m;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/b/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/ix;

    const v2, 0x7f0b0084

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ix;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ix;->show()V

    invoke-virtual {v3, v1}, Lcom/estrongs/fs/b/a;->a(Lcom/estrongs/android/ui/dialog/cg;)V

    invoke-virtual {v3}, Lcom/estrongs/fs/b/a;->execute()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bs;->a:Lcom/estrongs/android/widget/ae;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ae;->k()V

    goto :goto_0
.end method
