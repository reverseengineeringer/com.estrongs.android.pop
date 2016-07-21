.class public Lcom/estrongs/android/pop/app/analysis/z;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/estrongs/android/pop/app/analysis/z;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/analysis/y;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/analysis/z;->b:Lcom/estrongs/android/pop/app/analysis/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/z;->a:Ljava/util/Map;

    const-string v0, "sdcard_top_view"

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/z;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/app/analysis/z;
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/analysis/z;->b:Lcom/estrongs/android/pop/app/analysis/z;

    if-nez v0, :cond_1

    const-class v1, Lcom/estrongs/android/pop/app/analysis/z;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/analysis/z;->b:Lcom/estrongs/android/pop/app/analysis/z;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/z;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/analysis/z;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/analysis/z;->b:Lcom/estrongs/android/pop/app/analysis/z;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/app/analysis/z;->b:Lcom/estrongs/android/pop/app/analysis/z;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/aa;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/analysis/aa;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/z;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()V
    .locals 6

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    mul-long/2addr v0, v2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v2

    const-string v3, "sdcard_available_memory"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "sdcard_topview_show_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static c()V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    const-string v1, "sdcard_topview_show_date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string v1, "sdcard_topview_show_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v1, "sdcard_available_memory"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/ai;->a(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v1

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    const/4 v4, 0x2

    aget-wide v4, v1, v4

    mul-long/2addr v2, v4

    const-string v1, "sdcard_available_memory"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/ai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/pop/app/analysis/y;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/z;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/y;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/app/analysis/y;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/y;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/analysis/z;->b:Lcom/estrongs/android/pop/app/analysis/z;

    return-void
.end method
