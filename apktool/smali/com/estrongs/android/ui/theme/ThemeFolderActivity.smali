.class public Lcom/estrongs/android/ui/theme/ThemeFolderActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Lcom/estrongs/android/ui/theme/al;

.field private b:Lcom/estrongs/android/ui/theme/af;

.field private c:Z

.field private final d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Lcom/estrongs/android/ui/theme/ai;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->d:I

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, -0x1

    const v0, 0x7f0a03c6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/theme/ab;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/ab;-><init>(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0339

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    new-instance v1, Lcom/estrongs/android/ui/e/jk;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/e/jk;-><init>(Landroid/content/Context;Z)V

    const v0, 0x7f0b0011

    const v2, 0x7f0202d2

    new-instance v3, Lcom/estrongs/android/ui/theme/ac;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/theme/ac;-><init>(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/e/jk;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v0, 0x7f0a03c9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/jk;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->c:Z

    return p1
.end method

.method private b()V
    .locals 2

    const v0, 0x7f0a03cf

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/estrongs/android/ui/theme/af;

    invoke-direct {v1, p0, p0}, Lcom/estrongs/android/ui/theme/af;-><init>(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->b:Lcom/estrongs/android/ui/theme/af;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->b:Lcom/estrongs/android/ui/theme/af;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)Lcom/estrongs/android/ui/theme/ai;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->g:Lcom/estrongs/android/ui/theme/ai;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->b:Lcom/estrongs/android/ui/theme/af;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/af;->a()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->e:I

    iget-object v2, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/theme/al;->e()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/al;->f(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->setResult(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/al;->e(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->g:Lcom/estrongs/android/ui/theme/ai;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/estrongs/android/ui/theme/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method private d()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0304

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b02f2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->b(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000b

    new-instance v2, Lcom/estrongs/android/ui/theme/ae;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/ae;-><init>(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/ui/theme/ad;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/ad;-><init>(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->f:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300dc

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

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a:Lcom/estrongs/android/ui/theme/al;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->finish()V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/ai;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->g:Lcom/estrongs/android/ui/theme/ai;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->g:Lcom/estrongs/android/ui/theme/ai;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/ui/theme/ai;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->f:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->c:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->b()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
