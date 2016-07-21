.class public Lcom/estrongs/android/pop/app/b/c/e;
.super Lcom/estrongs/android/pop/app/b/c/h;


# instance fields
.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/b/c/h;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V
    .locals 6

    iget-object v0, p1, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/b/i;

    const v1, 0x7f0e04c9

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0e04ca

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    new-instance v3, Lcom/estrongs/fs/impl/local/f;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/i;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/estrongs/android/util/bg;->g(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/impl/local/f;->setESFileType(I)V

    :goto_0
    invoke-static {v3, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    iget-boolean v3, v0, Lcom/estrongs/android/pop/app/b/i;->a:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v3, Lcom/estrongs/android/pop/app/b/c/f;

    invoke-direct {v3, p0, v0, p1}, Lcom/estrongs/android/pop/app/b/c/f;-><init>(Lcom/estrongs/android/pop/app/b/c/e;Lcom/estrongs/android/pop/app/b/i;Lcom/estrongs/android/pop/app/b/b;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v2, Lcom/estrongs/android/pop/app/b/c/g;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/b/c/g;-><init>(Lcom/estrongs/android/pop/app/b/c/e;Lcom/estrongs/android/pop/app/b/i;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const v4, 0x10010

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/impl/local/f;->setESFileType(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030115

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/estrongs/android/pop/app/b/c/e;->o:I

    iget v3, p0, Lcom/estrongs/android/pop/app/b/c/e;->o:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x13

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c/e;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f07004e

    const v3, 0x7f070047

    const v2, 0x7f070058

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/b/c/e;->o:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->e(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/e;->n:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/estrongs/android/pop/app/b/c/e;->o:I

    if-ge v0, v1, :cond_0

    iput v0, p0, Lcom/estrongs/android/pop/app/b/c/e;->o:I

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/b/c/h;->a(Landroid/view/View;)V

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

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/e;->m:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/b/c/e;->a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V

    :pswitch_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/e;->l:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/b/c/e;->a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V

    :pswitch_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/e;->k:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/b/c/e;->a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V

    :pswitch_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c/e;->j:Landroid/view/View;

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/app/b/c/e;->a(Lcom/estrongs/android/pop/app/b/b;ILandroid/view/View;)V

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c/e;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method
