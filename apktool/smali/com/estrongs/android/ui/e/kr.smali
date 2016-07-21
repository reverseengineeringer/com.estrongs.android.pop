.class public abstract Lcom/estrongs/android/ui/e/kr;
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

.field c:Z

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/estrongs/android/ui/e/kv;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/estrongs/android/ui/theme/at;

.field private h:Landroid/widget/LinearLayout;

.field private i:I

.field private j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kr;->b:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kr;->f:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/kr;->c:Z

    new-instance v0, Lcom/estrongs/android/ui/e/ks;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/ks;-><init>(Lcom/estrongs/android/ui/e/kr;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kr;->m:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/e/kt;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/kt;-><init>(Lcom/estrongs/android/ui/e/kr;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kr;->n:Landroid/view/View$OnLongClickListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/e/kr;->a:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/ui/e/kr;->d:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kr;->g:Lcom/estrongs/android/ui/theme/at;

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/kr;->e()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/kr;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/e/kr;->d:I

    return v0
.end method

.method private a(Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/ui/e/kv;Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const v3, 0x7f0d013a

    invoke-static {p2}, Lcom/estrongs/android/ui/e/kv;->b(Lcom/estrongs/android/ui/e/kv;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->g:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/at;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/kr;->g:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/view/a/a;->a(Landroid/graphics/drawable/Drawable;)Lcom/estrongs/android/view/a/a;

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/e/kr;->a:Landroid/content/Context;

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
    invoke-virtual {p2}, Lcom/estrongs/android/ui/e/kv;->a()V

    return-void

    :cond_0
    instance-of v2, v0, Landroid/support/v7/graphics/drawable/DrawableWrapper;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/e/kr;->g:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-static {v0, v2}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/e/kr;->g:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/kr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->a:Landroid/content/Context;

    return-object v0
.end method

.method private c(I)V
    .locals 8

    iget v0, p0, Lcom/estrongs/android/ui/e/kr;->i:I

    if-le v0, p1, :cond_0

    move v1, p1

    :goto_0
    iget v0, p0, Lcom/estrongs/android/ui/e/kr;->i:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/kv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/kv;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/e/kr;->i:I

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/kv;

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/kr;->a(I)Lcom/estrongs/android/ui/e/kv;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/kr;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/kr;->h:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/kv;->a(Lcom/estrongs/android/ui/e/kv;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/estrongs/android/ui/e/kr;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070079

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/kv;->a()V

    goto :goto_2

    :cond_2
    iput p1, p0, Lcom/estrongs/android/ui/e/kr;->i:I

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030182

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kr;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->e:Landroid/view/View;

    const v1, 0x7f0e0368

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESScrollView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kr;->j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->e:Landroid/view/View;

    const v1, 0x7f0e0367

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kr;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->e:Landroid/view/View;

    const v1, 0x7f0e036a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kr;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->getView()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    new-instance v1, Lcom/estrongs/android/ui/e/ku;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/ku;-><init>(Lcom/estrongs/android/ui/e/kr;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->setOnScrollListener(Lcom/estrongs/android/pop/esclasses/t;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->e:Landroid/view/View;

    const v1, 0x7f0e0369

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/kr;->h:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->e:Landroid/view/View;

    return-object v0
.end method

.method protected a(I)Lcom/estrongs/android/ui/e/kv;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->a:Landroid/content/Context;

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

    new-instance v2, Lcom/estrongs/android/ui/e/kv;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/e/kv;-><init>(Lcom/estrongs/android/ui/e/kr;)V

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/e/kv;->a(Lcom/estrongs/android/ui/e/kv;Landroid/view/View;)Landroid/view/View;

    invoke-static {v2, v1}, Lcom/estrongs/android/ui/e/kv;->a(Lcom/estrongs/android/ui/e/kv;Landroid/widget/Button;)Landroid/widget/Button;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/kv;->a(Lcom/estrongs/android/ui/e/kv;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/estrongs/android/ui/e/kv;->a(Lcom/estrongs/android/ui/e/kv;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/kr;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v2}, Lcom/estrongs/android/ui/e/kv;->a(Lcom/estrongs/android/ui/e/kv;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/kr;->n:Landroid/view/View$OnLongClickListener;

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

    iput-object p1, p0, Lcom/estrongs/android/ui/e/kr;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    iget v0, p0, Lcom/estrongs/android/ui/e/kr;->i:I

    if-eq v5, v0, :cond_0

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/e/kr;->c(I)V

    :cond_0
    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/kv;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/kr;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/view/a/a;

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v1, v0, v2}, Lcom/estrongs/android/ui/e/kr;->a(Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/ui/e/kv;Z)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/kr;->b()V

    return-void
.end method

.method public b(I)Lcom/estrongs/android/view/a/a;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->b:Ljava/util/List;

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

.method public b()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/kr;->h:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/estrongs/android/ui/e/kr;->c:Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/kr;->j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/kr;->h:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
