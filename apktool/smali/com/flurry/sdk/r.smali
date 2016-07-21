.class public Lcom/flurry/sdk/r;
.super Lcom/flurry/sdk/p;

# interfaces
.implements Lcom/flurry/sdk/t;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/sdk/r$a;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:J

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/r;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/p;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/sdk/r$a;->a:Lcom/flurry/sdk/r$a;

    iput-object v0, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/r;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private E()V
    .locals 6

    invoke-static {}, Lcom/flurry/sdk/lt;->b()V

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/r$a;->b:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/r$a;->d:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/r$a;->c:Lcom/flurry/sdk/r$a;

    iput-object v0, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/r;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "render banner ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->g()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v2, :cond_1

    instance-of v1, v2, Landroid/app/Activity;

    if-nez v1, :cond_2

    :cond_1
    sget-object v0, Lcom/flurry/sdk/ba;->d:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/ba;->t:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/flurry/sdk/r;->o()Lcom/flurry/sdk/au;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v0, Lcom/flurry/sdk/ba;->c:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/flurry/sdk/au;->w()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/flurry/sdk/ba;->x:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/flurry/sdk/jl;->a()Lcom/flurry/sdk/jl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jl;->c()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/r;->a:Ljava/lang/String;

    const-string v3, "There is no network connectivity (ad will not display)"

    invoke-static {v0, v1, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "errorCode"

    sget-object v3, Lcom/flurry/sdk/ba;->b:Lcom/flurry/sdk/ba;

    invoke-virtual {v3}, Lcom/flurry/sdk/ba;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/flurry/sdk/bb;->g:Lcom/flurry/sdk/bb;

    const/4 v5, 0x1

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/sdk/fa;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/s;Lcom/flurry/sdk/au;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v4}, Lcom/flurry/sdk/au;->a()Lcom/flurry/sdk/co;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/flurry/sdk/ba;->e:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/flurry/sdk/cq;->b:Lcom/flurry/sdk/cq;

    iget-object v2, v0, Lcom/flurry/sdk/co;->a:Lcom/flurry/sdk/cq;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/cq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v0, Lcom/flurry/sdk/ba;->v:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcom/flurry/sdk/bc;->a:Lcom/flurry/sdk/bc;

    invoke-virtual {v4}, Lcom/flurry/sdk/au;->d()Lcom/flurry/sdk/bc;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/bc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v0, Lcom/flurry/sdk/ba;->v:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/flurry/sdk/fd;->b()Lcom/flurry/sdk/dc;

    move-result-object v1

    iget-object v0, v0, Lcom/flurry/sdk/co;->v:Lcom/flurry/sdk/dc;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/flurry/sdk/ba;->s:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/flurry/sdk/r;->p()V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/r$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/r$5;-><init>(Lcom/flurry/sdk/r;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private F()V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/lt;->a()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/r;->a(J)V

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->q()V

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/flurry/sdk/gx;->a(Landroid/content/Context;Lcom/flurry/sdk/t;)V

    sget-object v0, Lcom/flurry/sdk/r;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BannerAdObject rendered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;)V

    return-void
.end method

.method private G()Z
    .locals 5

    const/4 v4, 0x3

    const/4 v0, 0x0

    invoke-static {}, Lcom/flurry/sdk/lr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/flurry/sdk/r;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device is locked: banner will NOT rotate for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/flurry/sdk/r;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No banner holder: banner will NOT rotate for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(J)V
    .locals 5

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/r;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduled banner rotation for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/flurry/sdk/r;->e:J

    iput-wide p1, p0, Lcom/flurry/sdk/r;->f:J

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/r;->E()V

    return-void
.end method

