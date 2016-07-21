.class Lcom/estrongs/android/pop/view/bh;
.super Lcom/estrongs/android/view/cr;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/bh;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bh;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/bh;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/bh;->j(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/bh;Lcom/estrongs/fs/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/bh;->a(Lcom/estrongs/fs/h;)V

    return-void
.end method

.method private a(Lcom/estrongs/fs/h;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->c(Lcom/estrongs/fs/h;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/b/al;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/b/al;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/estrongs/android/pop/z;->N:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/pop/ad;

    sget-object v1, Lcom/estrongs/android/pop/view/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/bh;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/u;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->ax()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v1, v2

    const/16 v2, 0xf

    if-ge v1, v2, :cond_2

    sget-object v1, Lcom/estrongs/fs/w;->R:Lcom/estrongs/fs/w;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/w;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/b/al;Ljava/util/List;)V

    return-void

    :cond_2
    sget-object v1, Lcom/estrongs/fs/w;->Q:Lcom/estrongs/fs/w;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/w;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/estrongs/fs/w;->P:Lcom/estrongs/fs/w;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/w;)V

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 4

    instance-of v0, p1, Lcom/estrongs/fs/impl/local/f;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "recycle://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Ljava/lang/String;)Lcom/estrongs/android/view/cr;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/view/bi;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/view/bi;-><init>(Lcom/estrongs/android/pop/view/bh;Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/u;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/z;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/estrongs/android/pop/view/bh;->S:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/estrongs/android/ui/pcs/z;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bh;->ag:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/pcs/z;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/z;->a(Lcom/estrongs/android/ui/pcs/q;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/z;->show()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/pop/ad;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ad;->e(J)V

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    sget-object v0, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;->NETWORK:Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Landroid/content/Context;Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog$DialogType;)Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/bl;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/view/bl;-><init>(Lcom/estrongs/android/pop/view/bh;Lcom/estrongs/fs/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->a(Lcom/estrongs/android/ui/dialog/lc;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/VerifyPasswordDialog;->b()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->d()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/pop/ad;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/pop/view/bj;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/view/bj;-><init>(Lcom/estrongs/android/pop/view/bh;Lcom/estrongs/android/ui/pcs/q;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/pop/view/bk;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/view/bk;-><init>(Lcom/estrongs/android/pop/view/bh;Lcom/estrongs/android/ui/pcs/q;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    goto/16 :goto_0
.end method

.method protected a(Ljava/util/List;Lcom/estrongs/fs/util/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/util/a/a;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/cr;->a(Ljava/util/List;Lcom/estrongs/fs/util/a/a;)V

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    const-string v2, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
