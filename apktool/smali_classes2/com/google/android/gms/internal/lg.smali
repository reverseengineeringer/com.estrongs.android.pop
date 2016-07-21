.class Lcom/google/android/gms/internal/lg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ld;

.field final synthetic b:Lcom/google/android/gms/internal/lf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lf;Lcom/google/android/gms/internal/ld;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lg;->b:Lcom/google/android/gms/internal/lf;

    iput-object p2, p0, Lcom/google/android/gms/internal/lg;->a:Lcom/google/android/gms/internal/ld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/lg;->b:Lcom/google/android/gms/internal/lf;

    iget-object v1, v0, Lcom/google/android/gms/internal/lf;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lg;->b:Lcom/google/android/gms/internal/lf;

    iget-object v0, v0, Lcom/google/android/gms/internal/lf;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->f:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lg;->b:Lcom/google/android/gms/internal/lf;

    iget-object v0, v0, Lcom/google/android/gms/internal/lf;->d:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/lg;->b:Lcom/google/android/gms/internal/lf;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/qb;->a(Lcom/google/android/gms/internal/qd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lg;->a:Lcom/google/android/gms/internal/ld;

    iget-object v2, p0, Lcom/google/android/gms/internal/lg;->b:Lcom/google/android/gms/internal/lf;

    iget-object v2, v2, Lcom/google/android/gms/internal/lf;->h:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ld;->a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
