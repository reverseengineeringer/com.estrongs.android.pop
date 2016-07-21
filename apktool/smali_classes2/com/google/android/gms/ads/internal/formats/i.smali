.class Lcom/google/android/gms/ads/internal/formats/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fq;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/formats/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/i;->a:Lcom/google/android/gms/ads/internal/formats/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/qa;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qa;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i;->a:Lcom/google/android/gms/ads/internal/formats/h;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/h;->d(Lcom/google/android/gms/ads/internal/formats/h;)Lcom/google/android/gms/internal/qa;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/j;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/ads/internal/formats/j;-><init>(Lcom/google/android/gms/ads/internal/formats/i;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qb;->a(Lcom/google/android/gms/internal/qd;)V

    const-string v0, "overlayHtml"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/i;->a:Lcom/google/android/gms/ads/internal/formats/h;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/formats/h;->d(Lcom/google/android/gms/ads/internal/formats/h;)Lcom/google/android/gms/internal/qa;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/qa;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
