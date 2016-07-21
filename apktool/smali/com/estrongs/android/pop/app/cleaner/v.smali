.class public Lcom/estrongs/android/pop/app/cleaner/v;
.super Lcom/estrongs/android/pop/app/cleaner/a;


# instance fields
.field private d:I

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Lcom/estrongs/android/pop/app/cleaner/ab;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/h;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/estrongs/android/pop/app/cleaner/ak;

.field private i:Lcom/estrongs/android/pop/app/cleaner/b;

.field private j:Lcom/estrongs/android/cleaner/e;

.field private k:Z

.field private l:J

.field private m:I

.field private n:J


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/cleaner/DiskCleanerActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/app/cleaner/a;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/view/w;)V

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->m:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->n:J

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/view/w;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/a;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/view/w;)V

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->m:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->n:J

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->d:I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->r()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/w;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cleaner/w;-><init>(Lcom/estrongs/android/pop/app/cleaner/v;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->j:Lcom/estrongs/android/cleaner/e;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/v;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/ak;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->h:Lcom/estrongs/android/pop/app/cleaner/ak;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/v;Lcom/estrongs/android/pop/app/cleaner/b;)Lcom/estrongs/android/pop/app/cleaner/b;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->i:Lcom/estrongs/android/pop/app/cleaner/b;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/cleaner/v;)I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->m:I

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/cleaner/v;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->d:I

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/cleaner/v;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->m:I

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/cleaner/v;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->l:J

    return-wide v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/ab;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->f:Lcom/estrongs/android/pop/app/cleaner/ab;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/cleaner/v;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->n:J

    return-wide v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/cleaner/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->k:Z

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/cleaner/v;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->e:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->i:Lcom/estrongs/android/pop/app/cleaner/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/app/cleaner/a;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->v()Lcom/estrongs/android/cleaner/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/a;->e()V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->k:Z

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/ak;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/ak;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->h:Lcom/estrongs/android/pop/app/cleaner/ak;

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/pop/app/cleaner/ab;-><init>(Landroid/content/Context;Lcom/estrongs/android/view/w;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->f:Lcom/estrongs/android/pop/app/cleaner/ab;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->h:Lcom/estrongs/android/pop/app/cleaner/ak;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->v()Lcom/estrongs/android/cleaner/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->j:Lcom/estrongs/android/cleaner/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/cleaner/a;->a(Lcom/estrongs/android/cleaner/e;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->C()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public c()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->l:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->s()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0065

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cleaner/y;-><init>(Lcom/estrongs/android/pop/app/cleaner/v;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->w()Lcom/estrongs/android/ui/view/ScanProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->v()Lcom/estrongs/android/cleaner/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/a;->d()V

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/z;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cleaner/z;-><init>(Lcom/estrongs/android/pop/app/cleaner/v;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v1}, Lcom/estrongs/android/view/w;->u()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ai;->h()J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v1}, Lcom/estrongs/android/view/w;->v()Lcom/estrongs/android/cleaner/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/cleaner/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ai;->e(J)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->e:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v1}, Lcom/estrongs/android/view/w;->v()Lcom/estrongs/android/cleaner/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/cleaner/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/view/w;->b(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v1}, Lcom/estrongs/android/view/w;->v()Lcom/estrongs/android/cleaner/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/cleaner/a;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/view/w;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->w()Lcom/estrongs/android/ui/view/ScanProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->C()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->f:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cleaner/v;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cleaner/v;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->f:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->s()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080352

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0159

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cleaner/aa;-><init>(Lcom/estrongs/android/pop/app/cleaner/v;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->f:Lcom/estrongs/android/pop/app/cleaner/ab;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/ai;->c(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->x()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "C_scanresult_show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "clean"

    const-string v2, "C_scanresult_show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/v;->e:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
