.class public Lcom/estrongs/android/pop/app/e/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/pop/app/e/g;


# instance fields
.field private b:J

.field private c:J

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/e/g;->a:Lcom/estrongs/android/pop/app/e/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    iput-wide v10, p0, Lcom/estrongs/android/pop/app/e/g;->b:J

    iput-wide v10, p0, Lcom/estrongs/android/pop/app/e/g;->c:J

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/e/g;->b:J

    aget-wide v4, v0, v8

    aget-wide v6, v0, v9

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/e/g;->b:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/e/g;->c:J

    aget-wide v4, v0, v8

    const/4 v6, 0x1

    aget-wide v6, v0, v6

    sub-long/2addr v4, v6

    aget-wide v6, v0, v9

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/e/g;->c:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/e/g;->b:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_1

    iput v8, p0, Lcom/estrongs/android/pop/app/e/g;->d:I

    :goto_1
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/e/g;->c:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/e/g;->b:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/e/g;->d:I

    goto :goto_1
.end method

.method public static declared-synchronized a()Lcom/estrongs/android/pop/app/e/g;
    .locals 2

    const-class v1, Lcom/estrongs/android/pop/app/e/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/e/g;->a:Lcom/estrongs/android/pop/app/e/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/e/g;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/e/g;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/e/g;->a:Lcom/estrongs/android/pop/app/e/g;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/e/g;->a:Lcom/estrongs/android/pop/app/e/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/e/g;->d:I

    return v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/e/g;->b:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/e/g;->c:J

    return-wide v0
.end method
