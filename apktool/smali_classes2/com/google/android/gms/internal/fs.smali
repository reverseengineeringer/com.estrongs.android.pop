.class Lcom/google/android/gms/internal/fs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/android/gms/internal/qa;

.field final synthetic c:Lcom/google/android/gms/internal/fr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fr;Ljava/util/Map;Lcom/google/android/gms/internal/qa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fs;->c:Lcom/google/android/gms/internal/fr;

    iput-object p2, p0, Lcom/google/android/gms/internal/fs;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/fs;->b:Lcom/google/android/gms/internal/qa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "Received Http request."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fs;->a:Ljava/util/Map;

    const-string v1, "http_request"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/fs;->c:Lcom/google/android/gms/internal/fr;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fr;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Response should not be null."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/oe;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ft;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ft;-><init>(Lcom/google/android/gms/internal/fs;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
