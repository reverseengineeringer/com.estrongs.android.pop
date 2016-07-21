.class public Lcom/estrongs/android/ui/e/jm;
.super Lcom/estrongs/android/ui/e/km;


# instance fields
.field private h:Lcom/estrongs/android/ui/view/ck;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/view/ck;Landroid/app/Activity;Z)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/ui/e/km;-><init>(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/jm;->i:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/e/jm;->h:Lcom/estrongs/android/ui/view/ck;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jm;->f:Lcom/estrongs/android/ui/theme/at;

    const v1, 0x7f0d0159

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/e/jm;->e:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jm;->f:Lcom/estrongs/android/ui/theme/at;

    const v1, 0x7f0d013e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/jm;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/jm;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/jm;->l()V

    return-void
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jm;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jm;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f080097

    const v2, 0x7f020430

    new-instance v3, Lcom/estrongs/android/ui/e/jn;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/e/jn;-><init>(Lcom/estrongs/android/ui/e/jm;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/jm;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v1, 0x7f080093

    const v2, 0x7f02042c

    new-instance v3, Lcom/estrongs/android/ui/e/jo;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/e/jo;-><init>(Lcom/estrongs/android/ui/e/jm;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/jm;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v0, 0x7f080221

    const v1, 0x7f0203fd

    new-instance v2, Lcom/estrongs/android/ui/e/jp;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/jp;-><init>(Lcom/estrongs/android/ui/e/jm;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/ui/e/jm;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/jm;->i:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need FileExplorerActivity as the first argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jm;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jm;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o:Z

    const-string v1, "normal_mode"

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i()V

    :cond_0
    return-void
.end method


# virtual methods
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

.method public e()Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/jm;->l()V

    const/4 v0, 0x1

    return v0
.end method

.method public h()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/jm;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/jm;->k()V

    :cond_0
    return-void
.end method
