.class public Lcom/estrongs/android/ui/e/cq;
.super Lcom/estrongs/android/ui/e/f;


# instance fields
.field private k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private l:Lcom/estrongs/android/ui/e/cr;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLandroid/widget/LinearLayout;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/estrongs/android/ui/e/f;-><init>(Landroid/content/Context;ZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/cq;->m:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/cq;->k()V

    return-void
.end method

.method private a(Lcom/estrongs/android/ui/e/cp;)[Ljava/lang/String;
    .locals 7

    const/4 v2, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cq;->l:Lcom/estrongs/android/ui/e/cr;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/cr;->a(Lcom/estrongs/android/ui/e/cp;)[Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/estrongs/android/ui/e/cp;->N:I

    if-nez v0, :cond_0

    array-length v0, v1

    if-le v0, v2, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    aget-object v2, v1, v3

    aput-object v2, v0, v3

    aget-object v2, v1, v4

    aput-object v2, v0, v4

    aget-object v2, v1, v5

    aput-object v2, v0, v5

    aget-object v1, v1, v6

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "extra"

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cq;->l:Lcom/estrongs/android/ui/e/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/cr;->d()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cq;->l:Lcom/estrongs/android/ui/e/cr;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/e/cr;->a(Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/e/cp;

    invoke-direct {v0, p1, p2}, Lcom/estrongs/android/ui/e/cp;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/e/cq;->a(Lcom/estrongs/android/ui/e/cp;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cq;->a([Ljava/lang/String;)V

    :cond_0
    iget v2, v0, Lcom/estrongs/android/ui/e/cp;->N:I

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cq;->b([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, v0, Lcom/estrongs/android/ui/e/cp;->N:I

    if-ne v1, v3, :cond_4

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/cp;->P:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/cp;->aj:Z

    if-nez v1, :cond_3

    iget-boolean v0, v0, Lcom/estrongs/android/ui/e/cp;->ai:Z

    if-eqz v0, :cond_1

    :cond_3
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "extra"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/cq;->b([Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/cp;->O:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/cp;->Y:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/cp;->q:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/estrongs/android/ui/e/cp;->aj:Z

    if-nez v1, :cond_5

    iget-boolean v0, v0, Lcom/estrongs/android/ui/e/cp;->ai:Z

    if-eqz v0, :cond_1

    :cond_5
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "extra"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/cq;->b([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected h()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cq;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cq;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cq;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v0, Lcom/estrongs/android/ui/e/cr;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cq;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/cr;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cq;->l:Lcom/estrongs/android/ui/e/cr;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cq;->l:Lcom/estrongs/android/ui/e/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/cr;->e()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need FileExplorerActivity as the first argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cq;->l:Lcom/estrongs/android/ui/e/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/cr;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected k()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/cq;->m()V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cq;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->P()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/cq;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
