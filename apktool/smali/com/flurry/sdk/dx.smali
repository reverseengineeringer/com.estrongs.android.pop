.class public Lcom/flurry/sdk/dx;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/ay;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/kb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kb",
            "<",
            "Lcom/flurry/sdk/lg;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/sdk/lf;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/flurry/sdk/bh;

.field private f:Lcom/flurry/sdk/h;

.field private g:Lcom/flurry/sdk/g;

.field private h:Lcom/flurry/sdk/gw;

.field private i:Lcom/flurry/sdk/hg;

.field private j:Ljava/io/File;

.field private k:Lcom/flurry/sdk/jz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jz",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ay;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/dx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/dx;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dx;->b:Ljava/util/Map;

    new-instance v0, Lcom/flurry/sdk/dx$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/dx$1;-><init>(Lcom/flurry/sdk/dx;)V

    iput-object v0, p0, Lcom/flurry/sdk/dx;->c:Lcom/flurry/sdk/kb;

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/dx;->c:Lcom/flurry/sdk/kb;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kc;->a(Ljava/lang/String;Lcom/flurry/sdk/kb;)V

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/flurry/sdk/df;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ay;",
            ">;)",
            "Lcom/flurry/sdk/df;"
        }
    .end annotation

    const/4 v4, 0x3

    invoke-static {p1}, Lcom/flurry/sdk/fd;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/dx;->a:Ljava/lang/String;

    const-string v1, "List of adLogs is empty"

    invoke-static {v4, v0, v1}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/fd;->e()Ljava/util/List;

    move-result-object v3

    new-instance v0, Lcom/flurry/sdk/df;

    invoke-direct {v0}, Lcom/flurry/sdk/df;-><init>()V

    iput-object v2, v0, Lcom/flurry/sdk/df;->a:Ljava/lang/String;

    iput-object v3, v0, Lcom/flurry/sdk/df;->b:Ljava/util/List;

    iput-object v1, v0, Lcom/flurry/sdk/df;->c:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/flurry/sdk/df;->f:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/flurry/sdk/df;->d:J

    invoke-static {}, Lcom/flurry/sdk/jt;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/df;->e:Ljava/lang/String;

    sget-object v1, Lcom/flurry/sdk/dx;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ad log request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/sdk/df;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/dx;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dx;->d:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/dx;)Lcom/flurry/sdk/kb;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dx;->c:Lcom/flurry/sdk/kb;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ay;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ay;

    iget-object v2, p0, Lcom/flurry/sdk/dx;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/flurry/sdk/dx;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dx;->l()V

    return-void
.end method

