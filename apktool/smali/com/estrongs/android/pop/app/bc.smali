.class public Lcom/estrongs/android/pop/app/bc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/bj;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/estrongs/android/pop/app/bc;


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/bi;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/bc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/bc;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/bc;->b:Lcom/estrongs/android/pop/app/bc;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/bc;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/bc;->d:Z

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/app/bc;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/bc;->b:Lcom/estrongs/android/pop/app/bc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/bc;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/bc;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/bc;->b:Lcom/estrongs/android/pop/app/bc;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/bc;->b:Lcom/estrongs/android/pop/app/bc;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/bi;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/bc;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/app/bi;->a:Ljava/net/Inet4Address;

    invoke-virtual {v1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bc;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/estrongs/android/pop/app/bd;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/bd;-><init>(Lcom/estrongs/android/pop/app/bc;Lcom/estrongs/android/pop/app/bi;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/bc;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    :try_start_1
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/bc;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/bc;->d:Z

    invoke-static {}, Lcom/estrongs/android/pop/app/be;->a()Lcom/estrongs/android/pop/app/be;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/be;->a(Lcom/estrongs/android/pop/app/bj;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/be;->a()Lcom/estrongs/android/pop/app/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/be;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/estrongs/android/pop/app/bi;)V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/bc;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/bc;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/be;->a()Lcom/estrongs/android/pop/app/be;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/be;->b(Lcom/estrongs/android/pop/app/bj;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bc;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bc;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bc;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/bc;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
