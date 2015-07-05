.class public Lcom/estrongs/android/ui/theme/ThemeColorActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Lcom/estrongs/android/ui/theme/al;

.field private b:I

.field private c:I

.field private d:Lcom/estrongs/android/ui/theme/ai;

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Lcom/estrongs/android/ui/view/ColorPickerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    return-void
.end method

.method private a(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/ai;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/ui/theme/ai;->a(Landroid/content/Context;)Landroid/content/Context;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeColorActivity;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(I)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 5

    const/4 v4, -0x1

    const/4 v1, 0x1

    const v0, 0x7f0a03c6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/estrongs/android/ui/theme/t;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/t;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03dd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0b0070

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/estrongs/android/ui/theme/u;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/u;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03de

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0b0071

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/estrongs/android/ui/theme/v;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/v;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03dc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0b0025

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/estrongs/android/ui/theme/w;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/w;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    if-ne v2, v1, :cond_1

    const v2, 0x7f0b0336

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    new-instance v1, Lcom/estrongs/android/ui/e/jk;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/e/jk;-><init>(Landroid/content/Context;Z)V

    const v0, 0x7f0b0011

    const v2, 0x7f0202d2

    new-instance v3, Lcom/estrongs/android/ui/theme/x;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/theme/x;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/e/jk;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v0, 0x7f0a03c9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/jk;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget v2, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const v2, 0x7f0b0337

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ThemeColorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)Lcom/estrongs/android/ui/view/ColorPickerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/high16 v2, -0x80000000

    const v0, 0x7f0a03df

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ColorPickerView;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ai;->j()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->a(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    new-instance v1, Lcom/estrongs/android/ui/theme/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/y;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ColorPickerView;->a(Lcom/estrongs/android/ui/view/a;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    const v1, 0x7f08002b

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ColorPickerView;->a(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ai;->i()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    const v1, 0x7f080004

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ColorPickerView;->a(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    return v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->g:Lcom/estrongs/android/ui/view/ColorPickerView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->a()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/ai;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/ai;->a(I)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->c:I

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->e()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->setResult(I)V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/ai;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/theme/ai;->b(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->f:Z

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

    new-instance v2, Lcom/estrongs/android/ui/theme/aa;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/aa;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/ui/theme/z;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/z;-><init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->c()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f0300df

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

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

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a:Lcom/estrongs/android/ui/theme/al;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/al;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->finish()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/theme/ai;

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d:Lcom/estrongs/android/ui/theme/ai;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->f:Z

    const v0, 0x7f0300df

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->e:Landroid/content/Context;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
