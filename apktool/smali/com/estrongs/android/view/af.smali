.class public Lcom/estrongs/android/view/af;
.super Lcom/estrongs/android/view/gf;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/estrongs/android/view/y;

.field protected f:Landroid/widget/LinearLayout;

.field g:Landroid/widget/LinearLayout$LayoutParams;

.field protected h:Landroid/widget/BaseAdapter;

.field private i:Z

.field private j:Lcom/estrongs/android/ui/theme/at;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/view/y;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/view/y;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/estrongs/android/view/y;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/gf;-><init>(Landroid/app/Activity;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/af;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/af;->f:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/view/af;->g:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p1, p0, Lcom/estrongs/android/view/af;->e:Lcom/estrongs/android/view/y;

    iput-boolean p3, p0, Lcom/estrongs/android/view/af;->i:Z

    invoke-direct {p0}, Lcom/estrongs/android/view/af;->g()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/af;)Lcom/estrongs/android/ui/theme/at;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/af;->j:Lcom/estrongs/android/ui/theme/at;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/af;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/af;->i:Z

    return v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/af;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/af;->j:Lcom/estrongs/android/ui/theme/at;

    const v0, 0x7f0e0468

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/af;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/view/af;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/view/af;->g:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/estrongs/android/view/af;->h:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/af;->b()Landroid/widget/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/af;->h:Landroid/widget/BaseAdapter;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/af;->h:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const v0, 0x7f0e046a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/af;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/view/af;->b:Landroid/widget/Button;

    const v0, 0x7f0e0469

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/af;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/view/af;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/view/af;->b:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/view/ag;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ag;-><init>(Lcom/estrongs/android/view/af;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/af;->c:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/view/ah;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ah;-><init>(Lcom/estrongs/android/view/af;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0300f9

    return v0
.end method

.method public a(Lcom/estrongs/android/view/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/af;->e:Lcom/estrongs/android/view/y;

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/af;->e:Lcom/estrongs/android/view/y;

    iget-boolean v1, p0, Lcom/estrongs/android/view/af;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/view/y;->a(Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected b()Landroid/widget/BaseAdapter;
    .locals 1

    new-instance v0, Lcom/estrongs/android/view/ai;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/ai;-><init>(Lcom/estrongs/android/view/af;)V

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/af;->a(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/estrongs/android/view/af;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/af;->e:Lcom/estrongs/android/view/y;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/view/y;->b(Lcom/estrongs/android/view/af;)V

    :cond_0
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    return-object v0
.end method

.method protected e()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/af;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/af;->aF()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/estrongs/android/view/af;->h:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    rem-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_0

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/estrongs/android/view/af;->ag:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/estrongs/android/view/af;->f:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/estrongs/android/view/af;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/estrongs/android/view/af;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/estrongs/android/view/af;->a:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/estrongs/android/view/af;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/view/af;->f:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/estrongs/android/view/af;->h:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, v0, v6, v6}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/view/af;->g:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/android/view/af;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/estrongs/android/view/af;

    iget-object v1, p1, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/af;->i:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/af;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    return v0
.end method
