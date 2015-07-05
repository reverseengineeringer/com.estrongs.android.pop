.class public abstract Lcom/estrongs/android/view/as;
.super Lcom/estrongs/android/view/ea;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/estrongs/android/view/ea;"
    }
.end annotation


# instance fields
.field private a:F

.field public final e:J

.field protected f:Lcom/estrongs/android/widget/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/widget/c",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected g:Lcom/estrongs/android/widget/HeaderGridView;

.field protected h:Landroid/widget/AdapterView$OnItemClickListener;

.field protected i:Lcom/estrongs/android/view/av;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/estrongs/android/view/av",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected j:Landroid/widget/TextView;

.field protected k:I

.field protected l:Z

.field protected m:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field protected n:Ljava/util/Map;
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

.field protected o:Lcom/estrongs/android/ui/drag/d;

.field protected p:Landroid/widget/LinearLayout;

.field protected q:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ea;-><init>(Landroid/app/Activity;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/view/as;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/as;->l:Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/as;->n:Ljava/util/Map;

    iput-object v2, p0, Lcom/estrongs/android/view/as;->p:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/estrongs/android/view/as;->q:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/as;->a:F

    invoke-virtual {p0}, Lcom/estrongs/android/view/as;->n()V

    return-void
.end method


# virtual methods
.method public A()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/as;->a:F

    return v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/as;->k:I

    return v0
.end method

.method public C()Landroid/widget/AbsListView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    return-object v0
.end method

.method public D()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/estrongs/android/view/as;->n:Ljava/util/Map;

    return-object v0
.end method

.method protected a()I
    .locals 1

    const v0, 0x7f030028

    return v0
.end method

.method public a(I)V
    .locals 9

    const/high16 v8, 0x42480000    # 50.0f

    const v7, 0x41cb3333    # 25.4f

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    iput p1, p0, Lcom/estrongs/android/view/as;->k:I

    iget-object v2, p0, Lcom/estrongs/android/view/as;->ad:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v2, p0, Lcom/estrongs/android/view/as;->ad:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/android/pop/utils/cl;->a(Landroid/content/Context;)Z

    move-result v4

    iget-object v2, p0, Lcom/estrongs/android/view/as;->ad:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_1

    move v2, v1

    :goto_0
    if-nez p1, :cond_5

    if-eqz v4, :cond_2

    const/4 v0, 0x4

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/HeaderGridView;->setNumColumns(I)V

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

    iput v0, p0, Lcom/estrongs/android/view/as;->a:F

    iget-object v0, p0, Lcom/estrongs/android/view/as;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->notifyDataSetChanged()V

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

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_5
    const/4 v5, 0x2

    if-ne p1, v5, :cond_a

    if-eqz v4, :cond_7

    const/4 v0, 0x6

    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/HeaderGridView;->setNumColumns(I)V

    goto :goto_2

    :cond_7
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v7

    if-eqz v2, :cond_9

    cmpg-float v2, v1, v8

    if-ltz v2, :cond_6

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float v0, v1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x7

    goto :goto_3

    :cond_8
    const/4 v0, 0x6

    goto :goto_3

    :cond_9
    const/high16 v0, 0x41000000    # 8.0f

    div-float v0, v1, v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_3

    :cond_a
    if-ne p1, v1, :cond_f

    if-eqz v4, :cond_c

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/HeaderGridView;->setNumColumns(I)V

    goto :goto_2

    :cond_c
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v7

    if-eqz v2, :cond_e

    cmpg-float v2, v1, v8

    if-gez v2, :cond_d

    const/4 v0, 0x4

    goto :goto_4

    :cond_d
    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    const/4 v0, 0x6

    goto :goto_4

    :cond_e
    const/high16 v0, 0x41200000    # 10.0f

    div-float v0, v1, v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_4

    :cond_f
    if-eqz v4, :cond_10

    if-nez v2, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/HeaderGridView;->setNumColumns(I)V

    move v0, v1

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setNumColumns(I)V

    move v0, v1

    goto/16 :goto_2
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/HeaderGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/as;->h:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/HeaderGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/av;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/view/av",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/view/as;->i:Lcom/estrongs/android/view/av;

    return-void
.end method

.method protected a(Lcom/estrongs/android/widget/d;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/as;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/c;->a(Lcom/estrongs/android/widget/d;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/android/view/as;->l:Z

    iget-boolean v0, p0, Lcom/estrongs/android/view/as;->l:Z

    if-nez v0, :cond_0

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/as;->c(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/as;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/as;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/as;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setEmptyView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/as;->o:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/as;->f:Lcom/estrongs/android/widget/c;

    iget-object v1, p0, Lcom/estrongs/android/view/as;->o:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/c;->a(Lcom/estrongs/android/ui/drag/d;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/as;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/c;->a(Ljava/util/List;)V

    return-void
.end method

.method public c(I)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/view/as;->h()Ljava/util/List;

    move-result-object v1

    instance-of v0, v1, Ljava/util/LinkedList;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    iget-object v1, p0, Lcom/estrongs/android/view/as;->n:Ljava/util/Map;

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

    iget-object v5, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/view/as;->e()V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/view/as;->i:Lcom/estrongs/android/view/av;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-eq v3, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/as;->i:Lcom/estrongs/android/view/av;

    invoke-virtual {p0}, Lcom/estrongs/android/view/as;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/av;->a(Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, -0x2

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/view/as;->v()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/as;->e()V

    goto :goto_2

    :cond_4
    const/4 v1, -0x4

    if-ne p1, v1, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/android/view/as;->y()[I

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->clear()V

    aget v1, v4, v2

    :goto_3
    const/4 v2, 0x1

    aget v2, v4, v2

    if-gt v1, v2, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/view/as;->e()V

    goto :goto_2

    :cond_6
    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/as;->h(I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/view/as;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/HeaderGridView;->setVisibility(I)V

    return-void
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/as;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected d_()Lcom/estrongs/android/widget/HeaderGridView;
    .locals 1

    const v0, 0x7f0a00fe

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/as;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/HeaderGridView;

    return-object v0
.end method

.method public e(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/as;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/widget/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/as;->f:Lcom/estrongs/android/widget/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/as;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected e(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/as;->n:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/estrongs/android/view/as;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/as;->g(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/as;->n:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/as;->g(I)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/estrongs/android/view/as;->n:Ljava/util/Map;

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/as;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public f(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/as;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/as;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setEmptyView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
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

    iget-object v0, p0, Lcom/estrongs/android/view/as;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected n()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x6

    new-instance v0, Lcom/estrongs/android/widget/c;

    invoke-direct {v0}, Lcom/estrongs/android/widget/c;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/as;->f:Lcom/estrongs/android/widget/c;

    iget-object v0, p0, Lcom/estrongs/android/view/as;->f:Lcom/estrongs/android/widget/c;

    new-instance v1, Lcom/estrongs/android/view/at;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/at;-><init>(Lcom/estrongs/android/view/as;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/c;->a(Lcom/estrongs/android/widget/f;)V

    invoke-virtual {p0}, Lcom/estrongs/android/view/as;->d_()Lcom/estrongs/android/widget/HeaderGridView;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    iget-object v1, p0, Lcom/estrongs/android/view/as;->f:Lcom/estrongs/android/widget/c;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/estrongs/android/widget/HeaderGridView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setScrollingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    new-instance v1, Lcom/estrongs/android/view/au;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/au;-><init>(Lcom/estrongs/android/view/as;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/as;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/as;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/as;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/as;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/view/as;->p:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/view/as;->p:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0104

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/as;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/as;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public s()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/view/as;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/HeaderGridView;->setVisibility(I)V

    return-void
.end method

.method public t()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/view/as;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->j:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->q:Landroid/widget/TextView;

    const v1, 0x7f0b0446

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/HeaderGridView;->setVisibility(I)V

    return-void
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/as;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/as;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setVisibility(I)V

    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/as;->e(Z)V

    return-void
.end method

.method public w()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public x()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/view/as;->y()[I

    move-result-object v2

    if-eqz v2, :cond_0

    aget v3, v2, v0

    aget v2, v2, v1

    sub-int v2, v3, v2

    iget-object v3, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected y()[I
    .locals 3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/as;->m:Ljava/util/SortedMap;

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

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/as;->l:Z

    return v0
.end method
