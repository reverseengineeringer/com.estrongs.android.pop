.class public Lcom/google/android/gms/ads/internal/overlay/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/internal/qa;ILcom/google/android/gms/internal/dh;Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/ads/internal/overlay/r;
    .locals 7

    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/c;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/y;

    invoke-interface {p2}, Lcom/google/android/gms/internal/qa;->l()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/internal/qa;->getRequestId()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/y;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/dh;Lcom/google/android/gms/internal/dg;)V

    invoke-direct {v6, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/y;)V

    return-object v6
.end method
