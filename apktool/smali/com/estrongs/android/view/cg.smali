.class public abstract Lcom/estrongs/android/view/cg;
.super Lcom/estrongs/android/view/gf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/estrongs/android/view/gf;"
    }
.end annotation


# instance fields
.field private a:F

.field public final f:J

.field protected g:Landroid/support/v7/widget/GridLayoutManager;

.field protected h:Landroid/support/v7/widget/RecyclerView;

.field protected i:Lcom/estrongs/android/view/ck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/view/cg",
            "<TT;>.com/estrongs/android/view/ck<TT;>;"
        }
    .end annotation
.end field

.field protected j:Lcom/estrongs/android/view/co;

.field protected k:Lcom/estrongs/android/view/cp;

.field protected l:Lcom/estrongs/android/view/cq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/view/cq",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected m:Landroid/view/View;

.field protected n:Landroid/widget/TextView;

.field protected o:Landroid/widget/ImageView;

.field protected p:I

.field protected q:Z

.field protected r:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field protected s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/ui/drag/j;",
            ">;"
        }
    .end annotation
.end field

.field protected t:Lcom/estrongs/android/ui/drag/d;

.field protected u:Landroid/widget/LinearLayout;

.field protected v:Landroid/widget/TextView;

.field protected w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

.field protected x:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/gf;-><init>(Landroid/app/Activity;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/view/cg;->f:J

    iput-boolean v2, p0, Lcom/estrongs/android/view/cg;->q:Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/cg;->s:Ljava/util/Map;

    iput-object v3, p0, Lcom/estrongs/android/view/cg;->u:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/estrongs/android/view/cg;->v:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/estrongs/android/view/cg;->x:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/cg;->a:F

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->n()V

    return-void
.end method


# virtual methods
.method protected F()Landroid/support/v7/widget/RecyclerView;
    .locals 4

    const v0, 0x7f0e028b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cg;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    instance-of v1, v0, Lcom/estrongs/android/ui/view/FlingChangeRecyclerView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/estrongs/android/ui/view/FlingChangeRecyclerView;

    const-wide v2, 0x3feb333333333333L    # 0.85

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/view/FlingChangeRecyclerView;->setFlingScale(D)V

    :cond_0
    return-object v0
.end method

.method protected G()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/view/ck;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/ck;-><init>(Lcom/estrongs/android/view/cg;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cg;->i:Lcom/estrongs/android/view/ck;

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->i:Lcom/estrongs/android/view/ck;

    new-instance v1, Lcom/estrongs/android/view/ch;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ch;-><init>(Lcom/estrongs/android/view/cg;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ck;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public H()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->U()V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->u:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public I()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->U()V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->n:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cg;->u:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->v:Landroid/widget/TextView;

    const v1, 0x7f0805fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public J()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/cg;->x:Z

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->u:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public K()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cg;->e(Z)V

    return-void
.end method

.method public L()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->M()[I

    move-result-object v2

    if-eqz v2, :cond_0

    aget v3, v2, v0

    aget v2, v2, v1

    sub-int v2, v3, v2

    iget-object v3, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected M()[I
    .locals 3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/cg;->q:Z

    return v0
.end method

.method public O()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/cg;->a:F

    return v0
.end method

.method public P()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/cg;->p:I

    return v0
.end method

.method public Q()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public R()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/ui/drag/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->s:Ljava/util/Map;

    return-object v0
.end method

.method public S()Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    return-object v0
.end method

.method protected T()Landroid/support/v7/widget/GridLayoutManager;
    .locals 3

    new-instance v0, Lcom/estrongs/android/view/cj;

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->ag:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/view/cj;-><init>(Lcom/estrongs/android/view/cg;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected U()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected a()I
    .locals 1

    const v0, 0x7f03012b

    return v0
.end method

.method public a(I)V
    .locals 9

    const/high16 v8, 0x42480000    # 50.0f

    const v7, 0x41cb3333    # 25.4f

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/estrongs/android/view/cg;->p:I

    iget-object v2, p0, Lcom/estrongs/android/view/cg;->ag:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v2, p0, Lcom/estrongs/android/view/cg;->ag:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v4

    iget-object v2, p0, Lcom/estrongs/android/view/cg;->ag:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_1

    move v2, v1

    :goto_0
    if-nez p1, :cond_6

    if-eqz v4, :cond_2

    const/4 v0, 0x4

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/view/cg;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    :goto_2
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    iget v4, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v6

    sub-float/2addr v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    const/high16 v1, 0x41400000    # 12.0f

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v6

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/estrongs/android/view/cg;->a:F

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->e()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v7

    if-eqz v2, :cond_4

    cmpg-float v2, v1, v8

    if-gez v2, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    const/high16 v0, 0x41500000    # 13.0f

    div-float v0, v1, v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->ag:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->o()Z

    move-result v1

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x2

    if-ne p1, v5, :cond_c

    if-eqz v4, :cond_8

    const/4 v0, 0x6

    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/estrongs/android/view/cg;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_2

    :cond_8
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v7

    if-eqz v2, :cond_a

    cmpg-float v2, v1, v8

    if-ltz v2, :cond_7

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_9

    const/4 v0, 0x7

    goto :goto_3

    :cond_9
    const/4 v0, 0x6

    goto :goto_3

    :cond_a
    const/high16 v0, 0x41000000    # 8.0f

    div-float v0, v1, v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->ag:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->o()Z

    move-result v1

    if-nez v1, :cond_b

    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_c
    if-ne p1, v1, :cond_12

    if-eqz v4, :cond_e

    :cond_d
    :goto_4
    iget-object v1, p0, Lcom/estrongs/android/view/cg;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    goto/16 :goto_2

    :cond_e
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v7

    if-eqz v2, :cond_10

    cmpg-float v2, v1, v8

    if-gez v2, :cond_f

    const/4 v0, 0x4

    goto :goto_4

    :cond_f
    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_d

    const/4 v0, 0x6

    goto :goto_4

    :cond_10
    const/high16 v0, 0x41200000    # 10.0f

    div-float v0, v1, v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->ag:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->o()Z

    move-result v1

    if-nez v1, :cond_11

    add-int/lit8 v0, v0, -0x2

    goto :goto_4

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_12
    if-eqz v4, :cond_13

    if-nez v2, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->g:Landroid/support/v7/widget/GridLayoutManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    move v0, v1

    goto/16 :goto_2

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/view/cg;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    move v0, v1

    goto/16 :goto_2
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cg;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected a(Lcom/estrongs/android/view/ci;Landroid/view/View;I)V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/view/cg;->q:Z

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/estrongs/android/view/ci;->l:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0, p3}, Lcom/estrongs/android/view/cg;->c(I)V

    invoke-virtual {p0, p3}, Lcom/estrongs/android/view/cg;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/estrongs/android/ui/drag/j;

    invoke-direct {v1}, Lcom/estrongs/android/ui/drag/j;-><init>()V

    invoke-virtual {v1, p3}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    check-cast v0, Lcom/estrongs/android/ui/drag/DragGrid;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    const v2, 0x7f0200bc

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    invoke-static {v0}, Lcom/estrongs/android/ui/d/g;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/drag/j;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->s:Ljava/util/Map;

    invoke-virtual {p0, p3}, Lcom/estrongs/android/view/cg;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->ag:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f02027f

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/cg;->s:Ljava/util/Map;

    invoke-virtual {p0, p3}, Lcom/estrongs/android/view/cg;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/estrongs/android/view/ci;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/cg;->j:Lcom/estrongs/android/view/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->j:Lcom/estrongs/android/view/co;

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p1, Lcom/estrongs/android/view/ci;->itemView:Landroid/view/View;

    invoke-interface {v0, v1, v2, p3}, Lcom/estrongs/android/view/co;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V

    goto :goto_1
.end method

.method protected a(Lcom/estrongs/android/view/cn;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/cn;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/co;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cg;->j:Lcom/estrongs/android/view/co;

    return-void
.end method

.method public a(Lcom/estrongs/android/view/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cg;->k:Lcom/estrongs/android/view/cp;

    return-void
.end method

.method public a(Lcom/estrongs/android/view/cq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/view/cq",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/view/cg;->l:Lcom/estrongs/android/view/cq;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/android/view/cg;->q:Z

    iget-boolean v0, p0, Lcom/estrongs/android/view/cg;->q:Z

    if-nez v0, :cond_0

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cg;->c(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->e()V

    goto :goto_0
.end method

.method public a_(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->t:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->i:Lcom/estrongs/android/view/ck;

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->t:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/ui/drag/d;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cg;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ck;->a(Ljava/util/List;)V

    return-void
.end method

.method public c(I)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->h()Ljava/util/List;

    move-result-object v1

    instance-of v0, v1, Ljava/util/LinkedList;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->s:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->e()V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/view/cg;->l:Lcom/estrongs/android/view/cq;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-eq v3, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->l:Lcom/estrongs/android/view/cq;

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/cq;->a(Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, -0x2

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->K()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->e()V

    goto :goto_2

    :cond_4
    const/4 v1, -0x4

    if-ne p1, v1, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->M()[I

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    aget v1, v4, v2

    :goto_3
    const/4 v2, 0x1

    aget v2, v4, v2

    if-gt v1, v2, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->e()V

    goto :goto_2

    :cond_6
    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/cg;->h(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/ck;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->i:Lcom/estrongs/android/view/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->u:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected e(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->e()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cg;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/cg;->g(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->s:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/cg;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/drag/j;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/estrongs/android/ui/drag/j;

    invoke-direct {v1}, Lcom/estrongs/android/ui/drag/j;-><init>()V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/drag/j;->a(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->b()Lcom/estrongs/android/ui/drag/DragGrid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/drag/j;->a(Lcom/estrongs/android/ui/drag/DragGrid;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/j;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/drag/j;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->s:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/cg;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public f(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->u:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->U()V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->u:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method public g(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->i:Lcom/estrongs/android/view/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->a()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected m_()V
    .locals 0

    return-void
.end method

.method protected n()V
    .locals 4

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->F()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->T()Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cg;->g:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->g:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->G()V

    const v0, 0x7f0e00c1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cg;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    iput-object v0, p0, Lcom/estrongs/android/view/cg;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aZ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/estrongs/android/ui/recycler/l;

    iget-object v2, p0, Lcom/estrongs/android/view/cg;->ag:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/recycler/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_1
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cg;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cg;->m:Landroid/view/View;

    const v0, 0x7f0e0289

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cg;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/view/cg;->o:Landroid/widget/ImageView;

    const v0, 0x7f0e028a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cg;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/cg;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->U()V

    const v0, 0x7f0e0293

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cg;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/view/cg;->u:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->u:Landroid/widget/LinearLayout;

    const v1, 0x7f0e0294

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/cg;->v:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/view/cg;->m_()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->getOnScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->w:Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/fastscroller/vertical/VerticalRecyclerViewFastScroller;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->h:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method protected n_()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cg;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/view/cg;->r:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
