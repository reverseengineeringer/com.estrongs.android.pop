.class Lcom/google/android/gms/cast/ap;
.super Lcom/google/android/gms/cast/az;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/n;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/google/android/gms/cast/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/ak;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/n;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/ap;->c:Lcom/google/android/gms/cast/ak;

    iput-object p3, p0, Lcom/google/android/gms/cast/ap;->a:Lcom/google/android/gms/common/api/n;

    iput-object p4, p0, Lcom/google/android/gms/cast/ap;->b:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/az;-><init>(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/cast/internal/g;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/ap;->c:Lcom/google/android/gms/cast/ak;

    invoke-static {v0}, Lcom/google/android/gms/cast/ak;->e(Lcom/google/android/gms/cast/ak;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/ap;->c:Lcom/google/android/gms/cast/ak;

    invoke-static {v0}, Lcom/google/android/gms/cast/ak;->f(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/ax;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/ap;->a:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/ax;->a(Lcom/google/android/gms/common/api/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/cast/ap;->c:Lcom/google/android/gms/cast/ak;

    invoke-static {v0}, Lcom/google/android/gms/cast/ak;->g(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/internal/x;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/ap;->h:Lcom/google/android/gms/cast/internal/z;

    iget-object v3, p0, Lcom/google/android/gms/cast/ap;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/cast/internal/x;->c(Lcom/google/android/gms/cast/internal/z;Lorg/json/JSONObject;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/cast/ap;->c:Lcom/google/android/gms/cast/ak;

    invoke-static {v0}, Lcom/google/android/gms/cast/ak;->f(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/ax;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/ax;->a(Lcom/google/android/gms/common/api/n;)V

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x834

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/ap;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/as;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/ap;->a(Lcom/google/android/gms/common/api/z;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/cast/ap;->c:Lcom/google/android/gms/cast/ak;

    invoke-static {v0}, Lcom/google/android/gms/cast/ak;->f(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/ax;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/ax;->a(Lcom/google/android/gms/common/api/n;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/cast/ap;->c:Lcom/google/android/gms/cast/ak;

    invoke-static {v2}, Lcom/google/android/gms/cast/ak;->f(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/ax;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/ax;->a(Lcom/google/android/gms/common/api/n;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/internal/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/ap;->a(Lcom/google/android/gms/cast/internal/g;)V

    return-void
.end method
