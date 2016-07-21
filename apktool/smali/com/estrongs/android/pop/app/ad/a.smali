.class public Lcom/estrongs/android/pop/app/ad/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/estrongs/android/pop/app/ad/a;


# instance fields
.field a:Lcom/duapps/ad/f;

.field b:Z

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/ad/j;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Lcom/estrongs/android/pop/app/ad/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/ad/a;->c:Lcom/estrongs/android/pop/app/ad/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/ad/a;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ad/a;->e:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ad/a;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ad/a;->a:Lcom/duapps/ad/f;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ad/a;->g:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/ad/a;->b:Z

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/app/ad/a;
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/ad/a;->c:Lcom/estrongs/android/pop/app/ad/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/estrongs/android/pop/app/ad/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/ad/a;->c:Lcom/estrongs/android/pop/app/ad/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/ad/a;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/ad/a;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/ad/a;->c:Lcom/estrongs/android/pop/app/ad/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/app/ad/a;->c:Lcom/estrongs/android/pop/app/ad/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ad/a;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ad/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/ad/a;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/ad/a;)Lcom/estrongs/android/pop/app/ad/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a;->h:Lcom/estrongs/android/pop/app/ad/i;

    return-object v0
.end method

.method private f()Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/ad/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ad/j;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iput-object v1, p0, Lcom/estrongs/android/pop/app/ad/a;->e:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/ad/a;->d:I

    if-nez v0, :cond_0

    const-string v0, "1012950322070324_1111107142254641"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/ad/a;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "1012950322070324_1111114858920536"

    goto :goto_0

    :cond_1
    const-string v0, "1012950322070324_1108637082501647"

    goto :goto_0
.end method

.method private i()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/ad/f;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ad/f;-><init>(Lcom/estrongs/android/pop/app/ad/a;)V

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/FexApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/ad/g;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ad/g;-><init>(Lcom/estrongs/android/pop/app/ad/a;)V

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/FexApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ad/a;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ad/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ad/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ad/a;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v0

    :try_start_3
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "event"

    const-string v5, "fill"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "mobula"

    invoke-virtual {v2, v4, v3}, Lcom/estrongs/android/j/c;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    new-instance v2, Lcom/duapps/ad/f;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v3

    const/16 v4, 0x272f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/duapps/ad/f;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v2}, Lcom/duapps/ad/f;->a()V

    new-instance v3, Lcom/estrongs/android/pop/app/ad/d;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/estrongs/android/pop/app/ad/d;-><init>(Lcom/estrongs/android/pop/app/ad/a;JLcom/duapps/ad/f;)V

    invoke-virtual {v2, v3}, Lcom/duapps/ad/f;->a(Lcom/duapps/ad/e;)V

    invoke-static {}, Lcom/estrongs/android/util/bk;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ad/e;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/ad/e;-><init>(Lcom/estrongs/android/pop/app/ad/a;Lcom/duapps/ad/f;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "prod"

    invoke-static {v0}, Lcom/duapps/ad/base/DuAdNetwork;->a(Ljava/lang/String;)V

    const-string v0, "facebook_request_policy"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/ad/a;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"native\":[{\"pid\":\"10031\",\"fbids\":[\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ad/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"amid\": \"ca-app-pub-5262205102114431/2857617507\"},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{\"pid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2a5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"fbids\":[\"1012950322070324_1204316696267018\"]},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{\"pid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2860

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"fbids\":[\"xxxxxxxxxxxxxxxx\"]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],\"offerwall\": [],\"list\": ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{\"pid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2dc6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"fbids\": \"\",\"defPri\":\"download\"}]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/duapps/ad/base/DuAdNetwork;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ad/a;->i()V

    new-instance v0, Lcom/estrongs/android/pop/app/ad/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ad/b;-><init>(Lcom/estrongs/android/pop/app/ad/a;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ad/b;->start()V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/ad/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ad/a;->h:Lcom/estrongs/android/pop/app/ad/i;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/ad/j;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ad/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "cause"

    const-string v2, "ignore"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/ad/a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/ad/a;->g:Z

    new-instance v0, Lcom/estrongs/android/pop/app/ad/c;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/app/ad/c;-><init>(Lcom/estrongs/android/pop/app/ad/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ad/c;->start()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ai;->n()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/estrongs/android/i/a;->c:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-static {v1, v4}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const v4, 0xea60

    mul-int/2addr v1, v4

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/estrongs/android/pop/ai;->d(J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/ad/j;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ad/a;->g()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a;->e:Ljava/util/ArrayList;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ad/a;->g()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Lcom/estrongs/android/pop/app/ad/j;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ad/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ad/a;->g()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ad/a;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/ad/j;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ad/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
