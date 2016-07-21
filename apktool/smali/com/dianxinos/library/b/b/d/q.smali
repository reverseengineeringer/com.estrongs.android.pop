.class public final Lcom/dianxinos/library/b/b/d/q;
.super Lcom/dianxinos/library/b/b/d/a;


# static fields
.field static final o:Lcom/dianxinos/library/b/c/g;

.field static p:I


# instance fields
.field A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dianxinos/library/b/b/a/d;",
            ">;"
        }
    .end annotation
.end field

.field B:Lcom/dianxinos/library/b/b/d/s;

.field C:Ljava/lang/Object;

.field q:Ljava/lang/String;

.field r:Lcom/dianxinos/library/b/b/d/t;

.field s:Ljava/lang/Object;

.field t:Lcom/dianxinos/library/b/b/a/c;

.field u:Lcom/dianxinos/library/b/b/c/a;

.field v:Lcom/dianxinos/library/b/b/b/a;

.field w:Z

.field x:Z

.field y:Z

.field z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/dianxinos/library/b/b/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dianxinos/library/b/c/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/dianxinos/library/b/c/g;-><init>(I)V

    sput-object v0, Lcom/dianxinos/library/b/b/d/q;->o:Lcom/dianxinos/library/b/c/g;

    const/4 v0, 0x0

    sput v0, Lcom/dianxinos/library/b/b/d/q;->p:I

    return-void
.end method

