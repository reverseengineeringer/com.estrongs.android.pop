.class Lcom/google/android/gms/ads/internal/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field final synthetic b:Lcom/google/android/gms/ads/internal/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/q;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/r;->b:Lcom/google/android/gms/ads/internal/q;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/r;->a:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->b:Lcom/google/android/gms/ads/internal/q;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/q;->a(Lcom/google/android/gms/ads/internal/q;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/r;->b:Lcom/google/android/gms/ads/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/ads/internal/w;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->b:Lcom/google/android/gms/ads/internal/q;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lcom/google/android/gms/ads/internal/q;->a(Lcom/google/android/gms/ads/internal/q;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->b:Lcom/google/android/gms/ads/internal/q;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/q;->b(Lcom/google/android/gms/ads/internal/q;)Lcom/google/android/gms/internal/em;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/w;->a(Lcom/google/android/gms/internal/em;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->b:Lcom/google/android/gms/ads/internal/q;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/q;->c(Lcom/google/android/gms/ads/internal/q;)Lcom/google/android/gms/internal/ep;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/w;->a(Lcom/google/android/gms/internal/ep;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->b:Lcom/google/android/gms/ads/internal/q;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/q;->d(Lcom/google/android/gms/ads/internal/q;)Lcom/google/android/gms/internal/sz;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/w;->a(Lcom/google/android/gms/internal/sz;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->b:Lcom/google/android/gms/ads/internal/q;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/q;->e(Lcom/google/android/gms/ads/internal/q;)Lcom/google/android/gms/ads/internal/client/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/w;->a(Lcom/google/android/gms/ads/internal/client/r;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->b:Lcom/google/android/gms/ads/internal/q;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/q;->f(Lcom/google/android/gms/ads/internal/q;)Lcom/google/android/gms/internal/sz;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/w;->b(Lcom/google/android/gms/internal/sz;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->b:Lcom/google/android/gms/ads/internal/q;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/q;->g(Lcom/google/android/gms/ads/internal/q;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/w;->a(Ljava/util/List;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->b:Lcom/google/android/gms/ads/internal/q;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/q;->h(Lcom/google/android/gms/ads/internal/q;)Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/w;->a(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/r;->a:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/w;->a(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
