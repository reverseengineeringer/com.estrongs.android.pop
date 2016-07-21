.class public Lcom/flurry/sdk/lp;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:Z

.field private d:Z

.field private e:Lcom/flurry/sdk/ly;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/lp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/flurry/sdk/lp;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/lp;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/lp;->d:Z

    new-instance v0, Lcom/flurry/sdk/lp$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lp$1;-><init>(Lcom/flurry/sdk/lp;)V

    iput-object v0, p0, Lcom/flurry/sdk/lp;->e:Lcom/flurry/sdk/ly;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/lp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/lp;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/flurry/sdk/lp;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/lp;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/flurry/sdk/lp;)Lcom/flurry/sdk/ly;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/lp;->e:Lcom/flurry/sdk/ly;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/lp;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/lp;->b:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/lp;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/lp;->e:Lcom/flurry/sdk/ly;

    iget-wide v2, p0, Lcom/flurry/sdk/lp;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/js;->b(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/lp;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/flurry/sdk/lp;->b:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/lp;->c:Z

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/lp;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/lp;->e:Lcom/flurry/sdk/ly;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->c(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/lp;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