.method public constructor <init>(Lcom/dianxinos/library/b/b/c/b;Lcom/dianxinos/library/b/b/d/t;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/dianxinos/library/b/b/d/a;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->s:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/dianxinos/library/b/b/d/q;->w:Z

    iput-boolean v1, p0, Lcom/dianxinos/library/b/b/d/q;->x:Z

    iput-boolean v1, p0, Lcom/dianxinos/library/b/b/d/q;->y:Z

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->z:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->A:Ljava/util/HashMap;

    new-instance v0, Lcom/dianxinos/library/b/b/d/s;

    invoke-direct {v0, p0}, Lcom/dianxinos/library/b/b/d/s;-><init>(Lcom/dianxinos/library/b/b/d/q;)V

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->B:Lcom/dianxinos/library/b/b/d/s;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->C:Ljava/lang/Object;

    new-instance v0, Lcom/dianxinos/library/b/b/a/c;

    invoke-direct {v0}, Lcom/dianxinos/library/b/b/a/c;-><init>()V

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->t:Lcom/dianxinos/library/b/b/a/c;

    iput-object p2, p0, Lcom/dianxinos/library/b/b/d/q;->r:Lcom/dianxinos/library/b/b/d/t;

    iput-object p3, p0, Lcom/dianxinos/library/b/b/d/q;->q:Ljava/lang/String;

    new-instance v0, Lcom/dianxinos/library/b/b/c/a;

    invoke-virtual {p2}, Lcom/dianxinos/library/b/b/d/t;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/q;->q:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/dianxinos/library/b/b/c/a;-><init>(Lcom/dianxinos/library/b/b/c/b;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->u:Lcom/dianxinos/library/b/b/c/a;

    return-void
.end method

.method private a(Ljava/lang/String;[B)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/q;->v:Lcom/dianxinos/library/b/b/b/a;

    invoke-direct {p0, p1}, Lcom/dianxinos/library/b/b/d/q;->c(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/dianxinos/library/b/b/b/a;->b([B[B)[B

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {v2}, Lcom/dianxinos/library/b/b/c/c;->a([B)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/dianxinos/library/b/b/d/q;Ljava/lang/String;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/dianxinos/library/b/b/d/q;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "t26a26ebfab9b4e5f9f39784402706fd6efdf7081"

    invoke-virtual {p0, v2}, Lcom/dianxinos/library/b/b/d/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/library/b/b/d/q;->v:Lcom/dianxinos/library/b/b/b/a;

    invoke-static {v0}, Lcom/dianxinos/library/b/b/c/c;->a(I)[B

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/dianxinos/library/b/b/d/q;->c(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/dianxinos/library/b/b/b/a;->a([B[B)[B

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v4, p0, Lcom/dianxinos/library/b/b/d/q;->u:Lcom/dianxinos/library/b/b/c/a;

    invoke-virtual {v4, v2, v3}, Lcom/dianxinos/library/b/b/c/a;->a(Ljava/lang/String;[B)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)[B
    .locals 1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/dianxinos/library/b/b/b/b;->a(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method private d()Z
    .locals 2

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    sget-boolean v0, Lcom/dianxinos/library/b/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "wait storage 1000ms ..."

    invoke-static {v0}, Lcom/dianxinos/library/b/c/k;->a(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->y:Z

    return v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->r:Lcom/dianxinos/library/b/b/d/t;

    invoke-virtual {v0}, Lcom/dianxinos/library/b/b/d/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurePreferences "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/q;->r:Lcom/dianxinos/library/b/b/d/t;

    invoke-virtual {v2}, Lcom/dianxinos/library/b/b/d/t;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->x:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/q;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/Object;Lcom/dianxinos/library/b/b/d/o;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/dianxinos/library/b/b/d/o",
            "<*>;)TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/dianxinos/library/b/b/d/q;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/library/b/b/d/q;->e()V

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/q;->s:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->t:Lcom/dianxinos/library/b/b/a/c;

    invoke-virtual {v0, p1}, Lcom/dianxinos/library/b/b/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v0, Lcom/dianxinos/library/b/b/d/q;->a:Ljava/lang/Object;

    if-ne v1, v0, :cond_1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_1
    monitor-exit v2

    move-object p2, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/b/b/a/d;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/dianxinos/library/b/b/a/d;->b:Ljava/lang/Object;

    sget-object v0, Lcom/dianxinos/library/b/b/d/q;->a:Ljava/lang/Object;

    if-ne v1, v0, :cond_3

    monitor-exit v2

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    monitor-exit v2

    move-object p2, v1

    goto :goto_0

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p1}, Lcom/dianxinos/library/b/b/d/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/q;->u:Lcom/dianxinos/library/b/b/c/a;

    invoke-virtual {v1, v0}, Lcom/dianxinos/library/b/b/c/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/q;->v:Lcom/dianxinos/library/b/b/b/a;

    invoke-direct {p0, v0}, Lcom/dianxinos/library/b/b/d/q;->c(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/dianxinos/library/b/b/b/a;->b([B[B)[B

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_a

    invoke-interface {p3, v1}, Lcom/dianxinos/library/b/b/d/o;->b([B)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/q;->t:Lcom/dianxinos/library/b/b/a/c;

    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->t:Lcom/dianxinos/library/b/b/a/c;

    invoke-virtual {v0, p1}, Lcom/dianxinos/library/b/b/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/dianxinos/library/b/b/d/q;->a:Ljava/lang/Object;

    if-ne v0, v3, :cond_5

    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    if-eqz v0, :cond_6

    :try_start_3
    monitor-exit v2

    move-object p2, v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/b/b/a/d;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/dianxinos/library/b/b/a/d;->b:Ljava/lang/Object;

    sget-object v3, Lcom/dianxinos/library/b/b/d/q;->a:Ljava/lang/Object;

    if-ne v0, v3, :cond_7

    monitor-exit v2

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    monitor-exit v2

    move-object p2, v0

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->t:Lcom/dianxinos/library/b/b/a/c;

    invoke-virtual {v0, p1, v1}, Lcom/dianxinos/library/b/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    move-object p2, v1

    goto/16 :goto_0

    :cond_9
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :cond_a
    move-object v1, v0

    goto :goto_1
.end method

.method public a()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/library/b/b/d/q;->a(Ljava/util/concurrent/CountDownLatch;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Lcom/dianxinos/library/b/b/b/a;)V
    .locals 2

    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/q;->r:Lcom/dianxinos/library/b/b/d/t;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->r:Lcom/dianxinos/library/b/b/d/t;

    invoke-virtual {v0}, Lcom/dianxinos/library/b/b/d/t;->c()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->y:Z

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->w:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    iput-object p1, p0, Lcom/dianxinos/library/b/b/d/q;->v:Lcom/dianxinos/library/b/b/b/a;

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->u:Lcom/dianxinos/library/b/b/c/a;

    invoke-virtual {v0}, Lcom/dianxinos/library/b/b/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->u:Lcom/dianxinos/library/b/b/c/a;

    invoke-virtual {v0}, Lcom/dianxinos/library/b/b/c/a;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->w:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    :try_start_5
    invoke-direct {p0}, Lcom/dianxinos/library/b/b/d/q;->c()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->w:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->x:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_1
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->w:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :cond_3
    :try_start_9
    const-string v0, "t26a26ebfab9b4e5f9f39784402706fd6efdf7081"

    invoke-virtual {p0, v0}, Lcom/dianxinos/library/b/b/d/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/q;->u:Lcom/dianxinos/library/b/b/c/a;

    invoke-virtual {v1, v0}, Lcom/dianxinos/library/b/b/c/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/dianxinos/library/b/b/d/q;->c()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->w:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :cond_4
    :try_start_b
    invoke-direct {p0, v0, v1}, Lcom/dianxinos/library/b/b/d/q;->a(Ljava/lang/String;[B)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->w:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :try_start_d
    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->x:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    const/4 v1, 0x1

    :try_start_e
    iput-boolean v1, p0, Lcom/dianxinos/library/b/b/d/q;->w:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
.end method

.method public a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->w:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->y:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/q;->s:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->A:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->A:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/library/b/b/a/d;

    iget-object v1, v0, Lcom/dianxinos/library/b/b/a/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/dianxinos/library/b/b/a/d;->b()V

    :cond_2
    new-instance v0, Lcom/dianxinos/library/b/b/d/r;

    invoke-direct {v0, p0, v1, p1}, Lcom/dianxinos/library/b/b/d/r;-><init>(Lcom/dianxinos/library/b/b/d/q;Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {}, Lcom/dianxinos/library/b/b/a/d;->a()Lcom/dianxinos/library/b/b/a/d;

    move-result-object v1

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/dianxinos/library/b/b/a/d;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/dianxinos/library/b/b/a/d;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/dianxinos/library/b/b/a/d;->c:Lcom/dianxinos/library/b/b/d/p;

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->A:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v4, v4}, Lcom/dianxinos/library/b/b/d/q;->a(ZZ)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Object;Lcom/dianxinos/library/b/b/d/p;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/dianxinos/library/b/b/d/p",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/dianxinos/library/b/b/d/q;->d()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/dianxinos/library/b/b/d/q;->e()V

    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/q;->s:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/dianxinos/library/b/b/d/q;->t:Lcom/dianxinos/library/b/b/a/c;

    invoke-virtual {v3, p1}, Lcom/dianxinos/library/b/b/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/dianxinos/library/b/b/d/q;->t:Lcom/dianxinos/library/b/b/a/c;

    invoke-virtual {v3, p1, p2}, Lcom/dianxinos/library/b/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/dianxinos/library/b/b/a/d;->a()Lcom/dianxinos/library/b/b/a/d;

    move-result-object v3

    iput-object p1, v3, Lcom/dianxinos/library/b/b/a/d;->a:Ljava/lang/String;

    iput-object p2, v3, Lcom/dianxinos/library/b/b/a/d;->b:Ljava/lang/Object;

    iput-object p3, v3, Lcom/dianxinos/library/b/b/a/d;->c:Lcom/dianxinos/library/b/b/d/p;

    iget-object v4, p0, Lcom/dianxinos/library/b/b/d/q;->A:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lcom/dianxinos/library/b/b/d/q;->a(Z)Z

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dianxinos/library/b/b/d/q;->a(ZZ)Z

    move-result v0

    return v0
.end method

.method public a(ZZ)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/q;->C:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->B:Lcom/dianxinos/library/b/b/d/s;

    iget-boolean v0, v0, Lcom/dianxinos/library/b/b/d/s;->a:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->B:Lcom/dianxinos/library/b/b/d/s;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/dianxinos/library/b/b/d/s;->a:Z

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/q;->B:Lcom/dianxinos/library/b/b/d/s;

    invoke-static {v0}, Lcom/dianxinos/library/b/c/i;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    monitor-exit v1

    return v3

    :cond_2
    iget-object v2, p0, Lcom/dianxinos/library/b/b/d/q;->B:Lcom/dianxinos/library/b/b/d/s;

    if-eqz p1, :cond_3

    const/16 v0, 0x64

    :goto_1
    invoke-static {v2, v0}, Lcom/dianxinos/library/b/c/i;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    const/16 v0, 0x3e8

    goto :goto_1
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dianxinos/library/b/b/d/q;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dianxinos/library/b/b/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->w:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->y:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/dianxinos/library/b/b/d/q;->x:Z

    goto :goto_0
.end method
