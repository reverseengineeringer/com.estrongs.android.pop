.class Lcom/duapps/ad/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/formats/i;


# instance fields
.field final synthetic a:Lcom/duapps/ad/a/f;

.field final synthetic b:Lcom/duapps/ad/a/a;


# direct methods
.method constructor <init>(Lcom/duapps/ad/a/a;Lcom/duapps/ad/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/a/c;->b:Lcom/duapps/ad/a/a;

    iput-object p2, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/formats/h;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/a/c;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->a(Lcom/duapps/ad/a/a;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "AdmobCacheManager"

    const-string v2, "AdmobCacheManager get NativeContentAd"

    invoke-static {v0, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/f;

    new-instance v2, Lcom/duapps/ad/a/e;

    invoke-direct {v2, p1}, Lcom/duapps/ad/a/e;-><init>(Lcom/google/android/gms/ads/formats/h;)V

    invoke-virtual {v0, v2}, Lcom/duapps/ad/a/f;->a(Lcom/duapps/ad/a/e;)V

    iget-object v0, p0, Lcom/duapps/ad/a/c;->b:Lcom/duapps/ad/a/a;

    invoke-static {v0}, Lcom/duapps/ad/a/a;->a(Lcom/duapps/ad/a/a;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/duapps/ad/a/c;->a:Lcom/duapps/ad/a/f;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
