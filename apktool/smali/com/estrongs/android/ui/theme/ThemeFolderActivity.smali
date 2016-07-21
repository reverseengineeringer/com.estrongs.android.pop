.class public Lcom/estrongs/android/ui/theme/ThemeFolderActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


# instance fields
.field private a:Lcom/estrongs/android/ui/theme/at;

.field private b:Lcom/estrongs/android/ui/theme/ai;

.field private c:Z

.field private final d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Lcom/estrongs/android/ui/theme/al;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->e()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->g:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)Lcom/estrongs/android/ui/theme/at;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a:Lcom/estrongs/android/ui/theme/at;

    return-object v0
.end method

.method private d()V
    .locals 2

    const v0, 0x7f0e0654

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/estrongs/android/ui/theme/ai;

    invoke-direct {v1, p0, p0}, Lcom/estrongs/android/ui/theme/ai;-><init>(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->b:Lcom/estrongs/android/ui/theme/ai;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->b:Lcom/estrongs/android/ui/theme/ai;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->b:Lcom/estrongs/android/ui/theme/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ai;->a()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->e:I

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/at;->e()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/at;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0806ae

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->d(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->setResult(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/at;->d(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->g:Lcom/estrongs/android/ui/theme/al;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method private f()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08069e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f08069b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080226

    new-instance v2, Lcom/estrongs/android/ui/theme/ah;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/ah;-><init>(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/ui/theme/ag;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/ag;-><init>(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f020443

    const v2, 0x7f0800a3

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/ui/theme/af;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/af;-><init>(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0806a0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->setTitle(I)V

    const v0, 0x7f030190

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "theme_data_index"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->e:I

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a:Lcom/estrongs/android/ui/theme/at;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->finish()V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/al;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->g:Lcom/estrongs/android/ui/theme/al;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->g:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->f:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->c:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->d()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->f()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->f()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
