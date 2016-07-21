.class public Lcom/google/android/gms/internal/fa;
.super Lcom/google/android/gms/internal/eq;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/eq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fa;->a:Lcom/google/android/gms/ads/formats/i;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ef;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fa;->a:Lcom/google/android/gms/ads/formats/i;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fa;->b(Lcom/google/android/gms/internal/ef;)Lcom/google/android/gms/internal/ei;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/i;->a(Lcom/google/android/gms/ads/formats/h;)V

    return-void
.end method

.method b(Lcom/google/android/gms/internal/ef;)Lcom/google/android/gms/internal/ei;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ei;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ei;-><init>(Lcom/google/android/gms/internal/ef;)V

    return-object v0
.end method
