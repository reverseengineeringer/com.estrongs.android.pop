.class public Lcom/estrongs/android/ui/e/ch;
.super Lcom/estrongs/android/ui/e/f;


# instance fields
.field public k:Lcom/estrongs/android/ui/e/cq;

.field l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private m:Lcom/estrongs/android/ui/view/ck;

.field private n:Landroid/view/View;

.field private o:Z

.field private p:Z

.field private q:Lcom/estrongs/android/ui/preference/q;

.field private r:Lcom/estrongs/android/ui/e/m;

.field private s:I

.field private t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/e/ch;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/e/f;-><init>(Landroid/content/Context;ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ch;->l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/e/ch;->o:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/e/ch;->p:Z

    iput v1, p0, Lcom/estrongs/android/ui/e/ch;->s:I

    iput-boolean v2, p0, Lcom/estrongs/android/ui/e/ch;->t:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/ch;->o()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/ch;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/e/ch;->s:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/ch;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/e/ch;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/ch;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/e/ch;->p:Z

    return p1
.end method

.method private o()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/ch;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ch;->l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0e01f3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ch;->n:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/view/ck;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ch;->l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/estrongs/android/ui/view/ck;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V

    iput-object v1, p0, Lcom/estrongs/android/ui/e/ch;->m:Lcom/estrongs/android/ui/view/ck;

    new-instance v0, Lcom/estrongs/android/ui/e/ci;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/ci;-><init>(Lcom/estrongs/android/ui/e/ch;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ch;->q:Lcom/estrongs/android/ui/preference/q;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ch;->q:Lcom/estrongs/android/ui/preference/q;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->a(Lcom/estrongs/android/ui/preference/q;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->al()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/ch;->o:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->an()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/ch;->p:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/ch;->k()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->m:Lcom/estrongs/android/ui/view/ck;

    const-string v1, "normal_mode"

    invoke-virtual {v0, v1, p0}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->m:Lcom/estrongs/android/ui/view/ck;

    const-string v1, "paste_mode"

    new-instance v2, Lcom/estrongs/android/ui/e/jm;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/ch;->m:Lcom/estrongs/android/ui/view/ck;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/ch;->l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v5, p0, Lcom/estrongs/android/ui/e/ch;->d:Z

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/e/jm;-><init>(Lcom/estrongs/android/ui/view/ck;Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
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

    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ch;->m:Lcom/estrongs/android/ui/view/ck;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ck;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->k:Lcom/estrongs/android/ui/e/cq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->k:Lcom/estrongs/android/ui/e/cq;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/e/cq;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 8

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/estrongs/android/view/cr;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Lcom/estrongs/android/view/cr;->ah()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ab()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->k:Lcom/estrongs/android/ui/e/cq;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/e/cj;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ch;->l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v3, p0, Lcom/estrongs/android/ui/e/ch;->d:Z

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/e/ch;->e:Z

    if-nez v1, :cond_3

    move v5, v6

    :goto_0
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/e/cj;-><init>(Lcom/estrongs/android/ui/e/ch;Landroid/app/Activity;ZLandroid/widget/LinearLayout;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/ch;->k:Lcom/estrongs/android/ui/e/cq;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->m:Lcom/estrongs/android/ui/view/ck;

    const-string v1, "edit_mode"

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ch;->k:Lcom/estrongs/android/ui/e/cq;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->m:Lcom/estrongs/android/ui/view/ck;

    invoke-virtual {v0, v6}, Lcom/estrongs/android/ui/view/ck;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->m:Lcom/estrongs/android/ui/view/ck;

    const-string v1, "edit_mode"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "edit_mode"

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->L()V

    if-eqz v7, :cond_2

    invoke-virtual {v7, v6}, Lcom/estrongs/android/view/cr;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->l:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v7}, Lcom/estrongs/android/view/cr;->o()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v7}, Lcom/estrongs/android/view/cr;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/util/List;I)V

    :cond_2
    return-void

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/e/ch;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->m:Lcom/estrongs/android/ui/view/ck;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/view/ck;->a(Z)V

    return-void
.end method

.method protected d()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q()V

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/e/ch;->t:Z

    return-void
.end method

.method public f(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->r:Lcom/estrongs/android/ui/e/m;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/m;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->r:Lcom/estrongs/android/ui/e/m;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/m;->a()[Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/e/ch;->t:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ch;->r:Lcom/estrongs/android/ui/e/m;

    const-string v2, "message_box"

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/ui/e/m;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/ch;->a([Ljava/lang/String;)V

    :cond_1
    iput p1, p0, Lcom/estrongs/android/ui/e/ch;->s:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/ch;->j()V

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/e/f;->g()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ch;->q:Lcom/estrongs/android/ui/preference/q;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->b(Lcom/estrongs/android/ui/preference/q;)V

    return-void
.end method

.method protected h()V
    .locals 2

    new-instance v1, Lcom/estrongs/android/ui/e/m;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/e/m;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/e/ch;->r:Lcom/estrongs/android/ui/e/m;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->r:Lcom/estrongs/android/ui/e/m;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/m;->e()V

    return-void
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

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->r:Lcom/estrongs/android/ui/e/m;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/m;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->r:Lcom/estrongs/android/ui/e/m;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/e/ch;->o:Z

    iget-boolean v2, p0, Lcom/estrongs/android/ui/e/ch;->p:Z

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/e/m;->a(ZZ)V

    return-void
.end method

.method public l()Lcom/estrongs/android/ui/view/ck;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->m:Lcom/estrongs/android/ui/view/ck;

    return-object v0
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->m:Lcom/estrongs/android/ui/view/ck;

    const-string v1, "normal_mode"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/ck;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->k:Lcom/estrongs/android/ui/e/cq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ch;->k:Lcom/estrongs/android/ui/e/cq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/cq;->j()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/ch;->b(Z)V

    return-void
.end method
