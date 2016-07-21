.class public Lcom/estrongs/android/ui/theme/ThemeColorActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


# instance fields
.field private a:Lcom/estrongs/android/ui/theme/at;

.field private b:I

.field private c:I

.field private d:Lcom/estrongs/android/ui/theme/al;

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Lcom/estrongs/android/ui/view/ColorPickerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->e:Landroid/content/Context;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeColorActivity;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)Lcom/estrongs/android/ui/view/ColorPickerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeColorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->f()V

    return-void
.end method

.method private d()V
    .locals 2

    const v0, 0x7f0e0664

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0801f7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/estrongs/android/ui/theme/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/y;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0665

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/estrongs/android/ui/theme/z;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/z;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0663

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/estrongs/android/ui/theme/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/aa;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .locals 3

    const/high16 v2, -0x80000000

    const v0, 0x7f0e0666

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ColorPickerView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->j()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->setColor(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    new-instance v1, Lcom/estrongs/android/ui/theme/ac;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/ac;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ColorPickerView;->setOnColorChangeListener(Lcom/estrongs/android/ui/view/a;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    const v1, 0x7f0d003e

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ColorPickerView;->setColor(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->i()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->setColor(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    const v1, 0x7f0d00df

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ColorPickerView;->setColor(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->k()I

    move-result v0

    if-eq v0, v2, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->setColor(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    const v1, 0x7f0d0009

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ColorPickerView;->setColor(I)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->l()I

    move-result v0

    if-eq v0, v2, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->setColor(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    const v1, 0x7f0d0007

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ColorPickerView;->setColor(I)V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->m()I

    move-result v0

    if-eq v0, v2, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->setColor(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    const v1, 0x7f0d000b

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ColorPickerView;->setColor(I)V

    goto/16 :goto_0
.end method

.method private f()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/ColorPickerView;->getCurrentColor()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Z

    move-result v0

    :cond_0
    :goto_0
    if-nez v0, :cond_6

    const v0, 0x7f0806ae

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->b(I)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->c(I)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->d(I)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->e(I)Z

    move-result v0

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->c:I

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->e()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->setResult(I)V

    goto :goto_1
.end method

.method private h()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->f:Z

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

    new-instance v2, Lcom/estrongs/android/ui/theme/ae;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/ae;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/ui/theme/ad;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/ad;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->finish()V

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

    new-instance v1, Lcom/estrongs/android/ui/theme/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/ab;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f030194

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->e()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "set_what_color"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "theme_data_index"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    iput v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->c:I

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a:Lcom/estrongs/android/ui/theme/at;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->finish()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/al;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/al;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->f:Z

    const v0, 0x7f030194

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->setContentView(I)V

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const v0, 0x7f08069c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->setTitle(I)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->e()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const v0, 0x7f0806af

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->setTitle(I)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const v0, 0x7f0806a8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->setTitle(I)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const v0, 0x7f0806a7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->setTitle(I)V

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const v0, 0x7f0806a9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->setTitle(I)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->e:Landroid/content/Context;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->h()V

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

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->h()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
