.class public Lcom/estrongs/android/ui/theme/ModifyThemeActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Lcom/estrongs/android/ui/theme/al;

.field private b:I

.field private c:Lcom/estrongs/android/ui/e/jk;

.field private d:Lcom/estrongs/android/widget/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->d:Lcom/estrongs/android/widget/g;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;Lcom/estrongs/android/widget/g;)Lcom/estrongs/android/widget/g;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->d:Lcom/estrongs/android/widget/g;

    return-object p1
.end method

.method private a()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, -0x1

    const v0, 0x7f0a03c6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/estrongs/android/ui/theme/a;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/a;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b033a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/e/jk;

    invoke-direct {v0, p0, v2}, Lcom/estrongs/android/ui/e/jk;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->c:Lcom/estrongs/android/ui/e/jk;

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->c:Lcom/estrongs/android/ui/e/jk;

    const v1, 0x7f0b035d

    const v2, 0x7f0202d9

    new-instance v3, Lcom/estrongs/android/ui/theme/b;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/theme/b;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/e/jk;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v0, 0x7f0a03c9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->c:Lcom/estrongs/android/ui/e/jk;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/jk;->a()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->b:I

    return v0
.end method

.method private b()V
    .locals 6

    const v5, 0x7f090006

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a:Lcom/estrongs/android/ui/theme/al;

    const v1, 0x7f020283

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v0, 0x7f0a03d7

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0336

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/estrongs/android/ui/theme/e;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/e;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03d8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b033b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/estrongs/android/ui/theme/f;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/f;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03d9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0337

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/estrongs/android/ui/theme/j;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/j;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03da

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0339

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/estrongs/android/ui/theme/k;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/k;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0x10001019

    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    iget v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->b:I

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->setResult(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->d:Lcom/estrongs/android/widget/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->d:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->d:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->k()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v0, 0x10001022

    if-ne p1, v0, :cond_3

    if-ne p2, v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->setResult(I)V

    goto :goto_0

    :cond_3
    const v0, 0x10001023

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300de

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "theme_data_index"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->b:I

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->b()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
