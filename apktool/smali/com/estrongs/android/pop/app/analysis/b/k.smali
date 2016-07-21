.class public Lcom/estrongs/android/pop/app/analysis/b/k;
.super Lcom/estrongs/android/pop/app/analysis/b/v;

# interfaces
.implements Lcom/estrongs/android/pop/app/analysis/a/n;


# instance fields
.field private C:Ljava/lang/String;

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/estrongs/fs/impl/c/d;",
            "Lcom/estrongs/android/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/estrongs/fs/d;

.field private G:Landroid/support/v7/widget/GridLayoutManager;

.field private H:Z

.field private final I:I

.field protected r:Z

.field private s:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/n;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

.field private u:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->v:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->C:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->r:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->H:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->I:I

    return-void
.end method

.method private A()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->t()V

    goto :goto_0
.end method

.method private B()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->t:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsLoading(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->t:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->C:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->v:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/m;-><init>(Lcom/estrongs/android/pop/app/analysis/b/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/n;->a:Lcom/estrongs/fs/h;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->t:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->C:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/n;->b:Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->t:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDisplayPaths([Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/b/k;)Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->u:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/b/k;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/k;->c(I)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/analysis/b/n;Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->r:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->g()V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->t()V

    return-void
.end method

.method private a(Lcom/estrongs/fs/h;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/n;-><init>(Lcom/estrongs/android/pop/app/analysis/b/k;Lcom/estrongs/android/pop/app/analysis/b/l;)V

    iput-object p1, v0, Lcom/estrongs/android/pop/app/analysis/b/n;->a:Lcom/estrongs/fs/h;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/b/n;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/k;->a(Lcom/estrongs/android/pop/app/analysis/b/n;Z)V

    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "appfolder://"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/app/analysis/b/k;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    new-instance v3, Lcom/estrongs/android/pop/app/analysis/b/g;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/analysis/b/g;-><init>(Lcom/estrongs/android/pop/app/analysis/b/a;)V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    iput-object v0, v3, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->x:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->x:Ljava/util/List;

    goto :goto_1
.end method

.method private b(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v0, 0x7f0e05c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->t:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    const v0, 0x7f0e0080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->u:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    const v0, 0x7f0e0454

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/ui/addressbar/b;

    invoke-direct {v0}, Lcom/estrongs/android/ui/addressbar/b;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->q()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/addressbar/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->q()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/addressbar/b;->b:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0d015a

    iput v1, v0, Lcom/estrongs/android/ui/addressbar/b;->c:I

    iput-boolean v3, v0, Lcom/estrongs/android/ui/addressbar/b;->d:Z

    iput v3, v0, Lcom/estrongs/android/ui/addressbar/b;->e:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->q()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/addressbar/b;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->t:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setDrawableRes(Lcom/estrongs/android/ui/addressbar/b;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->t:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsBroadMode(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->t:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setIsLoading(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->t:Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/b/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/b/l;-><init>(Lcom/estrongs/android/pop/app/analysis/b/k;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setOnAddressBarClickListener(Lcom/estrongs/android/ui/addressbar/f;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->B()V

    return-void
.end method

.method private b(Z)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->g(Landroid/content/Context;)[I

    move-result-object v0

    aget v1, v0, v3

    aget v2, v0, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v2, v0, v3

    aget v0, v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    div-int/2addr v1, v0

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->G:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->c(I)V

    return-void

    :cond_0
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    int-to-double v6, v2

    int-to-double v0, v1

    div-double v0, v6, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    div-int v1, v2, v0

    goto :goto_0
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/n;

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v1, p1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/k;->a(Lcom/estrongs/android/pop/app/analysis/b/n;Z)V

    goto :goto_0
.end method

.method private x()V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->y:Lcom/estrongs/android/a/b/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->y:Lcom/estrongs/android/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->x:Ljava/util/List;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->H:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->y:Lcom/estrongs/android/a/b/a;

    instance-of v0, v0, Lcom/estrongs/android/a/b/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->y:Lcom/estrongs/android/a/b/a;

    check-cast v0, Lcom/estrongs/android/a/b/d;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/d;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->D:Ljava/util/Map;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->D:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->E:Ljava/util/List;

    :cond_1
    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->H:Z

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->E:Ljava/util/List;

    invoke-direct {p0, v0, v6}, Lcom/estrongs/android/pop/app/analysis/b/k;->a(Ljava/util/List;Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->E:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/impl/c/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->D:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/a/b/a;

    invoke-virtual {v1}, Lcom/estrongs/android/a/b/a;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/fs/impl/c/d;->a(J)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->E:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->y:Lcom/estrongs/android/a/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->E:Ljava/util/List;

    iput-boolean v6, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->H:Z

    goto :goto_1
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f03002e

    return v0
.end method

.method protected a(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(II)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->u:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->p:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->u:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/pop/app/analysis/b/k;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public a(ILcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->r:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0, p2, p1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Lcom/estrongs/android/pop/app/analysis/b/g;I)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x8

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(Landroid/view/View;)V

    const v0, 0x7f0e010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->b:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/k;->b(Landroid/view/View;)V

    return-void
.end method

.method protected a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/b/g;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->e()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v2, v0, Lcom/estrongs/fs/impl/c/d;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    check-cast v0, Lcom/estrongs/fs/impl/c/d;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->D:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-super {p0, p1, v3}, Lcom/estrongs/android/pop/app/analysis/b/v;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/List;)V

    return-void
.end method

.method public b(Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 3

    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/v;->b(Lcom/estrongs/android/pop/app/analysis/b/g;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/estrongs/fs/impl/c/d;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    sget-object v2, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    if-ne v1, v2, :cond_4

    :cond_3
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/k;->a(Lcom/estrongs/fs/h;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/v;->b(Lcom/estrongs/android/pop/app/analysis/b/g;)V

    goto :goto_0
.end method

.method protected j()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->j()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->r:Z

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Z)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v2, p0}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Lcom/estrongs/android/pop/app/analysis/a/n;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Ljava/lang/String;)V

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->G:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/k;->b(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected n()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/k;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->C:Ljava/lang/String;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/b/n;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/analysis/b/n;-><init>(Lcom/estrongs/android/pop/app/analysis/b/k;Lcom/estrongs/android/pop/app/analysis/b/l;)V

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/b/n;->a:Lcom/estrongs/fs/h;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->C:Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/pop/app/analysis/b/n;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->t()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/analysis/b/v;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/b/k;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected r()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->F:Lcom/estrongs/fs/d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->F:Lcom/estrongs/fs/d;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->s:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/analysis/b/n;->a:Lcom/estrongs/fs/h;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->x()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v3, v0, Lcom/estrongs/fs/impl/c/d;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->H:Z

    check-cast v0, Lcom/estrongs/fs/impl/c/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->D:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/analysis/b/k;->a(Ljava/util/List;Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_6
    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v2

    sget-object v3, Lcom/estrongs/fs/w;->a:Lcom/estrongs/fs/w;

    if-ne v2, v3, :cond_1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->H:Z

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->F:Lcom/estrongs/fs/d;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/k;->a(Ljava/util/List;Z)V
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_0
.end method

.method protected s()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a/i;->a()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->c:Lcom/estrongs/android/ui/recycler/g;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->q()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/g;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->c:Lcom/estrongs/android/ui/recycler/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/g;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->G:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    :goto_0
    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->s()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->B()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->c:Lcom/estrongs/android/ui/recycler/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/g;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->c:Lcom/estrongs/android/ui/recycler/g;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->q()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/recycler/g;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->n:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0
.end method

.method public u()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->r:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/analysis/a/i;->a(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->w:Lcom/estrongs/android/pop/app/analysis/a/i;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/analysis/a/i;->g()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/b/k;->A()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->u()Z

    move-result v0

    goto :goto_0
.end method

.method protected v()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/pop/app/analysis/b/v;->v()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->u:Lcom/estrongs/android/pop/esclasses/ESHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/b/k;->a(Landroid/view/View;I)V

    return-void
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/b/k;->r:Z

    return v0
.end method