.method static synthetic b(Lcom/flurry/sdk/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/r;->F()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/r$a;->b:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public B()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/r;->d:Z

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/r$a;->a:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->t()V

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    sget-object v0, Lcom/flurry/sdk/r$a;->b:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/r;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BannerAdObject fetched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/flurry/sdk/fc;->a(Lcom/flurry/sdk/s;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/r$a;->c:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/r$a;->d:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {p0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public C()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/r$a;->a:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/ba;->r:Lcom/flurry/sdk/ba;

    invoke-static {p0, v0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;Lcom/flurry/sdk/ba;)V

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    sget-object v0, Lcom/flurry/sdk/r$a;->b:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/r$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/r$3;-><init>(Lcom/flurry/sdk/r;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/r$a;->c:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/r$a;->d:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {p0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public D()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/r;->d:Z

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/r$a;->a:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->t()V

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    sget-object v0, Lcom/flurry/sdk/r$a;->b:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/r$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/r$4;-><init>(Lcom/flurry/sdk/r;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/r$a;->c:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/r$a;->d:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {p0}, Lcom/flurry/sdk/fc;->b(Lcom/flurry/sdk/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/r$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/r$1;-><init>(Lcom/flurry/sdk/r;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/flurry/sdk/p;->a()V

    return-void
.end method

.method public a(Landroid/widget/RelativeLayout;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/r;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/flurry/sdk/au;JZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->y()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->y()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/flurry/sdk/r;->a(J)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/r;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->j()Lcom/flurry/sdk/dr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->k()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V

    goto :goto_1
.end method

.method protected a(Lcom/flurry/sdk/d;)V
    .locals 5

    sget-object v0, Lcom/flurry/sdk/d$a;->c:Lcom/flurry/sdk/d$a;

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
    invoke-virtual {p0}, Lcom/flurry/sdk/r;->k()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/r;->a:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->j()Lcom/flurry/sdk/dr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->k()Lcom/flurry/sdk/y;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dr;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/y;Lcom/flurry/sdk/au;)V

    :cond_1
    sget-object v0, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/r$a;->a:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/flurry/sdk/r$a;->b:Lcom/flurry/sdk/r$a;

    iput-object v0, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/flurry/sdk/r;->d:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/flurry/sdk/r$a;->d:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/r$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/r$2;-><init>(Lcom/flurry/sdk/r;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    :cond_4
    sget-object v0, Lcom/flurry/sdk/d$a;->g:Lcom/flurry/sdk/d$a;

    iget-object v1, p1, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/d$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/s;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->u()V

    :cond_5
    return-void

    :cond_6
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/r$a;->c:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/r$a;->d:Lcom/flurry/sdk/r$a;

    iput-object v0, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Lcom/flurry/sdk/p;->c()V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-super {p0}, Lcom/flurry/sdk/p;->d()V

    iget-wide v0, p0, Lcom/flurry/sdk/r;->e:J

    iput-wide v0, p0, Lcom/flurry/sdk/r;->f:J

    return-void
.end method

.method public j()Lcom/flurry/sdk/dr;
    .locals 4

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->c()Lcom/flurry/sdk/z;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/fd;->b()Lcom/flurry/sdk/dc;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->m()Lcom/flurry/sdk/e;

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

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/fd;->b()Lcom/flurry/sdk/dc;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->m()Lcom/flurry/sdk/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/z;->a(Ljava/lang/String;Lcom/flurry/sdk/dc;Lcom/flurry/sdk/e;)Lcom/flurry/sdk/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/z$a;->b()Lcom/flurry/sdk/y;

    move-result-object v0

    return-object v0
.end method

.method protected s()V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/flurry/sdk/p;->s()V

    iget-wide v0, p0, Lcom/flurry/sdk/r;->e:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/flurry/sdk/r;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->r()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/sdk/r;->f:J

    iget-wide v0, p0, Lcom/flurry/sdk/r;->f:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/flurry/sdk/r;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/r;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rotating banner for adSpace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->i()Lcom/flurry/sdk/dq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->j()Lcom/flurry/sdk/dr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/r;->k()Lcom/flurry/sdk/y;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/flurry/sdk/dq;->a(Lcom/flurry/sdk/s;Lcom/flurry/sdk/dr;Lcom/flurry/sdk/y;)V

    :cond_0
    iget-wide v0, p0, Lcom/flurry/sdk/r;->e:J

    iput-wide v0, p0, Lcom/flurry/sdk/r;->f:J

    :cond_1
    return-void
.end method

.method public x()Z
    .locals 2

    sget-object v0, Lcom/flurry/sdk/r$a;->a:Lcom/flurry/sdk/r$a;

    iget-object v1, p0, Lcom/flurry/sdk/r;->b:Lcom/flurry/sdk/r$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/r$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/r;->l()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->w()Z

    move-result v0

    goto :goto_0
.end method

.method public y()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public z()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/flurry/sdk/lt;->a()V

    iget-object v0, p0, Lcom/flurry/sdk/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    instance-of v2, v1, Lcom/flurry/sdk/gt;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/flurry/sdk/gt;

    invoke-virtual {v1}, Lcom/flurry/sdk/gt;->onActivityDestroy()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/r;->g()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/r;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method
