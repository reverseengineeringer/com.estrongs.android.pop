.class public final Lcom/google/android/gms/internal/hy;
.super Lcom/google/android/gms/internal/im;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ic;

.field private c:Lcom/google/android/gms/internal/hx;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/im;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hy;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/hx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/hx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hx;->t()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/hy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->b:Lcom/google/android/gms/internal/ic;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/hy;->b:Lcom/google/android/gms/internal/ic;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ic;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hy;->b:Lcom/google/android/gms/internal/ic;

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/hx;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/hx;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/ic;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/hy;->b:Lcom/google/android/gms/internal/ic;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/hx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/hx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hx;->u()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/hx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/hx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hx;->v()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/hx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/hx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hx;->w()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/hy;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->b:Lcom/google/android/gms/internal/ic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->b:Lcom/google/android/gms/internal/ic;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ic;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hy;->b:Lcom/google/android/gms/internal/ic;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/hx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/hy;->c:Lcom/google/android/gms/internal/hx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hx;->x()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
