.class public Lcom/estrongs/android/pop/app/messagebox/z;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/estrongs/android/pop/app/messagebox/z;


# instance fields
.field private b:Lcom/estrongs/android/pop/app/messagebox/w;

.field private c:Landroid/content/Context;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/messagebox/ah;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/estrongs/android/pop/app/messagebox/ah;

.field private f:Lcom/estrongs/android/pop/app/messagebox/af;

.field private g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->g:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/z;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/messagebox/z;)Lcom/estrongs/android/pop/app/messagebox/ah;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->e:Lcom/estrongs/android/pop/app/messagebox/ah;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;JLjava/lang/String;)Lcom/estrongs/android/pop/app/messagebox/ah;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/ah;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/messagebox/ah;-><init>()V

    const-string v2, "msg_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->a:I

    iget v2, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->a:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/messagebox/z;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "not support type"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v2, "click_action"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->i:I

    iget v2, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->i:I

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/messagebox/z;->c(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "not support action"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->c:Ljava/lang/Long;

    iput-object p4, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->k:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->d:Ljava/lang/String;

    const-string v2, "icon_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->e:Ljava/lang/String;

    const-string v2, "click_params"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->f:Ljava/lang/String;

    iput v0, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->g:I

    const-string v2, "show_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->j:Z

    const-string v0, "guide_page_params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "guide_page_params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->l:Ljava/lang/String;

    :cond_3
    const-string v0, "hpmessage_icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->m:Ljava/lang/String;

    const-string v0, "hpmessage_button"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->o:Ljava/lang/String;

    const-string v0, "hpmessage_content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/pop/app/messagebox/ah;->n:Ljava/lang/String;

    return-object v1
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/messagebox/z;
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/z;->a:Lcom/estrongs/android/pop/app/messagebox/z;

    if-nez v0, :cond_1

    const-class v1, Lcom/estrongs/android/pop/app/messagebox/z;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/z;->a:Lcom/estrongs/android/pop/app/messagebox/z;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/messagebox/z;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/messagebox/z;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/app/messagebox/z;->a:Lcom/estrongs/android/pop/app/messagebox/z;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/z;->a:Lcom/estrongs/android/pop/app/messagebox/z;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/estrongs/android/pop/app/messagebox/ah;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/ag;->a(Landroid/content/Context;)Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/messagebox/z;)Lcom/estrongs/android/pop/app/messagebox/af;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->f:Lcom/estrongs/android/pop/app/messagebox/af;

    return-object v0
.end method

.method private b(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/w;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/messagebox/w;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->b:Lcom/estrongs/android/pop/app/messagebox/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    goto :goto_0
.end method

.method private e()V
    .locals 4

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/z;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/w;->a(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/z;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/messagebox/z;->g:Z

    const-string v1, "MessageBoxRecommend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get msg from db,count= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private f()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/w;->a(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/messagebox/ah;

    iget-object v4, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->o:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->n:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->m:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->c:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->e:Lcom/estrongs/android/pop/app/messagebox/ah;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->a:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/messagebox/aa;-><init>(Lcom/estrongs/android/pop/app/messagebox/z;)V

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/e;)Z

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->b:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/ac;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/messagebox/ac;-><init>(Lcom/estrongs/android/pop/app/messagebox/z;)V

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/e;)Z

    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/z;->d:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/messagebox/ah;

    iget v0, v0, Lcom/estrongs/android/pop/app/messagebox/ah;->a:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/z;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    if-nez v0, :cond_2

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/messagebox/w;->a()V

    goto :goto_1
.end method

.method public a(Lcom/estrongs/android/pop/app/messagebox/af;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/z;->f:Lcom/estrongs/android/pop/app/messagebox/af;

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/messagebox/ah;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/z;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/messagebox/ah;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/z;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/messagebox/z;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/android/pop/app/messagebox/w;->a(Landroid/content/Context;Lcom/estrongs/android/pop/app/messagebox/ah;)V

    goto :goto_0
.end method

.method protected a(Lorg/json/JSONArray;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/messagebox/z;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/z;->d:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/z;->e()V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/messagebox/z;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/estrongs/android/pop/app/messagebox/z;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/messagebox/z;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/z;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->f:Lcom/estrongs/android/pop/app/messagebox/af;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/app/messagebox/e;->a()Lcom/estrongs/android/pop/app/messagebox/e;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/messagebox/ae;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/messagebox/ae;-><init>(Lcom/estrongs/android/pop/app/messagebox/z;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/e;->c(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "datas"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/messagebox/z;->a(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()Lcom/estrongs/android/pop/app/messagebox/ah;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->e:Lcom/estrongs/android/pop/app/messagebox/ah;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/z;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/z;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->b:Lcom/estrongs/android/pop/app/messagebox/w;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/messagebox/z;->f()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->e:Lcom/estrongs/android/pop/app/messagebox/ah;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/messagebox/ah;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "to"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "contents"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {}, Lcom/estrongs/android/pop/app/messagebox/ao;->a()Z

    move-result v8

    move v2, v1

    :goto_1
    const/4 v9, 0x1

    if-ge v2, v9, :cond_1

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {p0, v9, v4, v5, v6}, Lcom/estrongs/android/pop/app/messagebox/z;->a(Lorg/json/JSONObject;JLjava/lang/String;)Lcom/estrongs/android/pop/app/messagebox/ah;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/estrongs/android/pop/app/messagebox/z;->a(Lcom/estrongs/android/pop/app/messagebox/ah;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_0

    iget-object v10, v9, Lcom/estrongs/android/pop/app/messagebox/ah;->e:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v9, v9, Lcom/estrongs/android/pop/app/messagebox/ah;->e:Ljava/lang/String;

    invoke-static {v9}, Lcom/estrongs/android/pop/app/messagebox/ai;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->e:Lcom/estrongs/android/pop/app/messagebox/ah;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/z;->f:Lcom/estrongs/android/pop/app/messagebox/af;

    return-void
.end method
