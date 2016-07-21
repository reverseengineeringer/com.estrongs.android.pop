.class public Lcom/google/android/gms/location/places/e;
.super Lcom/google/android/gms/common/data/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/a",
        "<",
        "Lcom/google/android/gms/location/places/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/places/e;->b(I)Lcom/google/android/gms/location/places/d;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/android/gms/location/places/d;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/internal/g;

    iget-object v1, p0, Lcom/google/android/gms/location/places/e;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/location/places/internal/g;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method
