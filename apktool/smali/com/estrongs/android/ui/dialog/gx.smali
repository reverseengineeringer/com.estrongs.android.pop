.class public Lcom/estrongs/android/ui/dialog/gx;
.super Lcom/estrongs/android/ui/dialog/ci;


# instance fields
.field protected a:Lcom/estrongs/android/ui/adapter/e;

.field protected b:Lcom/estrongs/android/ui/dialog/hb;

.field protected c:Lcom/estrongs/android/ui/dialog/ha;

.field protected d:Landroid/view/View;

.field protected e:Landroid/view/View;

.field protected f:Landroid/view/View;

.field protected g:Landroid/view/View;

.field protected final h:I

.field protected i:Landroid/view/View;

.field protected j:Landroid/view/View;

.field protected k:Landroid/view/View;

.field protected final l:I

.field m:Landroid/widget/ScrollView;

.field private n:Lcom/estrongs/android/ui/adapter/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/ui/dialog/gx;->h:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/ui/dialog/gx;->l:I

    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gx;->setTitle(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/gx;->a()V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0e02c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gx;->c(Landroid/view/View;I)V

    const v0, 0x7f0e02c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gx;->c(Landroid/view/View;I)V

    const v0, 0x7f0e02c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gx;->c(Landroid/view/View;I)V

    return-void
.end method

.method private c(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->n:Lcom/estrongs/android/ui/adapter/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/estrongs/android/ui/adapter/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/gy;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/dialog/gy;-><init>(Lcom/estrongs/android/ui/dialog/gx;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->a:Lcom/estrongs/android/ui/adapter/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/estrongs/android/ui/adapter/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/gz;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/dialog/gz;-><init>(Lcom/estrongs/android/ui/dialog/gx;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    const v7, 0x7f0e02c7

    const v6, 0x7f0e02c3

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->m:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->m:Landroid/widget/ScrollView;

    const v1, 0x7f0e0107

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->d:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->d:Landroid/view/View;

    const v1, 0x7f0e02c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->g:Landroid/view/View;

    new-instance v0, Lcom/estrongs/android/ui/adapter/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/adapter/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->n:Lcom/estrongs/android/ui/adapter/f;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->e:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/dialog/gx;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->f:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/estrongs/android/ui/dialog/gx;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->g:Landroid/view/View;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gx;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->m:Landroid/widget/ScrollView;

    const v1, 0x7f0e02cb

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->i:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->k:Landroid/view/View;

    new-instance v0, Lcom/estrongs/android/ui/adapter/e;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gx;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/adapter/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->a:Lcom/estrongs/android/ui/adapter/e;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->j:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/ui/dialog/gx;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->k:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/estrongs/android/ui/dialog/gx;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->m:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gx;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->m:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->al()Z

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gx;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->an()Z

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->m:Landroid/widget/ScrollView;

    const v1, 0x7f0e02c9

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 5

    const v3, 0x7f0e02cd

    const v2, 0x7f0e02c6

    const v1, 0x7f0e02c5

    const v0, 0x7f0e02c4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move v1, v0

    move v2, v0

    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/gx;->j:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/gx;->k:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gx;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0e0076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    const v1, 0x7f0e0076

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-static {}, Lcom/estrongs/android/util/bk;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setTranslucent(Z)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setTranslucent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    move v0, v1

    move v2, v1

    goto :goto_1

    :pswitch_2
    move v0, v2

    move v1, v2

    goto :goto_1

    :pswitch_3
    move v0, v3

    move v1, v3

    move v2, v3

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v3, 0x1

    const v4, -0x777778

    invoke-direct {v2, v3, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected a(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0e02c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gx;->d(Landroid/view/View;I)V

    const v0, 0x7f0e02c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gx;->d(Landroid/view/View;I)V

    const v0, 0x7f0e02c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gx;->d(Landroid/view/View;I)V

    const v0, 0x7f0e02cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gx;->d(Landroid/view/View;I)V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/dialog/ha;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gx;->c:Lcom/estrongs/android/ui/dialog/ha;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/dialog/hb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gx;->b:Lcom/estrongs/android/ui/dialog/hb;

    return-void
.end method
