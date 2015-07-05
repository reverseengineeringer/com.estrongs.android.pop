.class public Lcom/estrongs/android/ui/e/jk;
.super Lcom/estrongs/android/ui/e/a;


# instance fields
.field private g:Lcom/estrongs/android/ui/preference/q;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/a;-><init>(Landroid/content/Context;Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/e/jk;->h:I

    new-instance v0, Lcom/estrongs/android/ui/e/jl;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/jl;-><init>(Lcom/estrongs/android/ui/e/jk;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/jk;->g:Lcom/estrongs/android/ui/preference/q;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jk;->g:Lcom/estrongs/android/ui/preference/q;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->a(Lcom/estrongs/android/ui/preference/q;)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jk;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/estrongs/android/ui/e/jk;->a(Ljava/lang/String;ILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jk;->f:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/estrongs/android/view/a/a;

    invoke-direct {v1, v0, p1}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;)V

    return-object v1
.end method

.method public a(III)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jk;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/estrongs/android/ui/e/jk;->a(ILjava/lang/String;I)V

    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/e/jk;->a(I)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/estrongs/android/ui/e/jk;->a(Lcom/estrongs/android/view/a/a;Ljava/lang/String;I)V

    return-void
.end method

.method protected a(Landroid/widget/Button;Lcom/estrongs/android/view/a/a;I)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/estrongs/android/view/a/a;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jk;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/e/jk;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->as()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/estrongs/android/view/a/a;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jk;->b:Landroid/content/Context;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jk;->f:Lcom/estrongs/android/ui/theme/al;

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/estrongs/android/view/a/a;->c(I)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jk;->f:Lcom/estrongs/android/ui/theme/al;

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p2}, Lcom/estrongs/android/view/a/a;->d()Lcom/estrongs/android/view/a/e;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/e/jo;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/jo;-><init>(Lcom/estrongs/android/ui/e/jk;)V

    invoke-virtual {p2, v0}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/e;)V

    :cond_1
    iget v0, p0, Lcom/estrongs/android/ui/e/jk;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    iget v1, p0, Lcom/estrongs/android/ui/e/jk;->h:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/estrongs/android/view/a/a;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public a(Lcom/estrongs/android/view/a/a;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jk;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030094

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a02a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/jk;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/estrongs/android/ui/e/jk;->a(Landroid/widget/Button;Lcom/estrongs/android/view/a/a;I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/jk;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/estrongs/android/ui/e/jk;->d:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1}, Landroid/widget/Button;->setSingleLine()V

    move-object v3, v2

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/estrongs/android/ui/e/jk;->c:Landroid/view/ViewGroup;

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/estrongs/android/ui/e/jm;

    invoke-direct {v2, p0, v1, p1}, Lcom/estrongs/android/ui/e/jm;-><init>(Lcom/estrongs/android/ui/e/jk;Landroid/widget/Button;Lcom/estrongs/android/view/a/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/estrongs/android/ui/e/jn;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/e/jn;-><init>(Lcom/estrongs/android/ui/e/jk;Lcom/estrongs/android/view/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setMaxLines(I)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setLines(I)V

    move-object v3, v2

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/android/view/a/a;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jk;->f:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, p3}, Lcom/estrongs/android/ui/theme/al;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jk;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/estrongs/android/view/a/a;->a(Landroid/graphics/drawable/Drawable;)Lcom/estrongs/android/view/a/a;

    invoke-virtual {p1, p2}, Lcom/estrongs/android/view/a/a;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/view/a/a;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/e/jk;->h:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/jk;->i()V

    return-void
.end method

.method public g()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/e/a;->g()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jk;->g:Lcom/estrongs/android/ui/preference/q;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->b(Lcom/estrongs/android/ui/preference/q;)V

    return-void
.end method

.method public i()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/jk;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jk;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/view/a/a;->g()Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a02a8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0, v1, v0, v2}, Lcom/estrongs/android/ui/e/jk;->a(Landroid/widget/Button;Lcom/estrongs/android/view/a/a;I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/jk;->c:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method
