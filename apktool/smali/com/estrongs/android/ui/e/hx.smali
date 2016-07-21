.class Lcom/estrongs/android/ui/e/hx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/ab;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ad;

.field final synthetic b:Lcom/estrongs/android/ui/e/hv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/hv;Lcom/estrongs/android/widget/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/hx;->b:Lcom/estrongs/android/ui/e/hv;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/hx;->a:Lcom/estrongs/android/widget/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->M(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v3, Lcom/estrongs/fs/b/a;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/hx;->b:Lcom/estrongs/android/ui/e/hv;

    iget-object v4, v4, Lcom/estrongs/android/ui/e/hv;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-static {v4}, Lcom/estrongs/android/ui/e/cr;->a(Lcom/estrongs/android/ui/e/cr;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, p1, v0}, Lcom/estrongs/fs/b/a;-><init>(Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    const v4, 0x7f0800bb

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/b/a;->setDescription(Ljava/lang/String;)V

    new-instance v4, Lcom/estrongs/android/pop/m;

    invoke-direct {v4, v2}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/b/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    new-instance v4, Lcom/estrongs/android/ui/dialog/jh;

    const v5, 0x7f0805ad

    invoke-virtual {v2, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5, v3}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v4, v0}, Lcom/estrongs/android/ui/dialog/jh;->a(Z)Lcom/estrongs/android/ui/dialog/jh;

    invoke-virtual {v4}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/b/a;->a(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v3}, Lcom/estrongs/fs/b/a;->execute()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hx;->a:Lcom/estrongs/android/widget/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ad;->k()V

    move v0, v1

    goto :goto_0
.end method
