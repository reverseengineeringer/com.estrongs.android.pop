.class public abstract Lcom/estrongs/android/ui/e/cl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/e/kh;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/estrongs/android/ui/e/co;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/estrongs/android/ui/theme/at;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cl;->a:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cl;->h:Landroid/util/SparseArray;

    new-instance v0, Lcom/estrongs/android/ui/e/cm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/cm;-><init>(Lcom/estrongs/android/ui/e/cl;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cl;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/e/cn;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/cn;-><init>(Lcom/estrongs/android/ui/e/cl;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cl;->k:Landroid/view/View$OnLongClickListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cl;->b:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/ui/e/cl;->c:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cl;->i:Lcom/estrongs/android/ui/theme/at;

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/cl;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/cl;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/e/cl;->c:I

    return v0
.end method

.method private a(Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/ui/e/co;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const v3, 0x7f0d013a

    invoke-static {p2}, Lcom/estrongs/android/ui/e/co;->a(Lcom/estrongs/android/ui/e/co;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->i:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/cl;->i:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/view/a/a;->a(Landroid/graphics/drawable/Drawable;)Lcom/estrongs/android/view/a/a;

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/e/cl;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v5, v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/estrongs/android/ui/e/co;->b()V

    return-void

    :cond_0
    instance-of v2, v0, Landroid/support/v7/graphics/drawable/DrawableWrapper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/e/cl;->i:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/e/cl;->i:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/cl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cl;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->e:Landroid/view/View;

    const v1, 0x7f0e0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cl;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->e:Landroid/view/View;

    const v1, 0x7f0e0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/cl;->g:Landroid/widget/LinearLayout;

    return-void
.end method

.method private c(I)V
    .locals 4

    iget v0, p0, Lcom/estrongs/android/ui/e/cl;->d:I

    if-le p1, v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/ui/e/cl;->d:I

    mul-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_0
    mul-int/lit8 v0, p1, 0x2

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/co;

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/cl;->a(I)Lcom/estrongs/android/ui/e/co;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/cl;->h:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/e/cl;->f:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/co;->b(Lcom/estrongs/android/ui/e/co;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/co;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/e/cl;->g:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/co;->b(Lcom/estrongs/android/ui/e/co;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/e/cl;->d:I

    if-ge p1, v0, :cond_3

    mul-int/lit8 v0, p1, 0x2

    move v1, v0

    :goto_2
    iget v0, p0, Lcom/estrongs/android/ui/e/cl;->d:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/co;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/co;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    iput p1, p0, Lcom/estrongs/android/ui/e/cl;->d:I

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->e:Landroid/view/View;

    return-object v0
.end method

.method protected a(I)Lcom/estrongs/android/ui/e/co;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0e0258

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0e02c0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/e/co;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/co;-><init>(Lcom/estrongs/android/ui/e/cl;)V

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/e/co;->a(Lcom/estrongs/android/ui/e/co;Landroid/view/View;)Landroid/view/View;

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/e/co;->a(Lcom/estrongs/android/ui/e/co;Landroid/widget/Button;)Landroid/widget/Button;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/co;->a(Lcom/estrongs/android/ui/e/co;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/estrongs/android/ui/e/co;->a(Lcom/estrongs/android/ui/e/co;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cl;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, Lcom/estrongs/android/ui/e/co;->a(Lcom/estrongs/android/ui/e/co;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cl;->k:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v2
.end method

.method public abstract a(ILcom/estrongs/android/view/a/a;)V
.end method

.method public a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/cl;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/estrongs/android/ui/e/cl;->d:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/e/cl;->c(I)V

    :cond_0
    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/cl;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/ui/e/co;

    div-int/lit8 v2, v5, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v7, p0, Lcom/estrongs/android/ui/e/cl;->d:I

    if-ne v2, v7, :cond_1

    move v2, v3

    :goto_1
    invoke-direct {p0, v0, v1, v2}, Lcom/estrongs/android/ui/e/cl;->a(Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/ui/e/co;Z)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    rem-int/lit8 v0, v6, 0x2

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/co;

    if-eqz v0, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/view/a/a;

    invoke-direct {p0, v1, v0, v4}, Lcom/estrongs/android/ui/e/cl;->a(Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/ui/e/co;Z)V

    invoke-static {v0}, Lcom/estrongs/android/ui/e/co;->b(Lcom/estrongs/android/ui/e/co;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public b(I)Lcom/estrongs/android/view/a/a;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/cl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
