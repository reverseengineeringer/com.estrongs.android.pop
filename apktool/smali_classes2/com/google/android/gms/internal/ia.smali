.class Lcom/google/android/gms/internal/ia;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hy;

.field final synthetic b:Lcom/google/android/gms/internal/hz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/internal/hy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ia;->b:Lcom/google/android/gms/internal/hz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ia;->a:Lcom/google/android/gms/internal/hy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->b:Lcom/google/android/gms/internal/hz;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/hz;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->b:Lcom/google/android/gms/internal/hz;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->b(Lcom/google/android/gms/internal/hz;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->b:Lcom/google/android/gms/internal/hz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ia;->b:Lcom/google/android/gms/internal/hz;

    invoke-static {v2}, Lcom/google/android/gms/internal/hz;->c(Lcom/google/android/gms/internal/hz;)Lcom/google/android/gms/internal/ii;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/internal/ii;)Lcom/google/android/gms/internal/ii;

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->b:Lcom/google/android/gms/internal/hz;

    invoke-static {v0}, Lcom/google/android/gms/internal/hz;->d(Lcom/google/android/gms/internal/hz;)Lcom/google/android/gms/internal/ii;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->b:Lcom/google/android/gms/internal/hz;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hz;->a(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->a:Lcom/google/android/gms/internal/hy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ia;->b:Lcom/google/android/gms/internal/hz;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hy;->a(Lcom/google/android/gms/internal/ic;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->b:Lcom/google/android/gms/internal/hz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ia;->a:Lcom/google/android/gms/internal/hy;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/internal/hy;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
