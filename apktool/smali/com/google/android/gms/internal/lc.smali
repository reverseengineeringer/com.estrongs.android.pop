.class public abstract Lcom/google/android/gms/internal/lc;
.super Lcom/google/android/gms/internal/zzfz;

# interfaces
.implements Lcom/google/android/gms/internal/qd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field protected a:Z

.field private final i:Lcom/google/android/gms/internal/qb;

.field private j:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/qa;Lcom/google/android/gms/internal/ll;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzfz;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/nh;Lcom/google/android/gms/internal/qa;Lcom/google/android/gms/internal/ll;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lc;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lc;->j:Z

    invoke-interface {p3}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/lc;->i:Lcom/google/android/gms/internal/qb;

    return-void
.end method

.method private c(J)Z
    .locals 5

    const-wide/32 v0, 0xea60

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/lc;->e:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/zzfz$zza;

    const-string v1, "Ad request cancelled."

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzfz$zza;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method protected a(J)V
    .locals 3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/lc;->c(J)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzfz$zza;

    const-string v1, "Timed out waiting for WebView to finish loading."

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzfz$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/lc;->j:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/zzfz$zza;

    const-string v1, "Received cancellation request from creative."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzfz$zza;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/lc;->a:Z

    if-eqz v0, :cond_0

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/qa;Z)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/lc;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "WebView finished loading."

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/lc;->a:Z

    if-nez p2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/lc;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/lc;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/lc;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lc;->d:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->stopLoading()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->g()Lcom/google/android/gms/internal/oh;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/lc;->d:Lcom/google/android/gms/internal/qa;

    invoke-interface {v2}, Lcom/google/android/gms/internal/qa;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/oh;->a(Landroid/webkit/WebView;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
