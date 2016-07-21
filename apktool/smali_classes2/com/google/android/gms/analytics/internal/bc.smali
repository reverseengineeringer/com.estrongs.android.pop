.class Lcom/google/android/gms/analytics/internal/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/bb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/bc;->a:Lcom/google/android/gms/analytics/internal/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/bc;->a:Lcom/google/android/gms/analytics/internal/bb;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/bb;->a(Lcom/google/android/gms/analytics/internal/bb;)Lcom/google/android/gms/analytics/internal/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/ab;->h()Lcom/google/android/gms/internal/wh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/wh;->a(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/bc;->a:Lcom/google/android/gms/analytics/internal/bb;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/bb;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/bc;->a:Lcom/google/android/gms/analytics/internal/bb;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/analytics/internal/bb;->a(Lcom/google/android/gms/analytics/internal/bb;J)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/bc;->a:Lcom/google/android/gms/analytics/internal/bb;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/bb;->b(Lcom/google/android/gms/analytics/internal/bb;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/bc;->a:Lcom/google/android/gms/analytics/internal/bb;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/bb;->a()V

    goto :goto_0
.end method
