.class Lcom/google/android/gms/internal/qc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/qb;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/qc;->a:Lcom/google/android/gms/internal/qb;

    iget-object v0, v0, Lcom/google/android/gms/internal/qb;->a:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qc;->a:Lcom/google/android/gms/internal/qb;

    iget-object v0, v0, Lcom/google/android/gms/internal/qb;->a:Lcom/google/android/gms/internal/qa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->f()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->n()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/qc;->a:Lcom/google/android/gms/internal/qb;

    invoke-static {v0}, Lcom/google/android/gms/internal/qb;->d(Lcom/google/android/gms/internal/qb;)Lcom/google/android/gms/internal/qe;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/qc;->a:Lcom/google/android/gms/internal/qb;

    invoke-static {v0}, Lcom/google/android/gms/internal/qb;->d(Lcom/google/android/gms/internal/qb;)Lcom/google/android/gms/internal/qe;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/qe;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/qc;->a:Lcom/google/android/gms/internal/qb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qb;->a(Lcom/google/android/gms/internal/qb;Lcom/google/android/gms/internal/qe;)Lcom/google/android/gms/internal/qe;

    :cond_1
    return-void
.end method
