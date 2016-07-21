.class Lcom/google/android/gms/ads/internal/request/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/pt",
        "<",
        "Lcom/google/android/gms/internal/bt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/request/aa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/ab;->a:Lcom/google/android/gms/ads/internal/request/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/bt;)V
    .locals 2

    :try_start_0
    const-string v0, "AFMA_getAdapterLessMediationAd"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/ab;->a:Lcom/google/android/gms/ads/internal/request/aa;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/aa;->a:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/bt;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/request/y;->c()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/ab;->a:Lcom/google/android/gms/ads/internal/request/aa;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gb;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/bt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/request/ab;->a(Lcom/google/android/gms/internal/bt;)V

    return-void
.end method
