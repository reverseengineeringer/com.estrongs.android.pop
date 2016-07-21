.class abstract Lcom/google/android/gms/internal/rq;
.super Lcom/google/android/gms/common/api/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/af",
        "<",
        "Lcom/google/android/gms/cast/t;",
        "Lcom/google/android/gms/internal/rt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/rm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/rm;Lcom/google/android/gms/common/api/n;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/rq;->b:Lcom/google/android/gms/internal/rm;

    invoke-static {p1}, Lcom/google/android/gms/internal/rm;->b(Lcom/google/android/gms/internal/rm;)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/af;-><init>(Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/t;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/rs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/rs;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/z;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/rq;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/t;

    move-result-object v0

    return-object v0
.end method
