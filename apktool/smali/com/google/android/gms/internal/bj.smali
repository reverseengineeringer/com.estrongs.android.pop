.class public Lcom/google/android/gms/internal/bj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/internal/aj;)Lcom/google/android/gms/internal/bh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/internal/pj",
            "<",
            "Lcom/google/android/gms/internal/bh;",
            ">;",
            "Lcom/google/android/gms/internal/aj;",
            ")",
            "Lcom/google/android/gms/internal/bh;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/bm;

    invoke-direct {v0, p1, p2, p4}, Lcom/google/android/gms/internal/bm;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/aj;)V

    new-instance v1, Lcom/google/android/gms/internal/bl;

    invoke-direct {v1, p0, p3, v0}, Lcom/google/android/gms/internal/bl;-><init>(Lcom/google/android/gms/internal/bj;Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/internal/bh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bh;->a(Lcom/google/android/gms/internal/bi;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bj;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/internal/aj;)Lcom/google/android/gms/internal/bh;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/bj;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/internal/aj;)Lcom/google/android/gms/internal/bh;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/aj;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/aj;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/bh;",
            ">;"
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/internal/pj;

    invoke-direct {v4}, Lcom/google/android/gms/internal/pj;-><init>()V

    sget-object v7, Lcom/google/android/gms/internal/oe;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/bk;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/bk;-><init>(Lcom/google/android/gms/internal/bj;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/internal/aj;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v4
.end method
