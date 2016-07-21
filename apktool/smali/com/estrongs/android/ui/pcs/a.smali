.class public Lcom/estrongs/android/ui/pcs/a;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/estrongs/android/ui/pcs/b;

.field static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/pcs/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/estrongs/android/ui/pcs/b;
    .locals 6

    const-wide/16 v4, 0x0

    sget-object v1, Lcom/estrongs/android/ui/pcs/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    iget-wide v2, v0, Lcom/estrongs/android/ui/pcs/b;->c:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_2
    new-instance v0, Lcom/estrongs/android/ui/pcs/b;

    invoke-direct {v0}, Lcom/estrongs/android/ui/pcs/b;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    sget-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    iput-object p0, v0, Lcom/estrongs/android/ui/pcs/b;->a:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/an;->b()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/pcs/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->k(Ljava/lang/String;)[J

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    iput-wide v4, v2, Lcom/estrongs/android/ui/pcs/b;->b:J

    sget-object v2, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    iput-wide v4, v2, Lcom/estrongs/android/ui/pcs/b;->c:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    sget-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/ui/pcs/b;->b:J

    sget-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/ui/pcs/b;->c:J

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/ui/pcs/b;->b:J

    sget-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/ui/pcs/b;->c:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static a()Z
    .locals 4

    sget-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/pcs/b;

    iget-wide v0, v0, Lcom/estrongs/android/ui/pcs/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
