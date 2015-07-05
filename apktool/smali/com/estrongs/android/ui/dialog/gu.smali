.class public Lcom/estrongs/android/ui/dialog/gu;
.super Lcom/estrongs/android/ui/dialog/cg;


# instance fields
.field protected a:Lcom/estrongs/android/ui/a/e;

.field protected b:Lcom/estrongs/android/ui/dialog/gy;

.field protected c:Lcom/estrongs/android/ui/dialog/gx;

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

.field private n:Lcom/estrongs/android/ui/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/ui/dialog/gu;->h:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/ui/dialog/gu;->l:I

    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gu;->setTitle(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/gu;->a()V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0a011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gu;->c(Landroid/view/View;I)V

    const v0, 0x7f0a0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gu;->c(Landroid/view/View;I)V

    const v0, 0x7f0a0121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gu;->c(Landroid/view/View;I)V

    return-void
.end method

.method private c(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->n:Lcom/estrongs/android/ui/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/estrongs/android/ui/a/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/gv;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/dialog/gv;-><init>(Lcom/estrongs/android/ui/dialog/gu;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->a:Lcom/estrongs/android/ui/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/estrongs/android/ui/a/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/gw;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/dialog/gw;-><init>(Lcom/estrongs/android/ui/dialog/gu;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    const v7, 0x7f0a0122

    const v6, 0x7f0a011e

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->m:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->m:Landroid/widget/ScrollView;

    const v1, 0x7f0a011d

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->d:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->d:Landroid/view/View;

    const v1, 0x7f0a0123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->g:Landroid/view/View;

    new-instance v0, Lcom/estrongs/android/ui/a/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->n:Lcom/estrongs/android/ui/a/f;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->e:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/dialog/gu;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->f:Landroid/view/View;

    invoke-direct {p0, v0, v4}, Lcom/estrongs/android/ui/dialog/gu;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->g:Landroid/view/View;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gu;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->m:Landroid/widget/ScrollView;

    const v1, 0x7f0a0126

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->i:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->k:Landroid/view/View;

    new-instance v0, Lcom/estrongs/android/ui/a/e;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->a:Lcom/estrongs/android/ui/a/e;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->j:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/ui/dialog/gu;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->k:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/estrongs/android/ui/dialog/gu;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->m:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/gu;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->m:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ak()Z

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/gu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->am()Z

    move-result v1

    or-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->m:Landroid/widget/ScrollView;

    const v1, 0x7f0a0124

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 5

    const v3, 0x7f0a0128

    const v2, 0x7f0a0121

    const v1, 0x7f0a0120

    const v0, 0x7f0a011f

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move v1, v0

    move v2, v0

    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/gu;->j:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/gu;->k:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gu;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a003d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    const v1, 0x7f0a003d

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/esclasses/ESImageView;

    invoke-static {}, Lcom/estrongs/android/util/bd;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Z)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->a(Z)V
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

    const v0, 0x7f0a011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gu;->d(Landroid/view/View;I)V

    const v0, 0x7f0a0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gu;->d(Landroid/view/View;I)V

    const v0, 0x7f0a0121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gu;->d(Landroid/view/View;I)V

    const v0, 0x7f0a0128

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/gu;->d(Landroid/view/View;I)V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/dialog/gx;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gu;->c:Lcom/estrongs/android/ui/dialog/gx;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/dialog/gy;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gu;->b:Lcom/estrongs/android/ui/dialog/gy;

    return-void
.end method