.method static synthetic d(Lcom/flurry/sdk/dx;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dx;->k()V

    return-void
.end method

.method static synthetic e(Lcom/flurry/sdk/dx;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/dx;->j()V

    return-void
.end method

.method private declared-synchronized j()V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/sdk/dx;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dx;->a(Ljava/util/List;)Lcom/flurry/sdk/df;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/i;->g()Lcom/flurry/sdk/dl;

    move-result-object v1

    invoke-static {}, Lcom/flurry/sdk/j;->a()Lcom/flurry/sdk/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/j;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/flurry/sdk/jt;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/flurry/sdk/dl;->a(Lcom/flurry/sdk/df;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/dx;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dx;->a:Ljava/lang/String;

    const-string v2, "Saving AdLog data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dx;->k:Lcom/flurry/sdk/jz;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/flurry/sdk/dx;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jz;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dx;->a:Ljava/lang/String;

    const-string v2, "Loading AdLog data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dx;->k:Lcom/flurry/sdk/jz;

    invoke-virtual {v0}, Lcom/flurry/sdk/jz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dx;->b(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/dx;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/dx;->a:Ljava/lang/String;

    const-string v2, "Legacy AdLog data found, converting."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/dx;->j:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/l;->b(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/flurry/sdk/dx;->b(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/dx;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-direct {p0}, Lcom/flurry/sdk/dx;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dx;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/flurry/sdk/dx;->k:Lcom/flurry/sdk/jz;

    invoke-virtual {v0}, Lcom/flurry/sdk/jz;->b()Z

    return-void
.end method

.method private n()V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    const-string v1, "native"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/f;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/f;->a()Lcom/flurry/sdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/f;->b()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/sdk/ay;
    .locals 3

    iget-object v0, p0, Lcom/flurry/sdk/dx;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/ay;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/ay;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/dx;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x7fff

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/dx;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/sdk/ay;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/dx;->f:Lcom/flurry/sdk/h;

    invoke-virtual {v0}, Lcom/flurry/sdk/h;->a()V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->a()V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/w;->a()V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dx$13;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dx$13;-><init>(Lcom/flurry/sdk/dx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dx$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dx$2;-><init>(Lcom/flurry/sdk/dx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dx$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dx$3;-><init>(Lcom/flurry/sdk/dx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/flurry/sdk/dx;->n()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/dx;->f:Lcom/flurry/sdk/h;

    invoke-virtual {v0}, Lcom/flurry/sdk/h;->b()V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->k()Lcom/flurry/sdk/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bf;->b()V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dx$8;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dx$8;-><init>(Lcom/flurry/sdk/dx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dx$9;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dx$9;-><init>(Lcom/flurry/sdk/dx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/q;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/w;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/sdk/lf;Landroid/content/Context;)V
    .locals 5

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/sdk/dx;->d:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/flurry/sdk/bh;

    invoke-direct {v0}, Lcom/flurry/sdk/bh;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dx;->e:Lcom/flurry/sdk/bh;

    new-instance v0, Lcom/flurry/sdk/h;

    invoke-direct {v0}, Lcom/flurry/sdk/h;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dx;->f:Lcom/flurry/sdk/h;

    new-instance v0, Lcom/flurry/sdk/g;

    invoke-direct {v0}, Lcom/flurry/sdk/g;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dx;->g:Lcom/flurry/sdk/g;

    iget-object v0, p0, Lcom/flurry/sdk/dx;->g:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->a()V

    new-instance v0, Lcom/flurry/sdk/gz;

    invoke-direct {v0}, Lcom/flurry/sdk/gz;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dx;->h:Lcom/flurry/sdk/gw;

    new-instance v0, Lcom/flurry/sdk/ha;

    invoke-direct {v0}, Lcom/flurry/sdk/ha;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dx;->i:Lcom/flurry/sdk/hg;

    invoke-virtual {p0}, Lcom/flurry/sdk/dx;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dx;->j:Ljava/io/File;

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/q;->b()V

    new-instance v0, Lcom/flurry/sdk/jz;

    invoke-virtual {p0}, Lcom/flurry/sdk/dx;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryadlog."

    const/4 v3, 0x1

    new-instance v4, Lcom/flurry/sdk/dx$6;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/dx$6;-><init>(Lcom/flurry/sdk/dx;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/jz;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/le;)V

    iput-object v0, p0, Lcom/flurry/sdk/dx;->k:Lcom/flurry/sdk/jz;

    invoke-static {p2}, Lcom/flurry/sdk/fk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/dx;->l:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dx$7;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dx$7;-><init>(Lcom/flurry/sdk/dx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/bb;ZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/bb;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dx;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logAdEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dx;->a(Ljava/lang/String;)Lcom/flurry/sdk/ay;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ax;

    invoke-virtual {p2}, Lcom/flurry/sdk/bb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/sdk/je;->g()J

    move-result-wide v4

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/flurry/sdk/ax;-><init>(Ljava/lang/String;ZJLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ay;->a(Lcom/flurry/sdk/ax;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/flurry/sdk/bh;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dx;->e:Lcom/flurry/sdk/bh;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->d()Lcom/flurry/sdk/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/q;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/flurry/sdk/i;->a()Lcom/flurry/sdk/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/i;->e()Lcom/flurry/sdk/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/w;->a(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dx$10;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dx$10;-><init>(Lcom/flurry/sdk/dx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dx$11;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dx$11;-><init>(Lcom/flurry/sdk/dx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dx$12;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dx$12;-><init>(Lcom/flurry/sdk/dx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Lcom/flurry/sdk/g;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dx;->g:Lcom/flurry/sdk/g;

    return-object v0
.end method

.method public d()Lcom/flurry/sdk/gw;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dx;->h:Lcom/flurry/sdk/gw;

    return-object v0
.end method

.method public e()Lcom/flurry/sdk/hg;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dx;->i:Lcom/flurry/sdk/hg;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryadlog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".yflurryadlog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/sdk/lt;->i(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v1, 0x10

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/dx$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/dx$4;-><init>(Lcom/flurry/sdk/dx;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/dx;->l:Ljava/lang/String;

    return-object v0
.end method
