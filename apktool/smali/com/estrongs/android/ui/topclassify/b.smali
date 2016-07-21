.class public abstract Lcom/estrongs/android/ui/topclassify/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/topclassify/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/topclassify/b;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/estrongs/android/ui/topclassify/b;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/b;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/b;->g()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/b;->a()V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public abstract a()V
.end method

.method public a(Lcom/estrongs/android/ui/topclassify/d;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/b;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;III)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/b;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/topclassify/d;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/estrongs/android/ui/topclassify/d;-><init>(Ljava/lang/String;III)V

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()I
.end method

.method public f()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v14, 0x1

    const/4 v13, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/b;->d()Ljava/util/List;

    move-result-object v7

    const/4 v0, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v7, :cond_5

    if-lez v8, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v8, -0x1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/b;->e()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/b;->e()I

    move-result v0

    rem-int v0, v8, v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/b;->e()I

    move-result v1

    sub-int v0, v1, v0

    move v1, v0

    :goto_0
    move v6, v2

    :goto_1
    if-ge v6, v9, :cond_4

    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/b;->a:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    instance-of v0, p0, Lcom/estrongs/android/ui/topclassify/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07004e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v10, v2, v0, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/b;->e()I

    move-result v3

    if-le v3, v14, :cond_6

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v3, v0

    :goto_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/b;->e()I

    move-result v0

    mul-int/2addr v0, v6

    move v5, v0

    :goto_3
    if-ge v5, v8, :cond_2

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/topclassify/b;->e()I

    move-result v11

    mul-int/2addr v0, v11

    if-ge v5, v0, :cond_1

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v10, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v9, -0x1

    if-ne v6, v0, :cond_3

    if-eqz v1, :cond_3

    move v0, v2

    :goto_4
    if-ge v0, v1, :cond_3

    new-instance v3, Landroid/view/View;

    iget-object v5, p0, Lcom/estrongs/android/ui/topclassify/b;->a:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v14, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_4
    move-object v0, v4

    :cond_5
    return-object v0

    :cond_6
    move-object v3, v0

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method protected g()V
    .locals 0

    return-void
.end method
