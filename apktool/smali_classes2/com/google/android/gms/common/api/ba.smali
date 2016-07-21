.class Lcom/google/android/gms/common/api/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/q;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/ay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/ay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/ba;->a:Lcom/google/android/gms/common/api/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ba;->a:Lcom/google/android/gms/common/api/ay;

    invoke-static {v0}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/api/ay;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/ba;->a:Lcom/google/android/gms/common/api/ay;

    invoke-static {v0}, Lcom/google/android/gms/common/api/ay;->b(Lcom/google/android/gms/common/api/ay;)Lcom/google/android/gms/common/api/bi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/bi;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/ba;->a:Lcom/google/android/gms/common/api/ay;

    invoke-static {v0}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/api/ay;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/ba;->a:Lcom/google/android/gms/common/api/ay;

    invoke-static {v1}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/api/ay;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/ba;->a:Lcom/google/android/gms/common/api/ay;

    invoke-static {v0}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/api/ay;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/ba;->a:Lcom/google/android/gms/common/api/ay;

    invoke-static {v0}, Lcom/google/android/gms/common/api/ay;->b(Lcom/google/android/gms/common/api/ay;)Lcom/google/android/gms/common/api/bi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/bi;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/ba;->a:Lcom/google/android/gms/common/api/ay;

    invoke-static {v0}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/api/ay;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/ba;->a:Lcom/google/android/gms/common/api/ay;

    invoke-static {v1}, Lcom/google/android/gms/common/api/ay;->a(Lcom/google/android/gms/common/api/ay;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
