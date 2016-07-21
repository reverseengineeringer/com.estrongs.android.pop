.class abstract Lcom/google/android/gms/cast/az;
.super Lcom/google/android/gms/cast/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/cast/internal/b",
        "<",
        "Lcom/google/android/gms/cast/as;",
        ">;"
    }
.end annotation


# instance fields
.field h:Lcom/google/android/gms/cast/internal/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/n;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/internal/b;-><init>(Lcom/google/android/gms/common/api/n;)V

    new-instance v0, Lcom/google/android/gms/cast/ba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/ba;-><init>(Lcom/google/android/gms/cast/az;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/az;->h:Lcom/google/android/gms/cast/internal/z;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/as;
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/bb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/bb;-><init>(Lcom/google/android/gms/cast/az;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/z;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/az;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/as;

    move-result-object v0

    return-object v0
.end method
