.class public Lcom/google/android/gms/cast/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/l;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/cast/internal/x;

.field private final c:Lcom/google/android/gms/cast/ax;

.field private d:Lcom/google/android/gms/cast/au;

.field private e:Lcom/google/android/gms/cast/av;

.field private f:Lcom/google/android/gms/cast/at;

.field private g:Lcom/google/android/gms/cast/aw;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/ak;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/cast/ax;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/ax;-><init>(Lcom/google/android/gms/cast/ak;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/ak;->c:Lcom/google/android/gms/cast/ax;

    new-instance v0, Lcom/google/android/gms/cast/al;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/al;-><init>(Lcom/google/android/gms/cast/ak;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/ak;->b:Lcom/google/android/gms/cast/internal/x;

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->b:Lcom/google/android/gms/cast/internal/x;

    iget-object v1, p0, Lcom/google/android/gms/cast/ak;->c:Lcom/google/android/gms/cast/ax;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/x;->a(Lcom/google/android/gms/cast/internal/y;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/ak;->f()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/cast/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/ak;->g()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/cast/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/ak;->h()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/cast/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/ak;->i()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/cast/ak;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/ax;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->c:Lcom/google/android/gms/cast/ax;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->g:Lcom/google/android/gms/cast/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->g:Lcom/google/android/gms/cast/aw;

    invoke-interface {v0}, Lcom/google/android/gms/cast/aw;->onStatusUpdated()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/google/android/gms/cast/ak;)Lcom/google/android/gms/cast/internal/x;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->b:Lcom/google/android/gms/cast/internal/x;

    return-object v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->f:Lcom/google/android/gms/cast/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->f:Lcom/google/android/gms/cast/at;

    invoke-interface {v0}, Lcom/google/android/gms/cast/at;->onMetadataUpdated()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->e:Lcom/google/android/gms/cast/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->e:Lcom/google/android/gms/cast/av;

    invoke-interface {v0}, Lcom/google/android/gms/cast/av;->a()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->d:Lcom/google/android/gms/cast/au;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->d:Lcom/google/android/gms/cast/au;

    invoke-interface {v0}, Lcom/google/android/gms/cast/au;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/cast/ak;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->b:Lcom/google/android/gms/cast/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/x;->h()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/as;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/ak;->a(Lcom/google/android/gms/common/api/n;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;J)Lcom/google/android/gms/common/api/w;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "J)",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/as;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/ak;->a(Lcom/google/android/gms/common/api/n;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/w;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "JI",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/as;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/aq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/cast/aq;-><init>(Lcom/google/android/gms/cast/ak;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/n;JILorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/cast/aa;Z)Lcom/google/android/gms/common/api/w;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lcom/google/android/gms/cast/aa;",
            "Z)",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/as;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/cast/ak;->a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/cast/aa;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/cast/aa;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/w;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lcom/google/android/gms/cast/aa;",
            "ZJ[J",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/as;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/am;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/cast/am;-><init>(Lcom/google/android/gms/cast/ak;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/cast/aa;ZJ[JLorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/as;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/an;

    invoke-direct {v0, p0, p1, p1, p2}, Lcom/google/android/gms/cast/an;-><init>(Lcom/google/android/gms/cast/ak;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/n;Lorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->b:Lcom/google/android/gms/cast/internal/x;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/cast/internal/x;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/cast/at;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/ak;->f:Lcom/google/android/gms/cast/at;

    return-void
.end method

.method public a(Lcom/google/android/gms/cast/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/ak;->g:Lcom/google/android/gms/cast/aw;

    return-void
.end method

.method public b()J
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/cast/ak;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->b:Lcom/google/android/gms/cast/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/x;->i()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/as;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/ak;->b(Lcom/google/android/gms/common/api/n;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/w;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/n;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/as;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/ao;

    invoke-direct {v0, p0, p1, p1, p2}, Lcom/google/android/gms/cast/ao;-><init>(Lcom/google/android/gms/cast/ak;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/n;Lorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/cast/ah;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/cast/ak;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->b:Lcom/google/android/gms/cast/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/x;->j()Lcom/google/android/gms/cast/ah;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/as;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/ak;->c(Lcom/google/android/gms/common/api/n;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/w;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/n;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/as;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/ap;

    invoke-direct {v0, p0, p1, p1, p2}, Lcom/google/android/gms/cast/ap;-><init>(Lcom/google/android/gms/cast/ak;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/n;Lorg/json/JSONObject;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/gms/cast/aa;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/cast/ak;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->b:Lcom/google/android/gms/cast/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/x;->k()Lcom/google/android/gms/cast/aa;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Lcom/google/android/gms/common/api/n;)Lcom/google/android/gms/common/api/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            ")",
            "Lcom/google/android/gms/common/api/w",
            "<",
            "Lcom/google/android/gms/cast/as;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/ar;

    invoke-direct {v0, p0, p1, p1}, Lcom/google/android/gms/cast/ar;-><init>(Lcom/google/android/gms/cast/ak;Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/common/api/n;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/n;->b(Lcom/google/android/gms/common/api/af;)Lcom/google/android/gms/common/api/af;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ak;->b:Lcom/google/android/gms/cast/internal/x;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/x;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
