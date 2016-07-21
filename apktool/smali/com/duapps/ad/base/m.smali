.class public Lcom/duapps/ad/base/m;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lcom/duapps/ad/base/m;

.field private static final d:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final e:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/duapps/ad/base/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/duapps/ad/base/m;->a:Ljava/lang/String;

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "dianxinosdxbs/3.2 (Linux; Android; Tapas OTA) Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.18) Gecko/20110628 Ubuntu/10.04 (lucid) Firefox/3.6.18"

    sput-object v0, Lcom/duapps/ad/base/m;->b:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/duapps/ad/base/n;

    invoke-direct {v0}, Lcom/duapps/ad/base/n;-><init>()V

    sput-object v0, Lcom/duapps/ad/base/m;->d:Ljava/util/concurrent/ThreadFactory;

    return-void

    :cond_0
    sput-object v0, Lcom/duapps/ad/base/m;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v2, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/duapps/ad/base/m;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/base/m;->f:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/duapps/ad/base/m;->g:Landroid/content/Context;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/duapps/ad/base/m;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    sget-object v8, Lcom/duapps/ad/base/m;->d:Ljava/util/concurrent/ThreadFactory;

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/duapps/ad/base/m;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/duapps/ad/base/m;
    .locals 3

    const-class v1, Lcom/duapps/ad/base/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duapps/ad/base/m;->c:Lcom/duapps/ad/base/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duapps/ad/base/m;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/duapps/ad/base/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duapps/ad/base/m;->c:Lcom/duapps/ad/base/m;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/duapps/ad/base/m;->c:Lcom/duapps/ad/base/m;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/duapps/ad/base/m;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/base/m;->f:Ljava/util/HashSet;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/duapps/ad/entity/AdData;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/duapps/ad/stats/y;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/y;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    invoke-static {p0, v0}, Lcom/duapps/ad/entity/AdData;->a(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/duapps/ad/stats/y;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method static synthetic b(Lcom/duapps/ad/base/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/base/m;->g:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/duapps/ad/base/p;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/base/m;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/stats/y;->a(Landroid/content/Context;)Lcom/duapps/ad/stats/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duapps/ad/stats/y;->a(Ljava/lang/String;)Lcom/duapps/ad/base/p;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/duapps/ad/entity/AdData;IIJ)V
    .locals 6

    iget-object v0, p0, Lcom/duapps/ad/base/m;->g:Landroid/content/Context;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/duapps/ad/stats/u;->a(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;IIJ)V

    return-void
.end method

.method public a(Lcom/duapps/ad/entity/AdData;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/duapps/ad/stats/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/duapps/ad/base/m;->f:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/duapps/ad/entity/AdData;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/duapps/ad/base/m;->a:Ljava/lang/String;

    const-string v2, "Task already Running."

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/duapps/ad/base/o;

    invoke-direct {v1, p0, p1}, Lcom/duapps/ad/base/o;-><init>(Lcom/duapps/ad/base/m;Lcom/duapps/ad/entity/AdData;)V

    iget-object v2, p0, Lcom/duapps/ad/base/m;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/duapps/ad/base/m;->a:Ljava/lang/String;

    const-string v2, "Task already in Queue"

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duapps/ad/base/m;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/entity/AdData;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/entity/AdData;

    iget-object v2, p0, Lcom/duapps/ad/base/m;->g:Landroid/content/Context;

    iget-object v3, v0, Lcom/duapps/ad/entity/AdData;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/duapps/ad/base/m;->g:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/duapps/ad/entity/AdData;->a(Landroid/content/Context;Lcom/duapps/ad/entity/AdData;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/duapps/ad/base/m;->a(Lcom/duapps/ad/entity/AdData;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
