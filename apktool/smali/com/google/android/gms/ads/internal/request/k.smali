.class public final Lcom/google/android/gms/ads/internal/request/k;
.super Lcom/google/android/gms/ads/internal/request/j;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/j;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/k;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public d()Lcom/google/android/gms/ads/internal/request/r;
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/co;

    sget-object v0, Lcom/google/android/gms/internal/cz;->b:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/co;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/k;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/mf;->a()Lcom/google/android/gms/internal/mf;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/mg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/co;Lcom/google/android/gms/internal/mf;)Lcom/google/android/gms/internal/mg;

    move-result-object v0

    return-object v0
.end method
