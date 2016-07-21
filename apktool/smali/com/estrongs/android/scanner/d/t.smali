.class public abstract Lcom/estrongs/android/scanner/d/t;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected final b:Lcom/estrongs/android/scanner/d/a;

.field private final c:Lcom/estrongs/android/scanner/d/af;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x1f4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/t;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/scanner/d/t;->d:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/t;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lcom/estrongs/android/scanner/d/a;->a()Lcom/estrongs/android/scanner/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-static {}, Lcom/estrongs/android/scanner/d/af;->a()Lcom/estrongs/android/scanner/d/af;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/t;->c:Lcom/estrongs/android/scanner/d/af;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/t;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/t;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/t;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/scanner/d/t;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/scanner/d/t;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/scanner/d/t;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/scanner/d/t;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->g:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/scanner/a/c;)J
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/estrongs/android/scanner/d/x;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/scanner/d/x;-><init>(Lcom/estrongs/android/scanner/d/t;Lcom/estrongs/android/scanner/a/c;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/d/t;->a(Ljava/lang/Runnable;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public a(J)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/scanner/d/v;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/scanner/d/v;-><init>(Lcom/estrongs/android/scanner/d/t;Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/d/t;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add to remove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->c:Lcom/estrongs/android/scanner/d/af;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/scanner/d/af;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/scanner/d/u;

    invoke-direct {v0, p0, p2, p1}, Lcom/estrongs/android/scanner/d/u;-><init>(Lcom/estrongs/android/scanner/d/t;Landroid/content/ContentValues;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/d/t;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract b()V
.end method

.method public b(Lcom/estrongs/android/scanner/a/c;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Lcom/estrongs/android/scanner/d/y;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/scanner/d/y;-><init>(Lcom/estrongs/android/scanner/d/t;Lcom/estrongs/android/scanner/a/c;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/scanner/d/t;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add to update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", row id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/c;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b(Lcom/estrongs/android/scanner/d/w;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/a;->b()V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flush modify entities into db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/d/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/d/t;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/t;->f:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/scanner/d/a;->d(Ljava/lang/String;Ljava/util/List;)Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flush trash entities from db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/d/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/d/t;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/t;->g:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/lang/String;Ljava/util/List;)Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/t;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flush number new into db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/t;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flush new entities into db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/d/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/d/t;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/t;->e:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/scanner/d/a;->c(Ljava/lang/String;Ljava/util/List;)Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/t;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert time into db:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/estrongs/android/scanner/af;->a:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/estrongs/android/scanner/d/w;->a()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/a;->close()V

    return-void
.end method

.method public final d()V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/a;->b()V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/a;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/scanner/d/t;->d:Z

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/d/t;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/android/scanner/d/t;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expired: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms to load file cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/a;->close()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/a;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/d/a;->close()V

    throw v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/scanner/d/t;->d:Z

    return v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/t;->b:Lcom/estrongs/android/scanner/d/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/a;->a(Z)V

    return-void
.end method
