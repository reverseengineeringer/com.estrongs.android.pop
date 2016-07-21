.class public Lcom/google/android/gms/common/internal/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/u;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/ab;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ah;->a:Lcom/google/android/gms/common/internal/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ah;->a:Lcom/google/android/gms/common/internal/ab;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/ah;->a:Lcom/google/android/gms/common/internal/ab;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/ab;->d(Lcom/google/android/gms/common/internal/ab;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ab;->a(Lcom/google/android/gms/common/internal/au;Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ah;->a:Lcom/google/android/gms/common/internal/ab;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ab;->e(Lcom/google/android/gms/common/internal/ab;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ah;->a:Lcom/google/android/gms/common/internal/ab;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ab;->e(Lcom/google/android/gms/common/internal/ab;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/r;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Legacy GmsClient received onReportAccountValidation callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
