.class public Lcom/google/android/gms/ads/internal/request/l;
.super Lcom/google/android/gms/ads/internal/request/j;

# interfaces
.implements Lcom/google/android/gms/common/api/q;
.implements Lcom/google/android/gms/common/api/r;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field protected a:Lcom/google/android/gms/ads/internal/request/m;

.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field private final d:Lcom/google/android/gms/ads/internal/request/h;

.field private final e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;)V
    .locals 6

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/j;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/l;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/l;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/l;->c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/l;->d:Lcom/google/android/gms/ads/internal/request/h;

    sget-object v0, Lcom/google/android/gms/internal/cz;->A:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/l;->f:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->p()Lcom/google/android/gms/internal/pd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pd;->a()Landroid/os/Looper;

    move-result-object v2

    :goto_0
    new-instance v0, Lcom/google/android/gms/ads/internal/request/m;

    iget-object v1, p2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->l:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v5, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->e:I

    move-object v1, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/request/m;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/q;Lcom/google/android/gms/common/api/r;I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/l;->a:Lcom/google/android/gms/ads/internal/request/m;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/l;->e()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/l;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/l;->a:Lcom/google/android/gms/ads/internal/request/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/m;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/l;->a:Lcom/google/android/gms/ads/internal/request/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/m;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/l;->a:Lcom/google/android/gms/ads/internal/request/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/m;->c()V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/l;->f:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->p()Lcom/google/android/gms/internal/pd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pd;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/l;->f:Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Lcom/google/android/gms/ads/internal/request/r;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/l;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/l;->a:Lcom/google/android/gms/ads/internal/request/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/m;->p_()Lcom/google/android/gms/ads/internal/request/r;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/l;->a:Lcom/google/android/gms/ads/internal/request/m;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/m;->n()V

    return-void
.end method

.method f()Lcom/google/android/gms/internal/np;
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/internal/request/k;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/l;->c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/l;->d:Lcom/google/android/gms/ads/internal/request/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/request/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;)V

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/l;->g()Ljava/util/concurrent/Future;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 6

    const-string v0, "Cannot connect to remote service, fallback to local instance."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/request/l;->f()Lcom/google/android/gms/internal/np;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/np;->g()Ljava/util/concurrent/Future;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "gms_connection_failed_fallback_to_local"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ae;->e()Lcom/google/android/gms/internal/oe;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/l;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/l;->c:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->l:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->c:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/oe;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    const-string v0, "Disconnected from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    return-void
.end method
