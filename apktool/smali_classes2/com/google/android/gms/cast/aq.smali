.class Lcom/google/android/gms/cast/aq;
.super Lcom/google/android/gms/cast/az;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/n;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic e:Lcom/google/android/gms/cast/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/ak;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/n;JILorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/aq;->e:Lcom/google/android/gms/cast/ak;

    iput-object p3, p0, Lcom/google/android/gms/cast/aq;->a:Lcom/google/android/gms/common/api/n;

    iput-wide p4, p0, Lcom/google/android/gms/cast/aq;->b:J

    iput p6, p0, Lcom/google/android/gms/cast/aq;->c:I

    iput-object p7, p0, Lcom/google/android/gms/cast/aq;->d:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/az;-><init>(Lcom/google/android/gms/common/api/n;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/cast/internal/g;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/cast/aq;->e:Lcom/google/android/gms/cast/ak;

    invoke-static {v0}, Lcom/google/android/gms/cast/ak;->e(Lcom/google/android/gms/cast/ak;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/aq;->e:Lcom/google/android/gms/cast/ak;

    invoke-static {v0}, Lcom/google/android/gms/cast/ak;->f(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/aq;->a:Lcom/google/android/gms/common/api/n;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/ax;->a(Lcom/google/android/gms/common/api/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/cast/aq;->e:Lcom/google/android/gms/cast/ak;

    invoke-static {v0}, Lcom/google/android/gms/cast/ak;->g(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/internal/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/aq;->h:Lcom/google/android/gms/cast/internal/z;

    iget-wide v2, p0, Lcom/google/android/gms/cast/aq;->b:J

    iget v4, p0, Lcom/google/android/gms/cast/aq;->c:I

    iget-object v5, p0, Lcom/google/android/gms/cast/aq;->d:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/internal/x;->a(Lcom/google/android/gms/cast/internal/z;JILorg/json/JSONObject;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/cast/aq;->e:Lcom/google/android/gms/cast/ak;

    invoke-static {v0}, Lcom/google/android/gms/cast/ak;->f(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/ax;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/ax;->a(Lcom/google/android/gms/common/api/n;)V

    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/aq;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/as;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/aq;->a(Lcom/google/android/gms/common/api/z;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/cast/aq;->e:Lcom/google/android/gms/cast/ak;

    invoke-static {v0}, Lcom/google/android/gms/cast/ak;->f(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/ax;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/ax;->a(Lcom/google/android/gms/common/api/n;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/cast/aq;->e:Lcom/google/android/gms/cast/ak;

    invoke-static {v1}, Lcom/google/android/gms/cast/ak;->f(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/ax;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/ax;->a(Lcom/google/android/gms/common/api/n;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/h;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/cast/internal/g;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/aq;->a(Lcom/google/android/gms/cast/internal/g;)V

    return-void
.end method
