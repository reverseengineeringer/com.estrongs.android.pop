.class public Lcom/estrongs/android/cleaner/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/estrongs/android/cleaner/a;",
            "Lcom/estrongs/android/cleaner/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/f;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/estrongs/android/cleaner/f;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/estrongs/android/cleaner/scandisk/f;

.field private h:Lcom/estrongs/android/cleaner/g;

.field private i:Lcom/estrongs/android/cleaner/a/a;

.field private j:Lcom/estrongs/android/cleaner/i;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->c:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/cleaner/i;

    invoke-direct {v0}, Lcom/estrongs/android/cleaner/i;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->j:Lcom/estrongs/android/cleaner/i;

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/cleaner/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/cleaner/b/a;-><init>()V

    return-void
.end method

.method private a(Lcom/estrongs/android/cleaner/h;Ljava/util/HashSet;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/cleaner/h;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->f()I

    move-result v1

    const/4 v6, 0x4

    if-eq v1, v6, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/estrongs/android/cleaner/b/a;->a(Lcom/estrongs/android/cleaner/h;Ljava/util/HashSet;)J

    move-result-wide v0

    add-long/2addr v0, v2

    :goto_1
    move-wide v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->j()J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_1

    :cond_2
    monitor-exit v4

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-wide v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/cleaner/b/a;->c(Lcom/estrongs/android/cleaner/f;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/cleaner/f;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/estrongs/android/cleaner/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/cleaner/b/a;->f:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/cleaner/b/a;->a(Lcom/estrongs/android/cleaner/f;)V

    return-void
.end method

.method private b(Lcom/estrongs/android/cleaner/f;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/cleaner/b/a;->b(Lcom/estrongs/android/cleaner/f;)V

    return-void
.end method

.method private c(Lcom/estrongs/android/cleaner/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/cleaner/b/a;->e:Lcom/estrongs/android/cleaner/f;

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "context"

    const-string v1, "ScanFilters is empty..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/f;

    invoke-interface {v0}, Lcom/estrongs/android/cleaner/f;->b()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/estrongs/android/cleaner/a;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindCleaner, client num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/cleaner/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/e;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/cleaner/b/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/cleaner/f;

    invoke-interface {v1, v0}, Lcom/estrongs/android/cleaner/f;->b(Lcom/estrongs/android/cleaner/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/estrongs/android/cleaner/b/a;->e:Lcom/estrongs/android/cleaner/f;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/cleaner/b/a;->e:Lcom/estrongs/android/cleaner/f;

    invoke-interface {v1, v0}, Lcom/estrongs/android/cleaner/f;->b(Lcom/estrongs/android/cleaner/e;)V

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/cleaner/b/a;->i:Lcom/estrongs/android/cleaner/a/a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/cleaner/b/a;->i:Lcom/estrongs/android/cleaner/a/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/cleaner/a/a;->b(Lcom/estrongs/android/cleaner/e;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0
.end method

.method public a()Lcom/estrongs/android/cleaner/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->j:Lcom/estrongs/android/cleaner/i;

    return-object v0
.end method

.method public a(Lcom/estrongs/android/cleaner/a;I)V
    .locals 4

    const-string v0, "context"

    const-string v1, "startScan..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/b/a;->e()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/e;

    invoke-interface {v0, v1}, Lcom/estrongs/android/cleaner/e;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/estrongs/android/cleaner/b/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "context"

    const-string v2, "scanner is running..."

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/cleaner/b/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/cleaner/f;

    invoke-interface {v1, v0}, Lcom/estrongs/android/cleaner/f;->c(Lcom/estrongs/android/cleaner/e;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/cleaner/b/a;->j()V

    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    new-instance v0, Lcom/estrongs/android/cleaner/a/a;

    invoke-direct {v0}, Lcom/estrongs/android/cleaner/a/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->i:Lcom/estrongs/android/cleaner/a/a;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->i:Lcom/estrongs/android/cleaner/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/a/a;->a()V

    goto :goto_1

    :pswitch_1
    new-instance v0, Lcom/estrongs/android/cleaner/a/a;

    invoke-direct {v0}, Lcom/estrongs/android/cleaner/a/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->i:Lcom/estrongs/android/cleaner/a/a;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->i:Lcom/estrongs/android/cleaner/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/a/a;->a()V

    :pswitch_2
    new-instance v0, Lcom/estrongs/android/cleaner/scandisk/c;

    iget-object v1, p0, Lcom/estrongs/android/cleaner/b/a;->f:Ljava/util/Set;

    iget-object v2, p0, Lcom/estrongs/android/cleaner/b/a;->e:Lcom/estrongs/android/cleaner/f;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/cleaner/scandisk/c;-><init>(Ljava/util/Set;Lcom/estrongs/android/cleaner/f;)V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->h:Lcom/estrongs/android/cleaner/g;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->h:Lcom/estrongs/android/cleaner/g;

    iget-object v1, p0, Lcom/estrongs/android/cleaner/b/a;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/cleaner/b/a;->g:Lcom/estrongs/android/cleaner/scandisk/f;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/cleaner/g;->a(Ljava/util/List;Lcom/estrongs/android/cleaner/scandisk/f;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->h:Lcom/estrongs/android/cleaner/g;

    invoke-interface {v0}, Lcom/estrongs/android/cleaner/g;->a()V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/f;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/estrongs/android/cleaner/b/b;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/cleaner/b/b;-><init>(Lcom/estrongs/android/cleaner/b/a;Lcom/estrongs/android/cleaner/f;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized a(Lcom/estrongs/android/cleaner/a;Lcom/estrongs/android/cleaner/e;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/f;

    invoke-interface {v0, p2}, Lcom/estrongs/android/cleaner/f;->a(Lcom/estrongs/android/cleaner/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->e:Lcom/estrongs/android/cleaner/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->e:Lcom/estrongs/android/cleaner/f;

    invoke-interface {v0, p2}, Lcom/estrongs/android/cleaner/f;->a(Lcom/estrongs/android/cleaner/e;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->i:Lcom/estrongs/android/cleaner/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->i:Lcom/estrongs/android/cleaner/a/a;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/cleaner/a/a;->a(Lcom/estrongs/android/cleaner/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->j:Lcom/estrongs/android/cleaner/i;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/i;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->j:Lcom/estrongs/android/cleaner/i;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/i;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 6

    const-wide/16 v0, 0x0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/b/a;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v4}, Lcom/estrongs/android/cleaner/b/a;->a(Lcom/estrongs/android/cleaner/h;Ljava/util/HashSet;)J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/h;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/f;

    invoke-interface {v0}, Lcom/estrongs/android/cleaner/f;->d()Lcom/estrongs/android/cleaner/h;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->i:Lcom/estrongs/android/cleaner/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->i:Lcom/estrongs/android/cleaner/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/a/a;->c()Lcom/estrongs/android/cleaner/h;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v1
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "context"

    const-string v1, "cancelScan"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->i:Lcom/estrongs/android/cleaner/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->i:Lcom/estrongs/android/cleaner/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/a/a;->b()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->h:Lcom/estrongs/android/cleaner/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->h:Lcom/estrongs/android/cleaner/g;

    invoke-interface {v0}, Lcom/estrongs/android/cleaner/g;->b()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->h:Lcom/estrongs/android/cleaner/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "context"

    const-string v1, "finishScan"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->h:Lcom/estrongs/android/cleaner/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->h:Lcom/estrongs/android/cleaner/g;

    invoke-interface {v0}, Lcom/estrongs/android/cleaner/g;->d()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->h:Lcom/estrongs/android/cleaner/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    const-string v1, "destroyScan"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->h:Lcom/estrongs/android/cleaner/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->h:Lcom/estrongs/android/cleaner/g;

    invoke-interface {v0}, Lcom/estrongs/android/cleaner/g;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/cleaner/b/a;->h:Lcom/estrongs/android/cleaner/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
