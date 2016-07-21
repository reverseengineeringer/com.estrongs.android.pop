.class public Lcom/estrongs/android/ui/navigation/m;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/ui/navigation/r;

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Lcom/estrongs/android/ui/navigation/h;

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/support/v4/widget/DrawerLayout;

.field private k:Landroid/view/View;

.field private l:I

.field private m:Z

.field private n:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

.field private o:Lcom/estrongs/android/ui/navigation/q;

.field private p:Lcom/estrongs/android/ui/navigation/q;

.field private q:Landroid/os/Handler;

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;Landroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/estrongs/android/ui/navigation/m;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->q:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/navigation/m;->d:Z

    iput v3, p0, Lcom/estrongs/android/ui/navigation/m;->r:I

    iput v3, p0, Lcom/estrongs/android/ui/navigation/m;->s:I

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/m;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/ui/navigation/m;->q:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cu;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->m:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/estrongs/android/ui/navigation/m;->e:Z

    const v0, 0x7f0e023e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    iput-object p4, p0, Lcom/estrongs/android/ui/navigation/m;->k:Landroid/view/View;

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f020280

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f0e023f

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->h:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/m;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f020281

    const v2, 0x800005

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f0e0240

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/m;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/estrongs/android/ui/navigation/n;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/navigation/n;-><init>(Lcom/estrongs/android/ui/navigation/m;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/ab;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/m;->n()V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/navigation/m;Lcom/estrongs/android/ui/navigation/q;)Lcom/estrongs/android/ui/navigation/q;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/m;->o:Lcom/estrongs/android/ui/navigation/q;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/navigation/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/m;->l()V

    return-void
.end method

.method private a(Landroid/support/v4/widget/DrawerLayout;I)Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mLeftDragger"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/cz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mEdgeSize"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/navigation/m;Lcom/estrongs/android/ui/navigation/q;)Lcom/estrongs/android/ui/navigation/q;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/m;->p:Lcom/estrongs/android/ui/navigation/q;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/navigation/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/m;->m()V

    return-void
.end method

.method private b(Landroid/support/v4/widget/DrawerLayout;I)Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mRightDragger"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/cz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mEdgeSize"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/navigation/m;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->i:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/navigation/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/navigation/m;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/navigation/m;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->h:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/navigation/m;)Lcom/estrongs/android/ui/navigation/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->o:Lcom/estrongs/android/ui/navigation/q;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/navigation/m;)Lcom/estrongs/android/ui/navigation/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->p:Lcom/estrongs/android/ui/navigation/q;

    return-object v0
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->a:Lcom/estrongs/android/ui/navigation/r;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/navigation/o;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/m;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/m;->k:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/ui/navigation/o;-><init>(Lcom/estrongs/android/ui/navigation/m;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->a:Lcom/estrongs/android/ui/navigation/r;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->a:Lcom/estrongs/android/ui/navigation/r;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/r;->b()Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->n:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->f:Lcom/estrongs/android/ui/navigation/h;

    if-nez v0, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/navigation/p;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->g:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/m;->q:Landroid/os/Handler;

    invoke-direct {v1, p0, v0, v2}, Lcom/estrongs/android/ui/navigation/p;-><init>(Lcom/estrongs/android/ui/navigation/m;Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/navigation/m;->f:Lcom/estrongs/android/ui/navigation/h;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/m;->f:Lcom/estrongs/android/ui/navigation/h;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/navigation/h;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 5

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v3, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/m;->g:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v1

    iget-boolean v2, p0, Lcom/estrongs/android/ui/navigation/m;->e:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0, v2, v1}, Lcom/estrongs/android/ui/navigation/m;->a(Landroid/support/v4/widget/DrawerLayout;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/estrongs/android/ui/navigation/m;->r:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0, v2, v1}, Lcom/estrongs/android/ui/navigation/m;->b(Landroid/support/v4/widget/DrawerLayout;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v1, p0, Lcom/estrongs/android/ui/navigation/m;->s:I

    :goto_1
    return-void

    :cond_1
    mul-float v2, v4, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/estrongs/android/ui/navigation/m;->r:I

    goto :goto_0

    :cond_2
    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/m;->s:I

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/estrongs/android/ui/navigation/m;->l:I

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->m:Z

    if-nez v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/ui/navigation/m;->l:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x9

    :goto_0
    iget-boolean v1, p0, Lcom/estrongs/android/ui/navigation/m;->b:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/estrongs/android/ui/navigation/m;->l:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x9

    move v2, v0

    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    return-void

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/navigation/m;->l:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x9

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/estrongs/android/ui/navigation/m;->l:I

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x9

    move v2, v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/estrongs/android/ui/navigation/m;->l:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    move v1, v0

    move v2, v0

    goto :goto_1
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800005

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->b(II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/m;->n:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/navigation/q;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->e:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/m;->o:Lcom/estrongs/android/ui/navigation/q;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/m;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/ui/navigation/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->n:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->n:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/m;->l()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/m;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/m;->c()V

    return-void
.end method

.method public b(Lcom/estrongs/android/ui/navigation/q;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/m;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/m;->p:Lcom/estrongs/android/ui/navigation/q;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->n:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->n:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/m;->m()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/m;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->n:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->n:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/navigation/m;->a(Lcom/estrongs/android/ui/navigation/q;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/navigation/m;->b(Lcom/estrongs/android/ui/navigation/q;)V

    return-void
.end method

.method public f()Z
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/m;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/m;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/m;->e()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->f:Lcom/estrongs/android/ui/navigation/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->f:Lcom/estrongs/android/ui/navigation/h;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/h;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/m;->f:Lcom/estrongs/android/ui/navigation/h;

    :cond_1
    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/m;->e:Z

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/navigation/m;->r:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/navigation/m;->s:I

    return v0
.end method
