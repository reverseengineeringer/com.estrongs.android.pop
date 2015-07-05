.class public Lcom/estrongs/android/view/ac;
.super Lcom/estrongs/android/view/ea;


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

.field e:Lcom/estrongs/android/view/u;

.field f:Lcom/estrongs/android/d/k;

.field protected g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/LinearLayout$LayoutParams;

.field protected i:Landroid/widget/BaseAdapter;

.field private j:Z

.field private k:Lcom/estrongs/android/ui/theme/al;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/view/u;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/view/u;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/view/u;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/ea;-><init>(Landroid/app/Activity;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/ac;->j:Z

    iput-object v1, p0, Lcom/estrongs/android/view/ac;->f:Lcom/estrongs/android/d/k;

    iput-object v1, p0, Lcom/estrongs/android/view/ac;->g:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/view/ac;->h:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p1, p0, Lcom/estrongs/android/view/ac;->e:Lcom/estrongs/android/view/u;

    iput-boolean p3, p0, Lcom/estrongs/android/view/ac;->j:Z

    invoke-direct {p0}, Lcom/estrongs/android/view/ac;->g()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ac;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/ac;->h()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/ac;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/ac;->j:Z

    return v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ac;->k:Lcom/estrongs/android/ui/theme/al;

    const v0, 0x7f0a028b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ac;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/view/ac;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->h:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->i:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/ac;->b()Landroid/widget/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ac;->i:Landroid/widget/BaseAdapter;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ac;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const v0, 0x7f0a028d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ac;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/view/ac;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/view/ac;->ae:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f020051

    const v3, 0x7f020052

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a028c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ac;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/view/ac;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/view/ac;->ae:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f02004f

    const v3, 0x7f020050

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/al;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->b:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/view/ad;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ad;-><init>(Lcom/estrongs/android/view/ac;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->c:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/view/ae;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ae;-><init>(Lcom/estrongs/android/view/ac;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private h()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/view/ah;

    const-string v1, "ThumnailLoader - ClipboardItem"

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/view/ah;-><init>(Lcom/estrongs/android/view/ac;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ac;->f:Lcom/estrongs/android/d/k;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030087

    return v0
.end method

.method public a(Lcom/estrongs/android/view/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ac;->e:Lcom/estrongs/android/view/u;

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

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->e:Lcom/estrongs/android/view/u;

    iget-boolean v1, p0, Lcom/estrongs/android/view/ac;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/view/u;->a(Ljava/util/List;Ljava/lang/Boolean;)V

    return-void
.end method

.method protected b()Landroid/widget/BaseAdapter;
    .locals 1

    new-instance v0, Lcom/estrongs/android/view/af;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/af;-><init>(Lcom/estrongs/android/view/ac;)V

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ac;->a(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/estrongs/android/view/ac;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->e:Lcom/estrongs/android/view/u;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/view/u;->b(Lcom/estrongs/android/view/ac;)V

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

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    return-object v0
.end method

.method protected e()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/ac;->ar()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/estrongs/android/view/ac;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    rem-int/lit8 v3, v0, 0x4

    if-nez v3, :cond_1

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/estrongs/android/view/ac;->ad:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/estrongs/android/view/ac;->g:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/view/ac;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/view/ac;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/estrongs/android/view/ac;->a:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/estrongs/android/view/ac;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/view/ac;->g:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/estrongs/android/view/ac;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v4, v0, v6, v6}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/view/ac;->h:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/android/view/ac;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/estrongs/android/view/ac;

    iget-object v1, p1, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/ac;->j:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ac;->d:Ljava/util/List;

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
