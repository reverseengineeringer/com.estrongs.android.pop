.class public Lcom/google/android/gms/internal/ez;
.super Lcom/google/android/gms/internal/en;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/formats/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/en;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ez;->a:Lcom/google/android/gms/ads/formats/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/eb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->a:Lcom/google/android/gms/ads/formats/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ez;->b(Lcom/google/android/gms/internal/eb;)Lcom/google/android/gms/internal/ee;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/formats/g;->a(Lcom/google/android/gms/ads/formats/f;)V

    return-void
.end method

.method b(Lcom/google/android/gms/internal/eb;)Lcom/google/android/gms/internal/ee;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ee;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ee;-><init>(Lcom/google/android/gms/internal/eb;)V

    return-object v0
.end method
