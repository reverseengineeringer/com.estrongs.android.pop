.class public Lcom/duapps/ad/offerwall/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field public a:I

.field private b:Lcom/duapps/ad/offerwall/ui/a;

.field private c:I

.field private d:I

.field private e:Landroid/content/Context;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/duapps/ad/offerwall/a/g;

.field private l:Lcom/duapps/ad/offerwall/a/b;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/os/Handler;

.field private q:Z

.field private r:Z

.field private s:Lcom/duapps/ad/offerwall/a/a;


# direct methods
.method public constructor <init>(ILcom/duapps/ad/offerwall/ui/a;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/duapps/ad/offerwall/a;-><init>(ILcom/duapps/ad/offerwall/ui/a;Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/duapps/ad/offerwall/ui/a;Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/duapps/ad/offerwall/a;->c:I

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->n:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->o:Z

    new-instance v0, Lcom/duapps/ad/offerwall/b;

    invoke-direct {v0, p0}, Lcom/duapps/ad/offerwall/b;-><init>(Lcom/duapps/ad/offerwall/a;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a;->s:Lcom/duapps/ad/offerwall/a/a;

    iput p1, p0, Lcom/duapps/ad/offerwall/a;->d:I

    iput-object p3, p0, Lcom/duapps/ad/offerwall/a;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/duapps/ad/offerwall/a;->b:Lcom/duapps/ad/offerwall/ui/a;

    iput-boolean p4, p0, Lcom/duapps/ad/offerwall/a;->q:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/b;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->l:Lcom/duapps/ad/offerwall/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/a;->b(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/NativeAd;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->f:Z

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->r:Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Lcom/duapps/ad/offerwall/ui/a;

    invoke-interface {v0, p1}, Lcom/duapps/ad/offerwall/ui/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/offerwall/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duapps/ad/offerwall/a;->a(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->g:Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Lcom/duapps/ad/offerwall/ui/a;

    invoke-interface {v0, p1}, Lcom/duapps/ad/offerwall/ui/a;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/duapps/ad/offerwall/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/ui/a;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Lcom/duapps/ad/offerwall/ui/a;

    return-object v0
.end method

.method static synthetic c(Lcom/duapps/ad/offerwall/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a;->f:Z

    return p1
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->h:Z

    return-void
.end method

.method static synthetic d(Lcom/duapps/ad/offerwall/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/duapps/ad/offerwall/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a;->i:Z

    return p1
.end method

.method private e()Z
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/g;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/duapps/ad/offerwall/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/duapps/ad/offerwall/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a;->g:Z

    return p1
.end method

.method private f()Z
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->l:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/duapps/ad/offerwall/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/duapps/ad/offerwall/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duapps/ad/offerwall/a;->h:Z

    return p1
.end method

.method static synthetic g(Lcom/duapps/ad/offerwall/a;)Lcom/duapps/ad/offerwall/a/g;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    return-object v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Lcom/duapps/ad/offerwall/ui/a;

    invoke-interface {v0}, Lcom/duapps/ad/offerwall/ui/a;->a()V

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/duapps/ad/offerwall/a;->f:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a;->l:Lcom/duapps/ad/offerwall/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a;->l:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v1}, Lcom/duapps/ad/offerwall/a/b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/offerwall/a;->b:Lcom/duapps/ad/offerwall/ui/a;

    iget-boolean v2, p0, Lcom/duapps/ad/offerwall/a;->n:Z

    invoke-interface {v1, v2, v0}, Lcom/duapps/ad/offerwall/ui/a;->a(ZZ)V

    return-void
.end method

.method static synthetic h(Lcom/duapps/ad/offerwall/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Lcom/duapps/ad/offerwall/ui/a;

    iget-boolean v1, p0, Lcom/duapps/ad/offerwall/a;->n:Z

    invoke-interface {v0, v1}, Lcom/duapps/ad/offerwall/ui/a;->b(Z)V

    return-void
.end method

.method static synthetic i(Lcom/duapps/ad/offerwall/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->f:Z

    return v0
.end method

.method static synthetic j(Lcom/duapps/ad/offerwall/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->h:Z

    return v0
.end method

.method static synthetic k(Lcom/duapps/ad/offerwall/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->g:Z

    return v0
.end method

.method static synthetic l(Lcom/duapps/ad/offerwall/a;)I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/offerwall/a;->c:I

    return v0
.end method

.method static synthetic m(Lcom/duapps/ad/offerwall/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->h()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/duapps/ad/offerwall/a;->n:Z

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Lcom/duapps/ad/offerwall/ui/a;

    iget-boolean v1, p0, Lcom/duapps/ad/offerwall/a;->n:Z

    invoke-interface {v0, v1}, Lcom/duapps/ad/offerwall/ui/a;->a(Z)V

    invoke-virtual {p0, v4}, Lcom/duapps/ad/offerwall/a;->a(I)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->p:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->p:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->p:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->l:Lcom/duapps/ad/offerwall/a/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/duapps/ad/offerwall/a/b;

    iget v1, p0, Lcom/duapps/ad/offerwall/a;->d:I

    iget-object v2, p0, Lcom/duapps/ad/offerwall/a;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/duapps/ad/offerwall/a;->s:Lcom/duapps/ad/offerwall/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/duapps/ad/offerwall/a/b;-><init>(ILandroid/content/Context;Lcom/duapps/ad/offerwall/a/a;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a;->l:Lcom/duapps/ad/offerwall/a/b;

    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/ap;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    if-nez v0, :cond_3

    new-instance v0, Lcom/duapps/ad/offerwall/a/g;

    iget-object v1, p0, Lcom/duapps/ad/offerwall/a;->e:Landroid/content/Context;

    iget v2, p0, Lcom/duapps/ad/offerwall/a;->d:I

    iget-object v3, p0, Lcom/duapps/ad/offerwall/a;->s:Lcom/duapps/ad/offerwall/a/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/duapps/ad/offerwall/a/g;-><init>(Landroid/content/Context;ILcom/duapps/ad/offerwall/a/a;)V

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    :cond_3
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->f:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->l:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->d()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->f()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->o:Z

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->g()V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->f:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/g;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duapps/ad/offerwall/a;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->g:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->l:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/duapps/ad/offerwall/a;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->b:Lcom/duapps/ad/offerwall/ui/a;

    iget-boolean v1, p0, Lcom/duapps/ad/offerwall/a;->n:Z

    invoke-interface {v0, v1}, Lcom/duapps/ad/offerwall/ui/a;->a(Z)V

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->d()V

    iput p1, p0, Lcom/duapps/ad/offerwall/a;->a:I

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->l:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->b()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->l:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v0, p1}, Lcom/duapps/ad/offerwall/a/b;->a(I)V

    :cond_7
    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/g;->b()V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->n:Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->l:Lcom/duapps/ad/offerwall/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->l:Lcom/duapps/ad/offerwall/a/b;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/b;->e()V

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    invoke-virtual {v0}, Lcom/duapps/ad/offerwall/a/g;->f()V

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->p:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duapps/ad/offerwall/a;->p:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/offerwall/a;->k:Lcom/duapps/ad/offerwall/a/g;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/duapps/ad/offerwall/a;->i:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->i()V

    const-string v0, "OfferWallPresenter"

    const-string v1, "Poll data timeout."

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/duapps/ad/offerwall/a;->i()V

    goto :goto_0
.end method
