.class public final Lcom/google/android/gms/ads/internal/request/f;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;)Lcom/google/android/gms/internal/np;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/request/g;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/ads/internal/request/f;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;Lcom/google/android/gms/ads/internal/request/i;)Lcom/google/android/gms/internal/np;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;Lcom/google/android/gms/ads/internal/request/i;)Lcom/google/android/gms/internal/np;
    .locals 1

    invoke-interface {p3, p1}, Lcom/google/android/gms/ads/internal/request/i;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/f;->b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;)Lcom/google/android/gms/internal/np;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/f;->c(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;)Lcom/google/android/gms/internal/np;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;)Lcom/google/android/gms/internal/np;
    .locals 1

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/request/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/k;->g()Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;)Lcom/google/android/gms/internal/np;
    .locals 1

    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/m;->a()Lcom/google/android/gms/ads/internal/util/client/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/internal/request/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/h;)V

    goto :goto_0
.end method
