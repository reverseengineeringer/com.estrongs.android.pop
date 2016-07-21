.class public Lcom/estrongs/android/ui/e/im;
.super Lcom/estrongs/android/ui/e/km;


# instance fields
.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/km;-><init>(Landroid/content/Context;Z)V

    iput-boolean v1, p0, Lcom/estrongs/android/ui/e/im;->h:Z

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/im;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/im;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/im;->c:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/im;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/at;->o()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/im;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/View;Lcom/estrongs/android/view/a/a;I)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p2, p1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/View;)V

    const v0, 0x7f0e00ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/e/im;->h:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0e0129

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/estrongs/android/view/a/a;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/estrongs/android/view/a/a;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {p2}, Lcom/estrongs/android/view/a/a;->d()Lcom/estrongs/android/view/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/e/ip;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/ip;-><init>(Lcom/estrongs/android/ui/e/im;)V

    invoke-virtual {p2, v0}, Lcom/estrongs/android/view/a/a;->a(Lcom/estrongs/android/view/a/e;)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/view/a/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/ui/e/im;->a(Lcom/estrongs/android/view/a/a;Z)V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/a/a;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/im;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/im;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/estrongs/android/ui/e/im;->a(Landroid/view/View;Lcom/estrongs/android/view/a/a;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/im;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/ui/e/im;->c:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/estrongs/android/pop/esclasses/ESImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/im;->b:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020426

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/e/im;->c:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/e/im;->c:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    new-instance v1, Lcom/estrongs/android/ui/e/in;

    invoke-direct {v1, p0, v0, p1}, Lcom/estrongs/android/ui/e/in;-><init>(Lcom/estrongs/android/ui/e/im;Landroid/view/View;Lcom/estrongs/android/view/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/estrongs/android/ui/e/io;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/e/io;-><init>(Lcom/estrongs/android/ui/e/im;Lcom/estrongs/android/view/a/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/e/im;->c:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/e/im;->c:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/e/im;->h:Z

    return-void
.end method
