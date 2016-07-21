.class public final Lcom/google/android/gms/common/internal/ak;
.super Lcom/google/android/gms/common/internal/ac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/ab",
        "<TT;>.com/google/android/gms/common/internal/ac;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/android/gms/common/internal/ab;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/ab;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ak;->e:Lcom/google/android/gms/common/internal/ab;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/ac;-><init>(Lcom/google/android/gms/common/internal/ab;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ak;->e:Lcom/google/android/gms/common/internal/ab;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ab;->a(Lcom/google/android/gms/common/internal/ab;)Lcom/google/android/gms/common/api/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/u;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ak;->e:Lcom/google/android/gms/common/internal/ab;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/ab;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected a()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ak;->e:Lcom/google/android/gms/common/internal/ab;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/ab;->a(Lcom/google/android/gms/common/internal/ab;)Lcom/google/android/gms/common/api/u;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->a:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/u;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method
