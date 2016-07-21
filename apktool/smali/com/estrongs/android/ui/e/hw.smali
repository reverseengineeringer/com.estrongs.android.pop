.class Lcom/estrongs/android/ui/e/hw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ad;

.field final synthetic b:Lcom/estrongs/android/ui/e/hv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/hv;Lcom/estrongs/android/widget/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/hw;->b:Lcom/estrongs/android/ui/e/hv;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/hw;->a:Lcom/estrongs/android/widget/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hw;->a:Lcom/estrongs/android/widget/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/ad;->e()Lcom/estrongs/fs/h;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->M(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const v1, 0x7f0803e7

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/estrongs/fs/b/a;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/hw;->b:Lcom/estrongs/android/ui/e/hv;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/hv;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/cr;->a(Lcom/estrongs/android/ui/e/cr;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3, v1, v5}, Lcom/estrongs/fs/b/a;-><init>(Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    const v3, 0x7f0800bb

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/estrongs/fs/b/a;->setDescription(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/m;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Lcom/estrongs/fs/b/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/jh;

    const v3, 0x7f0805ad

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3, v2}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    invoke-virtual {v2, v1}, Lcom/estrongs/fs/b/a;->a(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v2}, Lcom/estrongs/fs/b/a;->execute()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hw;->a:Lcom/estrongs/android/widget/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ad;->k()V

    goto :goto_0
.end method
