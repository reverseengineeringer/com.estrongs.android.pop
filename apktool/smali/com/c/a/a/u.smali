.class public Lcom/c/a/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/g;


# instance fields
.field private a:Lb/a/a/f;

.field private b:Lcom/c/a/a/i;


# direct methods
.method public constructor <init>(Lb/a/a/f;Lcom/c/a/a/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/a/u;->a:Lb/a/a/f;

    iput-object p2, p0, Lcom/c/a/a/u;->b:Lcom/c/a/a/i;

    return-void
.end method


# virtual methods
.method public a(Lb/b/f;)Lb/a/a/a;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/c/a/a/u;->a(Lb/b/f;Lb/b/a;)Lb/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Lb/b/f;Lb/b/a;)Lb/a/a/a;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/u;->a:Lb/a/a/f;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/c/a/a/s;

    iget-object v1, p0, Lcom/c/a/a/u;->a:Lb/a/a/f;

    invoke-interface {v1}, Lb/a/a/f;->a()Lb/a/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/u;->b:Lcom/c/a/a/i;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/c/a/a/s;-><init>(Lb/a/a/e;Lb/b/f;Lb/b/a;Lcom/c/a/a/i;)V

    invoke-virtual {v0}, Lcom/c/a/a/s;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/c/a/a/u;->a:Lb/a/a/f;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/c/a/a/u;->a:Lb/a/a/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/a/f;->e()V

    :cond_0
    return-void
.end method
