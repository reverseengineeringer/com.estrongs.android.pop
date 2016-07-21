.class public abstract Lcom/google/android/gms/cast/internal/c;
.super Lcom/google/android/gms/cast/internal/f;


# instance fields
.field protected final b:Landroid/os/Handler;

.field protected final c:J

.field protected final d:Ljava/lang/Runnable;

.field protected e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/cast/internal/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/c;->b:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/cast/internal/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/internal/e;-><init>(Lcom/google/android/gms/cast/internal/c;Lcom/google/android/gms/cast/internal/d;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/c;->d:Ljava/lang/Runnable;

    iput-wide p4, p0, Lcom/google/android/gms/cast/internal/c;->c:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/c;->a(Z)V

    return-void
.end method


# virtual methods
.method protected final a(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/cast/internal/c;->e:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/cast/internal/c;->e:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/c;->d:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/gms/cast/internal/c;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/c;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/c;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected abstract a(J)Z
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/c;->a(Z)V

    return-void
.end method
