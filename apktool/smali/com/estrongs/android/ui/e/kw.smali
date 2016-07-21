.class public abstract Lcom/estrongs/android/ui/e/kw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/e/kh;


# instance fields
.field private a:Landroid/content/Context;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/estrongs/android/ui/e/kz;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/estrongs/android/ui/theme/at;

.field private g:Landroid/widget/LinearLayout;

.field private h:I

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kw;->b:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kw;->e:Landroid/util/SparseArray;

    new-instance v0, Lcom/estrongs/android/ui/e/kx;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/kx;-><init>(Lcom/estrongs/android/ui/e/kw;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kw;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/e/ky;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/ky;-><init>(Lcom/estrongs/android/ui/e/kw;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kw;->j:Landroid/view/View$OnLongClickListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/e/kw;->a:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/ui/e/kw;->c:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kw;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kw;->f:Lcom/estrongs/android/ui/theme/at;

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/kw;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/kw;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/e/kw;->c:I

    return v0
.end method

.method private a(Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/ui/e/kz;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const v3, 0x7f0d013a

    invoke-static {p2}, Lcom/estrongs/android/ui/e/kz;->b(Lcom/estrongs/android/ui/e/kz;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kw;->f:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/kw;->f:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/view/a/a;->a(Landroid/graphics/drawable/Drawable;)Lcom/estrongs/android/view/a/a;

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/e/kw;->a:Landroid/content/Context;

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
    invoke-virtual {p2}, Lcom/estrongs/android/ui/e/kz;->a()V

    return-void

    :cond_0
    instance-of v2, v0, Landroid/support/v7/graphics/drawable/DrawableWrapper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/e/kw;->f:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/e/kw;->f:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/kw;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kw;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kw;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030183

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kw;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kw;->d:Landroid/view/View;

    const v1, 0x7f0e0369

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kw;->g:Landroid/widget/LinearLayout;

    return-void
.end method

.method private c(I)V
    .locals 7

    iget v0, p0, Lcom/estrongs/android/ui/e/kw;->h:I

    if-le v0, p1, :cond_0

    move v1, p1

    :goto_0
    iget v0, p0, Lcom/estrongs/android/ui/e/kw;->h:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kw;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/kz;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/kz;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/e/kw;->h:I

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kw;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/kz;

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/kw;->a(I)Lcom/estrongs/android/ui/e/kz;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/kw;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/kw;->g:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/kz;->a(Lcom/estrongs/android/ui/e/kz;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/estrongs/android/ui/e/kw;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070079

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/kz;->a()V

    goto :goto_2

    :cond_2
    iput p1, p0, Lcom/estrongs/android/ui/e/kw;->h:I

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kw;->d:Landroid/view/View;

    return-object v0
.end method

.method protected a(I)Lcom/estrongs/android/ui/e/kz;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kw;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0e0258

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/e/kz;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/kz;-><init>(Lcom/estrongs/android/ui/e/kw;)V

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/e/kz;->a(Lcom/estrongs/android/ui/e/kz;Landroid/view/View;)Landroid/view/View;

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/e/kz;->a(Lcom/estrongs/android/ui/e/kz;Landroid/widget/Button;)Landroid/widget/Button;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/kz;->a(Lcom/estrongs/android/ui/e/kz;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/estrongs/android/ui/e/kz;->a(Lcom/estrongs/android/ui/e/kz;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/kw;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, Lcom/estrongs/android/ui/e/kz;->a(Lcom/estrongs/android/ui/e/kz;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/kw;->j:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v2
.end method

.method public abstract a(ILcom/estrongs/android/view/a/a;)V
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/kw;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    iget v0, p0, Lcom/estrongs/android/ui/e/kw;->h:I

    if-eq v5, v0, :cond_0

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/e/kw;->c(I)V

    :cond_0
    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kw;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/kz;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/kw;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/view/a/a;

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v1, v0, v2}, Lcom/estrongs/android/ui/e/kw;->a(Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/ui/e/kz;Z)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b(I)Lcom/estrongs/android/view/a/a;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/kw;->b:Ljava/util/List;

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
