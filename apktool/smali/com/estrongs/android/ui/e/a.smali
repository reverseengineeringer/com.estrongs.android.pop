.class public Lcom/estrongs/android/ui/e/a;
.super Ljava/lang/Object;


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

.field protected b:Landroid/content/Context;

.field protected c:Landroid/view/ViewGroup;

.field protected d:Z

.field protected e:Z

.field protected f:Lcom/estrongs/android/ui/theme/at;

.field protected g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/a;->a:Ljava/util/List;

    iput v2, p0, Lcom/estrongs/android/ui/e/a;->g:I

    iput-boolean v2, p0, Lcom/estrongs/android/ui/e/a;->k:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/e/a;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/e/a;->d:Z

    invoke-static {p1}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/a;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/a;->f:Lcom/estrongs/android/ui/theme/at;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/a;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/estrongs/android/ui/e/a;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/a;->a:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/ui/e/b;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/a;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/e/b;-><init>(Lcom/estrongs/android/ui/e/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/a;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/a;->c:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/a;->c:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/a;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/e/a;->i:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/a;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/e/a;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/a;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/e/a;->j:I

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/a;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/e/a;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/e/a;->i:I

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/e/a;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/e/a;->j:I

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/e/a;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/e/a;->l:I

    return v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/a;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(I)Lcom/estrongs/android/view/a/a;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/a;->a:Ljava/util/List;

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

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/e/a;->h:Z

    return-void
.end method

.method public b(I)V
    .locals 4

    iput p1, p0, Lcom/estrongs/android/ui/e/a;->g:I

    iget v0, p0, Lcom/estrongs/android/ui/e/a;->g:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/view/a/a;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/estrongs/android/ui/e/a;->g:I

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/a/a;->a(Landroid/graphics/drawable/Drawable;)Lcom/estrongs/android/view/a/a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 0

    return-void
.end method
