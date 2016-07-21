.class public abstract Lcom/google/android/gms/cast/internal/b;
.super Lcom/google/android/gms/common/api/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/z;",
        ">",
        "Lcom/google/android/gms/common/api/af",
        "<TR;",
        "Lcom/google/android/gms/cast/internal/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/n;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/cast/internal/v;->a:Lcom/google/android/gms/common/api/i;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/af;-><init>(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/b;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/b;->a(Lcom/google/android/gms/common/api/z;)V

    return-void
.end method
