.class public Lcom/dianxinos/dxservice/core/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/dianxinos/dxservice/core/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/core/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/dianxinos/dxservice/core/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/DXStatService/stat/b;->a(Landroid/content/Context;)Lcom/dianxinos/DXStatService/stat/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/DXStatService/stat/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.DXCore"

    const-string v1, "The app is in silent period!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/dxservice/core/a;->c:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/dxservice/core/a;->c:Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/dxservice/core/a;
    .locals 2

    const-class v1, Lcom/dianxinos/dxservice/core/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/dxservice/core/a;->a:Lcom/dianxinos/dxservice/core/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/dxservice/core/a;

    invoke-direct {v0, p0}, Lcom/dianxinos/dxservice/core/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/dxservice/core/a;->a:Lcom/dianxinos/dxservice/core/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/dianxinos/dxservice/core/a;->a:Lcom/dianxinos/dxservice/core/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lcom/dianxinos/DXStatService/stat/d;->a(I)Z

    return-void
.end method

.method public a(Lcom/dianxinos/dxservice/stat/am;Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/dianxinos/dxservice/core/a;->c:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.DXCore"

    const-string v1, "The service is not start up!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/dianxinos/dxservice/stat/t;

    invoke-direct {v0, p1, p2}, Lcom/dianxinos/dxservice/stat/t;-><init>(Lcom/dianxinos/dxservice/stat/am;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/dianxinos/dxservice/core/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/dianxinos/dxservice/core/c;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/core/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dianxinos/dxservice/core/c;->a(Lcom/dianxinos/dxservice/stat/t;)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IIILjava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/dianxinos/dxservice/core/a;->c:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.DXCore"

    const-string v2, "The service is not start up!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.DXCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Please refer to api doc!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/dianxinos/dxservice/stat/n;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.DXCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Please refer to api doc!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-static {p3}, Lcom/dianxinos/dxservice/stat/p;->a(I)Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.DXCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid report policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Please refer to api doc!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-static {p4}, Lcom/dianxinos/dxservice/stat/q;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.DXCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Please refer to api doc!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    if-nez p5, :cond_7

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.DXCore"

    const-string v2, "Invalid value which should be required."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-static {p2, p5}, Lcom/dianxinos/dxservice/stat/o;->a(ILjava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Lcom/dianxinos/dxservice/stat/o;->a(I)Z

    move-result v1

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.DXCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid data type for data policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! Please refer to api doc!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/dianxinos/dxservice/core/a;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/dianxinos/dxservice/stat/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/dianxinos/dxservice/stat/t;

    const/4 v7, 0x0

    move v1, p3

    move v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/dianxinos/dxservice/stat/t;-><init>(IIILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dianxinos/dxservice/core/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/dianxinos/dxservice/core/c;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/core/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dianxinos/dxservice/core/c;->a(Lcom/dianxinos/dxservice/stat/t;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;IILjava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/dianxinos/dxservice/core/a;->a(Ljava/lang/String;IIILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/dianxinos/dxservice/core/a;->a(Ljava/lang/String;IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p2, p3}, Lcom/dianxinos/dxservice/a/c;->a(Ljava/lang/String;Ljava/lang/Number;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/dianxinos/dxservice/core/a;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 6

    const/4 v3, 0x1

    new-instance v0, Lcom/dianxinos/dxservice/stat/am;

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/dianxinos/dxservice/core/a;->b:Landroid/content/Context;

    const-string v5, "start"

    invoke-static {v4, v5}, Lcom/dianxinos/dxservice/stat/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/dianxinos/dxservice/stat/am;-><init>(IIILjava/lang/String;I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/dxservice/core/a;->a(Lcom/dianxinos/dxservice/stat/am;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 6

    const/4 v3, 0x1

    new-instance v0, Lcom/dianxinos/dxservice/stat/ao;

    iget-object v1, p0, Lcom/dianxinos/dxservice/core/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dianxinos/dxservice/stat/ao;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/dianxinos/dxservice/a/e;->a(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/dianxinos/dxservice/stat/am;

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/dianxinos/dxservice/core/a;->b:Landroid/content/Context;

    const-string v5, "alive"

    invoke-static {v4, v5}, Lcom/dianxinos/dxservice/stat/t;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/dianxinos/dxservice/stat/am;-><init>(IIILjava/lang/String;I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/dxservice/core/a;->a(Lcom/dianxinos/dxservice/stat/am;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
