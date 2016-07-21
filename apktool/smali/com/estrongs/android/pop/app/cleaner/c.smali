.class public Lcom/estrongs/android/pop/app/cleaner/c;
.super Lcom/estrongs/android/pop/app/cleaner/a;


# instance fields
.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Lcom/estrongs/android/pop/app/cleaner/b;

.field private f:Lcom/estrongs/android/pop/app/cleaner/i;

.field private g:[I

.field private h:Lcom/estrongs/android/ui/a/b;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/view/w;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/a;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/view/w;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->g:[I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->i:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->j:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->r()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->t()Lcom/estrongs/android/ui/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->h:Lcom/estrongs/android/ui/a/b;

    return-void
.end method

.method private a(I)F
    .locals 1

    const/16 v0, 0xc

    if-lt v0, p1, :cond_0

    const v0, 0x3f8ccccd    # 1.1f

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xf

    if-le v0, p1, :cond_1

    const v0, 0x3f99999a    # 1.2f

    goto :goto_0

    :cond_1
    const v0, 0x3fa66666    # 1.3f

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/c;I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/c;->a(I)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/c;)Lcom/estrongs/android/ui/a/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->h:Lcom/estrongs/android/ui/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "clean"

    invoke-virtual {v0, v1, p1}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/cleaner/c;)[I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->g:[I

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/cleaner/c;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/cleaner/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/cleaner/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->j:Z

    return v0
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->g:[I

    const/4 v2, 0x0

    const v3, 0x7f070195

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->g:[I

    const/4 v2, 0x1

    const v3, 0x7f0202dc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    aput v0, v1, v2

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->s()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/view/w;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->B()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->g:[I

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/estrongs/android/pop/app/cleaner/b;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/b;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->e:Lcom/estrongs/android/pop/app/cleaner/b;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->e:Lcom/estrongs/android/pop/app/cleaner/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->e:Lcom/estrongs/android/pop/app/cleaner/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/b;->getItemCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/cleaner/c;->h()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    const v1, 0x7f0202dd

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v1, 0x7f0e00b6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    const v1, 0x7f0e00b7

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->e:Lcom/estrongs/android/pop/app/cleaner/b;

    goto :goto_0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->e:Lcom/estrongs/android/pop/app/cleaner/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->w()Lcom/estrongs/android/ui/view/ScanProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->u()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cleaner/d;-><init>(Lcom/estrongs/android/pop/app/cleaner/c;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->e:Lcom/estrongs/android/pop/app/cleaner/b;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/b;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/ai;->a(J)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ai;->l()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v1}, Lcom/estrongs/android/view/w;->u()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/cleaner/e;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/cleaner/e;-><init>(Lcom/estrongs/android/pop/app/cleaner/c;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public d()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->w()Lcom/estrongs/android/ui/view/ScanProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/view/w;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->z()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->A()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->i:Z

    return-void
.end method

.method public e()V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0e00b6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0e00b7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/i;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v2}, Lcom/estrongs/android/view/w;->D()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/cleaner/i;-><init>(Landroid/app/Activity;J)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->f:Lcom/estrongs/android/pop/app/cleaner/i;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->f:Lcom/estrongs/android/pop/app/cleaner/i;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/w;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->q()Lcom/estrongs/android/b/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/c;->f:Lcom/estrongs/android/pop/app/cleaner/i;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/cleaner/i;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cleaner/h;-><init>(Lcom/estrongs/android/pop/app/cleaner/c;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/p;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/cleaner/p;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/cleaner/p;->b(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/cleaner/p;->a(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/c;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    goto :goto_1
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/c;->i:Z

    return v0
.end method
