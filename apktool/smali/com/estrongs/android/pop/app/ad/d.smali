.class Lcom/estrongs/android/pop/app/ad/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/e;


# instance fields
.field a:I

.field final synthetic b:J

.field final synthetic c:Lcom/duapps/ad/f;

.field final synthetic d:Lcom/estrongs/android/pop/app/ad/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ad/a;JLcom/duapps/ad/f;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ad/d;->d:Lcom/estrongs/android/pop/app/ad/a;

    iput-wide p2, p0, Lcom/estrongs/android/pop/app/ad/d;->b:J

    iput-object p4, p0, Lcom/estrongs/android/pop/app/ad/d;->c:Lcom/duapps/ad/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/ad/d;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/duapps/ad/f;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/d;->d:Lcom/estrongs/android/pop/app/ad/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a;->b(Lcom/estrongs/android/pop/app/ad/a;)Lcom/estrongs/android/pop/app/ad/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/d;->d:Lcom/estrongs/android/pop/app/ad/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ad/a;->b(Lcom/estrongs/android/pop/app/ad/a;)Lcom/estrongs/android/pop/app/ad/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/ad/i;->a()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "event"

    const-string v3, "click"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel"

    invoke-virtual {p1}, Lcom/duapps/ad/f;->k()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "mobula"

    invoke-virtual {v0, v2, v1}, Lcom/estrongs/android/j/c;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/f;Lcom/duapps/ad/b;)V
    .locals 6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad/d;->d:Lcom/estrongs/android/pop/app/ad/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/d;->d:Lcom/estrongs/android/pop/app/ad/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/ad/a;->a(Lcom/estrongs/android/pop/app/ad/a;Z)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ad/d;->b:J

    sub-long/2addr v0, v2

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "event"

    const-string v5, "loaded"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "time"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "err"

    invoke-virtual {p2}, Lcom/duapps/ad/b;->a()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mobula"

    invoke-virtual {v2, v0, v3}, Lcom/estrongs/android/j/c;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/duapps/ad/f;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/ad/d;->b:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/estrongs/android/pop/app/ad/d;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/estrongs/android/pop/app/ad/d;->a:I

    new-instance v2, Lcom/estrongs/android/pop/app/ad/j;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/estrongs/android/pop/app/ad/j;-><init>(Lcom/duapps/ad/f;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ad/d;->d:Lcom/estrongs/android/pop/app/ad/a;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/estrongs/android/pop/app/ad/d;->d:Lcom/estrongs/android/pop/app/ad/a;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/ad/a;->a(Lcom/estrongs/android/pop/app/ad/a;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v2, p0, Lcom/estrongs/android/pop/app/ad/d;->a:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/d;->c:Lcom/duapps/ad/f;

    invoke-virtual {v2}, Lcom/duapps/ad/f;->d()V

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "event"

    const-string v5, "loaded"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "time"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "channel"

    invoke-virtual {p1}, Lcom/duapps/ad/f;->k()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mobula"

    invoke-virtual {v2, v0, v3}, Lcom/estrongs/android/j/c;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/ad/d;->d:Lcom/estrongs/android/pop/app/ad/a;

    monitor-enter v2

    :try_start_3
    iget-object v3, p0, Lcom/estrongs/android/pop/app/ad/d;->d:Lcom/estrongs/android/pop/app/ad/a;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/estrongs/android/pop/app/ad/a;->a(Lcom/estrongs/android/pop/app/ad/a;Z)Z

    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
