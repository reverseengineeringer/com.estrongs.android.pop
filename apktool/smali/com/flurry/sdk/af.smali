.class public Lcom/flurry/sdk/af;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/flurry/sdk/as;

.field private c:J

.field private d:J

.field private e:Lcom/flurry/sdk/al;

.field private f:J

.field private g:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/af$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/af;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/as;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/af;->b:Lcom/flurry/sdk/as;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/af;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/af;->d:J

    sget-object v0, Lcom/flurry/sdk/al;->a:Lcom/flurry/sdk/al;

    iput-object v0, p0, Lcom/flurry/sdk/af;->e:Lcom/flurry/sdk/al;

    iput-wide p3, p0, Lcom/flurry/sdk/af;->f:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/sdk/af;->g:J

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/af;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/af;->c:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)Lcom/flurry/sdk/al;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/af;->e:Lcom/flurry/sdk/al;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/af;Lcom/flurry/sdk/as;)Lcom/flurry/sdk/as;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/af;->b:Lcom/flurry/sdk/as;

    return-object p1
.end method

.method static synthetic a(Lcom/flurry/sdk/af;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/af;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/af;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/af;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/flurry/sdk/af;)Lcom/flurry/sdk/as;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/af;->b:Lcom/flurry/sdk/as;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/af;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/af;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/flurry/sdk/af;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/af;->f:J

    return-wide p1
.end method

.method static synthetic d(Lcom/flurry/sdk/af;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/af;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/flurry/sdk/af;J)J
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/af;->g:J

    return-wide p1
.end method

.method static synthetic e(Lcom/flurry/sdk/af;)Lcom/flurry/sdk/al;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/af;->e:Lcom/flurry/sdk/al;

    return-object v0
.end method

.method static synthetic f(Lcom/flurry/sdk/af;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/af;->f:J

    return-wide v0
.end method

.method static synthetic g(Lcom/flurry/sdk/af;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/af;->g:J

    return-wide v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/flurry/sdk/af;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/flurry/sdk/al;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/flurry/sdk/af;->e:Lcom/flurry/sdk/al;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcom/flurry/sdk/al;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/af;->e:Lcom/flurry/sdk/al;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/af;->f:J

    return-wide v0
.end method

.method public d()Z
    .locals 4

    iget-wide v0, p0, Lcom/flurry/sdk/af;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/sdk/af;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/af;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/af;->c:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/af;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/af;->b:Lcom/flurry/sdk/as;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", creation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/flurry/sdk/af;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/flurry/sdk/af;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/af;->e:Lcom/flurry/sdk/al;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expiration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/flurry/sdk/af;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/flurry/sdk/af;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
