.class public final Lcom/google/android/gms/internal/dq;
.super Lcom/google/android/gms/internal/do;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/ads/doubleclick/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/do;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dq;->a:Lcom/google/android/gms/ads/doubleclick/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/dk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->a:Lcom/google/android/gms/ads/doubleclick/c;

    new-instance v1, Lcom/google/android/gms/internal/dj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/dj;-><init>(Lcom/google/android/gms/internal/dk;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/doubleclick/c;->a(Lcom/google/android/gms/ads/doubleclick/b;)V

    return-void
.end method
