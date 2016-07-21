.class public abstract Lcom/flurry/sdk/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/s;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Lcom/flurry/sdk/dq;

.field private g:Z

.field private h:Z

.field private i:J

.field private final j:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/ln;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/d;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/lg;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/flurry/sdk/au;

.field private n:Lcom/flurry/sdk/au;

.field private o:Lcom/flurry/sdk/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/p;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/flurry/sdk/p;->g:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/p;->h:Z

    new-instance v0, Lcom/flurry/sdk/p$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/p$1;-><init>(Lcom/flurry/sdk/p;)V

    iput-object v0, p0, Lcom/flurry/sdk/p;->j:Lcom/flurry/sdk/kb;

    new-instance v0, Lcom/flurry/sdk/p$2;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/p$2;-><init>(Lcom/flurry/sdk/p;)V

    iput-object v0, p0, Lcom/flurry/sdk/p;->k:Lcom/flurry/sdk/kb;

    new-instance v0, Lcom/flurry/sdk/p$3;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/p$3;-><init>(Lcom/flurry/sdk/p;)V

    iput-object v0, p0, Lcom/flurry/sdk/p;->l:Lcom/flurry/sdk/kb;

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A session must be started before ad objects may be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/fd;->a()I

    move-result v1

    iput v1, p0, Lcom/flurry/sdk/p;->b:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/p;->c:Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/flurry/sdk/p;->d:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/flurry/sdk/p;->e:Ljava/lang/String;

    new-instance v1, Lcom/flurry/sdk/dq;

    invoke-direct {v1, p3}, Lcom/flurry/sdk/dq;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/p;->f:Lcom/flurry/sdk/dq;

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/q;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/flurry/sdk/q;->a(Landroid/content/Context;Lcom/flurry/sdk/s;)V

    invoke-direct {p0}, Lcom/flurry/sdk/p;->y()V

    invoke-direct {p0}, Lcom/flurry/sdk/p;->A()V

    invoke-direct {p0}, Lcom/flurry/sdk/p;->C()V

    return-void
.end method

.method private A()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.impl.ads.AdStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/p;->k:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private B()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/p;->k:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private C()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/p;->l:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private D()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/p;->l:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kc;->a(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private E()V
    .locals 6

    iget-boolean v0, p0, Lcom/flurry/sdk/p;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->l()Lcom/flurry/sdk/au;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/p;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/p;->i:J

    return-wide p1
.end method

.method private y()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/p;->i:J

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/p;->j:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->a(Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private z()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/lo;->a()Lcom/flurry/sdk/lo;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/p;->j:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lo;->b(Lcom/flurry/sdk/kb;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/flurry/sdk/p;->z()V

    invoke-direct {p0}, Lcom/flurry/sdk/p;->B()V

    invoke-direct {p0}, Lcom/flurry/sdk/p;->D()V

    iput-boolean v0, p0, Lcom/flurry/sdk/p;->g:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/p;->h:Z

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/q;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/q;->b(Landroid/content/Context;Lcom/flurry/sdk/s;)Z

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->b()V

    iget-object v0, p0, Lcom/flurry/sdk/p;->f:Lcom/flurry/sdk/dq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/p;->f:Lcom/flurry/sdk/dq;

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/p;->o:Lcom/flurry/sdk/e;

    return-void
.end method

.method public a(Lcom/flurry/sdk/au;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/p;->m:Lcom/flurry/sdk/au;

    return-void
.end method

.method public a(Lcom/flurry/sdk/au;JZ)V
    .locals 4

    const/4 v3, 0x3

    const-string v0, "VerifyPackageLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting nextAdUnit...  current cacheSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->k()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/y;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->d()V

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->k()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    const-string v0, "VerifyPackageLog"

    const-string v1, "nextAdUnit() cacheSize is empty"

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    iput-object p0, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    sget-object v1, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/p;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->j()Lcom/flurry/sdk/dr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->k()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V

    goto :goto_0
.end method

.method protected a(Lcom/flurry/sdk/d;)V
    .locals 5

    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/p;->k()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/p;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting ad request from EnsureCacheNotEmpty size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->j()Lcom/flurry/sdk/dr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->k()Lcom/flurry/sdk/y;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V

    :cond_1
    sget-object v0, Lcom/flurry/sdk/d$a;->g:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->u()V

    :cond_2
    return-void
.end method

.method public a(Lcom/flurry/sdk/e;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/p;->o:Lcom/flurry/sdk/e;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/p;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->b()V

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->k()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/y;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/s;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/p;->z()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/p;->E()V

    invoke-direct {p0}, Lcom/flurry/sdk/p;->y()V

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/p;->b:I

    return v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/p;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->a()V

    return-void
.end method

.method public g()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/p;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/flurry/sdk/dq;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/p;->f:Lcom/flurry/sdk/dq;

    return-object v0
.end method

.method public j()Lcom/flurry/sdk/dr;
    .locals 4

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->m()Lcom/flurry/sdk/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/z;->a(Ljava/lang/String;Lcom/flurry/sdk/dc;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z$a;->a()Lcom/flurry/sdk/dr;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/flurry/sdk/y;
    .locals 4

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->m()Lcom/flurry/sdk/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/z;->a(Ljava/lang/String;Lcom/flurry/sdk/dc;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z$a;->b()Lcom/flurry/sdk/y;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/flurry/sdk/au;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/p;->n:Lcom/flurry/sdk/au;

    return-object v0
.end method

.method public m()Lcom/flurry/sdk/e;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/p;->o:Lcom/flurry/sdk/e;

    return-object v0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/p;->f:Lcom/flurry/sdk/dq;

    invoke-virtual {v0}, Lcom/flurry/sdk/dq;->c()V

    return-void
.end method

.method protected o()Lcom/flurry/sdk/au;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/p;->m:Lcom/flurry/sdk/au;

    return-object v0
.end method

.method protected p()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/lt;->b()V

    iget-object v0, p0, Lcom/flurry/sdk/p;->m:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/p;->m:Lcom/flurry/sdk/au;

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/p;->a:Ljava/lang/String;

    const-string v2, "Precaching optional for ad, copying assets before display"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->l()Lcom/flurry/sdk/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/p;->m:Lcom/flurry/sdk/au;

    invoke-virtual {v0, p0, v1}, Lcom/flurry/sdk/ab;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;)Z

    :cond_0
    return-void
.end method

.method protected q()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/p;->m:Lcom/flurry/sdk/au;

    iput-object v0, p0, Lcom/flurry/sdk/p;->n:Lcom/flurry/sdk/au;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/p;->m:Lcom/flurry/sdk/au;

    return-void
.end method

.method protected r()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/p;->i:J

    return-wide v0
.end method

.method protected s()V
    .locals 0

    return-void
.end method

.method protected t()V
    .locals 4

    const/4 v3, 0x3

    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/p;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session Id not created yet. Delaying the fetch until session is created."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/p;->h:Z

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/p;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching ad now for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->j()Lcom/flurry/sdk/dr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->k()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V

    goto :goto_0
.end method

.method protected u()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/p;->g:Z

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/bb;->v:Lcom/flurry/sdk/bb;

    invoke-virtual {v1}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/au;->g(Ljava/lang/String;)V

    return-void
.end method

.method protected v()V
    .locals 4

    iget-boolean v0, p0, Lcom/flurry/sdk/p;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/p;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session created. Fetching ad now for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->j()Lcom/flurry/sdk/dr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/p;->k()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/p;->h:Z

    :cond_0
    return-void
.end method

.method protected w()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/p;->g:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/p;->h:Z

    return-void
.end method
