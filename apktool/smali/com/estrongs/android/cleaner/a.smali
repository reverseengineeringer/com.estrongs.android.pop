.class public Lcom/estrongs/android/cleaner/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static d:Lcom/estrongs/android/cleaner/b/a;


# instance fields
.field private c:Lcom/estrongs/android/cleaner/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/cleaner/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/cleaner/a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/estrongs/android/cleaner/a;->b:I

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/cleaner/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cleaner"

    const-string v1, "init cleaner client..."

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/estrongs/android/cleaner/a;->b:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/estrongs/android/cleaner/a;->b:I

    :cond_0
    const-class v1, Lcom/estrongs/android/cleaner/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    if-nez v0, :cond_1

    const-string v0, "Cleaner"

    const-string v2, "create new context instance..."

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/estrongs/android/cleaner/a;->b:I

    invoke-static {v0}, Lcom/estrongs/android/cleaner/b/c;->a(I)Lcom/estrongs/android/cleaner/b/a;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/estrongs/android/cleaner/b;

    invoke-direct {v0}, Lcom/estrongs/android/cleaner/b;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/cleaner/a;->c:Lcom/estrongs/android/cleaner/b;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()J
    .locals 2

    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/b/a;->b()J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/cleaner/e;)V
    .locals 1

    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0, p0, p1}, Lcom/estrongs/android/cleaner/b/a;->a(Lcom/estrongs/android/cleaner/a;Lcom/estrongs/android/cleaner/e;)V

    goto :goto_0
.end method

.method public b()J
    .locals 2

    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/b/a;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/b/a;->d()J

    move-result-wide v0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    sget v1, Lcom/estrongs/android/cleaner/a;->b:I

    invoke-virtual {v0, p0, v1}, Lcom/estrongs/android/cleaner/b/a;->a(Lcom/estrongs/android/cleaner/a;I)V

    goto :goto_0
.end method

.method public e()V
    .locals 3

    const-class v1, Lcom/estrongs/android/cleaner/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/cleaner/b/a;->a(Lcom/estrongs/android/cleaner/a;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Cleaner"

    const-string v2, "mScanContext = null"

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/b/a;->g()V

    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/b/a;->f()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()V
    .locals 3

    const-class v1, Lcom/estrongs/android/cleaner/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/cleaner/b/a;->a(Lcom/estrongs/android/cleaner/a;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Cleaner"

    const-string v2, "mScanContext = null"

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/b/a;->h()V

    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/b/a;->f()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 3

    const-class v1, Lcom/estrongs/android/cleaner/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/a;->c:Lcom/estrongs/android/cleaner/b;

    sget-object v2, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v2}, Lcom/estrongs/android/cleaner/b/a;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/cleaner/b;->a(Ljava/util/List;)V

    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/cleaner/b/a;->a(Lcom/estrongs/android/cleaner/a;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Cleaner"

    const-string v2, "mScanContext = null"

    invoke-static {v0, v2}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/b/a;->i()V

    sget-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/b/a;->f()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/cleaner/a;->d:Lcom/estrongs/android/cleaner/b/a;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
