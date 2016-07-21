.class abstract Lcom/google/android/gms/cast/m;
.super Lcom/google/android/gms/cast/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/cast/internal/b",
        "<",
        "Lcom/google/android/gms/cast/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/b;-><init>(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/c;
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/n;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/n;-><init>(Lcom/google/android/gms/cast/m;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/z;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/m;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/c;

    move-result-object v0

    return-object v0
.end method
