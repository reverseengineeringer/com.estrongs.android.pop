.class public Lcom/estrongs/android/ui/theme/ModifyThemeActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


# instance fields
.field private a:Lcom/estrongs/android/ui/theme/at;

.field private b:I

.field private c:Lcom/estrongs/android/widget/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->c:Lcom/estrongs/android/widget/f;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)Lcom/estrongs/android/ui/theme/at;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/widget/f;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->c:Lcom/estrongs/android/widget/f;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->b:I

    return v0
.end method

.method private d()V
    .locals 6

    const/16 v5, 0x8

    const v0, 0x7f0e065b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08069c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/estrongs/android/ui/theme/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/d;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e065c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08069d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/estrongs/android/ui/theme/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/e;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e065d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0806af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/estrongs/android/ui/theme/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/i;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e065e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/estrongs/android/ui/theme/j;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/j;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e065f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/estrongs/android/ui/theme/k;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/k;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0e0660

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/estrongs/android/ui/theme/l;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/theme/l;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0e0661

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Lcom/estrongs/android/ui/theme/m;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/theme/m;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/at;->g()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->b:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/theme/al;->c()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
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

    const v1, 0x7f02044b

    const v2, 0x7f0806ab

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v1, Lcom/estrongs/android/ui/theme/a;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/theme/a;-><init>(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)V

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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x1019

    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    iget v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->b:I

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->setResult(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->c:Lcom/estrongs/android/widget/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->c:Lcom/estrongs/android/widget/f;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/f;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->c:Lcom/estrongs/android/widget/f;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/f;->k()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x1022

    if-ne p1, v0, :cond_3

    if-ne p2, v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->setResult(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x1023

    if-ne p1, v0, :cond_4

    if-ne p2, v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->setResult(I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x1025

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->setResult(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0806a6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->setTitle(I)V

    const v0, 0x7f030193

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

    invoke-virtual {p0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a:Lcom/estrongs/android/ui/theme/at;

    invoke-direct {p0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->d()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
