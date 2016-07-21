.class public Lcom/estrongs/android/pop/app/b/c/j;
.super Lcom/estrongs/android/pop/app/b/c/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/b/c/h;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V
    .locals 5

    iget-object v0, p1, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/r/b;

    const v1, 0x7f0e04c9

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/estrongs/android/pop/app/b/c/k;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/b/c/k;-><init>(Lcom/estrongs/android/pop/app/b/c/j;Lcom/estrongs/fs/impl/r/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/estrongs/android/h/f;->g(Lcom/estrongs/fs/h;)I

    move-result v2

    invoke-static {v0}, Lcom/estrongs/android/h/f;->b(Lcom/estrongs/fs/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/r/b;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v0, v2, v3}, Lcom/estrongs/android/h/a/e;->b(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;IZ)V

    :goto_0
    const v1, 0x7f0e04cb

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/r/b;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {v2, v1, v0}, Lcom/estrongs/android/h/a/e;->a(ILandroid/widget/ImageView;Lcom/estrongs/fs/h;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 5

    const v4, 0x7f070089

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/j;->n:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030116

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c/j;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/c/j;->n:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c/j;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x13

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c/j;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/b/c/h;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/j;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/b/c/h;->a(Ljava/lang/Object;)V

    check-cast p1, Lcom/estrongs/android/pop/app/b/b;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p1, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/j;->m:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/b/c/j;->a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V

    :pswitch_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/j;->l:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/b/c/j;->a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V

    :pswitch_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/j;->k:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/b/c/j;->a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V

    :pswitch_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/j;->j:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/b/c/j;->a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/j;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method
