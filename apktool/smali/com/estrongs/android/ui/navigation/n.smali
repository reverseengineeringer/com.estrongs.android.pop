.class public Lcom/estrongs/android/ui/navigation/n;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/ui/navigation/s;

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Lcom/estrongs/android/ui/navigation/a;

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/support/v4/widget/DrawerLayout;

.field private k:Landroid/view/View;

.field private l:I

.field private m:Z

.field private n:Lcom/estrongs/android/ui/a/aa;

.field private o:Lcom/estrongs/android/ui/navigation/r;

.field private p:Lcom/estrongs/android/ui/navigation/r;

.field private q:Landroid/os/Handler;

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/estrongs/android/ui/navigation/n;->c:Z

    iput-object v3, p0, Lcom/estrongs/android/ui/navigation/n;->q:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/navigation/n;->d:Z

    iput v0, p0, Lcom/estrongs/android/ui/navigation/n;->r:I

    iput v0, p0, Lcom/estrongs/android/ui/navigation/n;->s:I

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/n;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/ui/navigation/n;->q:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cl;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cl;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->m:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/estrongs/android/ui/navigation/n;->e:Z

    const v0, 0x7f0a00ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f020130

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f0a00cf

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->h:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009c

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/n;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/n;->l()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f020131

    const v2, 0x800005

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->a(II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x7f0a00d0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->i:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/n;->m()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/n;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/estrongs/android/ui/navigation/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/navigation/o;-><init>(Lcom/estrongs/android/ui/navigation/n;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/b;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/n;->n()V

    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/navigation/n;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->i:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/navigation/n;Lcom/estrongs/android/ui/navigation/r;)Lcom/estrongs/android/ui/navigation/r;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/n;->o:Lcom/estrongs/android/ui/navigation/r;

    return-object p1
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

    check-cast v0, Landroid/support/v4/widget/aa;

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

.method static synthetic b(Lcom/estrongs/android/ui/navigation/n;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/navigation/n;Lcom/estrongs/android/ui/navigation/r;)Lcom/estrongs/android/ui/navigation/r;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/n;->p:Lcom/estrongs/android/ui/navigation/r;

    return-object p1
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

    check-cast v0, Landroid/support/v4/widget/aa;

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

.method static synthetic c(Lcom/estrongs/android/ui/navigation/n;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/navigation/n;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->h:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/navigation/n;)Lcom/estrongs/android/ui/navigation/r;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->o:Lcom/estrongs/android/ui/navigation/r;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/navigation/n;)Lcom/estrongs/android/ui/navigation/r;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->p:Lcom/estrongs/android/ui/navigation/r;

    return-object v0
.end method

.method private l()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/navigation/p;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/n;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/n;->k:Landroid/view/View;

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/ui/navigation/p;-><init>(Lcom/estrongs/android/ui/navigation/n;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/s;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->a:Lcom/estrongs/android/ui/navigation/s;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/s;->b()Lcom/estrongs/android/ui/a/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->n:Lcom/estrongs/android/ui/a/aa;

    return-void
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->f:Lcom/estrongs/android/ui/navigation/a;

    if-nez v0, :cond_0

    new-instance v1, Lcom/estrongs/android/ui/navigation/q;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->g:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/n;->q:Landroid/os/Handler;

    invoke-direct {v1, p0, v0, v2}, Lcom/estrongs/android/ui/navigation/q;-><init>(Lcom/estrongs/android/ui/navigation/n;Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/navigation/n;->f:Lcom/estrongs/android/ui/navigation/a;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/n;->f:Lcom/estrongs/android/ui/navigation/a;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/navigation/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 5

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v3, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/n;->g:Landroid/content/Context;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v1

    iget-boolean v2, p0, Lcom/estrongs/android/ui/navigation/n;->e:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0, v2, v1}, Lcom/estrongs/android/ui/navigation/n;->a(Landroid/support/v4/widget/DrawerLayout;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v1, p0, Lcom/estrongs/android/ui/navigation/n;->r:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0, v2, v1}, Lcom/estrongs/android/ui/navigation/n;->b(Landroid/support/v4/widget/DrawerLayout;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v1, p0, Lcom/estrongs/android/ui/navigation/n;->s:I

    :goto_1
    return-void

    :cond_1
    mul-float v2, v4, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/estrongs/android/ui/navigation/n;->r:I

    goto :goto_0

    :cond_2
    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/n;->s:I

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/estrongs/android/ui/navigation/n;->l:I

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->m:Z

    if-nez v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->c:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/ui/navigation/n;->l:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x9

    :goto_0
    iget-boolean v1, p0, Lcom/estrongs/android/ui/navigation/n;->b:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/estrongs/android/ui/navigation/n;->l:I

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x9

    move v2, v0

    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    return-void

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/navigation/n;->l:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x9

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/estrongs/android/ui/navigation/n;->l:I

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x9

    move v2, v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/estrongs/android/ui/navigation/n;->l:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    move v1, v0

    move v2, v0

    goto :goto_1
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->f:Lcom/estrongs/android/ui/navigation/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/navigation/a;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/n;->c()V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/a/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/n;->n:Lcom/estrongs/android/ui/a/aa;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/navigation/r;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/n;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/n;->o:Lcom/estrongs/android/ui/navigation/r;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/ui/navigation/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->n:Lcom/estrongs/android/ui/a/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->n:Lcom/estrongs/android/ui/a/aa;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/a/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/n;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    return-void
.end method

.method public b(Lcom/estrongs/android/ui/navigation/r;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/n;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/n;->p:Lcom/estrongs/android/ui/navigation/r;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->n:Lcom/estrongs/android/ui/a/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->n:Lcom/estrongs/android/ui/a/aa;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/aa;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/n;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->h(Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/navigation/n;->a(Lcom/estrongs/android/ui/navigation/r;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/navigation/n;->b(Lcom/estrongs/android/ui/navigation/r;)V

    return-void
.end method

.method public e()Z
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/n;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/n;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/n;->d()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->f:Lcom/estrongs/android/ui/navigation/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->f:Lcom/estrongs/android/ui/navigation/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->f:Lcom/estrongs/android/ui/navigation/a;

    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->f:Lcom/estrongs/android/ui/navigation/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->j:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/n;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/n;->f:Lcom/estrongs/android/ui/navigation/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/a;->b()V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/navigation/n;->e:Z

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/navigation/n;->r:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/navigation/n;->s:I

    return v0
.end method
