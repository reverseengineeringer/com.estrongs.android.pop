.class public Lcom/estrongs/android/pop/app/unlock/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/pop/app/unlock/m;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/unlock/m;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/unlock/m;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/unlock/m;
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/unlock/m;->a:Lcom/estrongs/android/pop/app/unlock/m;

    if-nez v0, :cond_1

    const-class v1, Lcom/estrongs/android/pop/app/unlock/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/app/unlock/m;->a:Lcom/estrongs/android/pop/app/unlock/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/unlock/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/unlock/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/app/unlock/m;->a:Lcom/estrongs/android/pop/app/unlock/m;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/app/unlock/m;->a:Lcom/estrongs/android/pop/app/unlock/m;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/unlock/b;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/unlock/b;

    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v2

    iget-object v3, v0, Lcom/estrongs/android/pop/app/unlock/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/k/h;->a(Ljava/lang/String;)Lcom/estrongs/android/k/d;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "lock_id need regist in application"

    invoke-static {v0}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v3, v0, Lcom/estrongs/android/pop/app/unlock/b;->d:Z

    invoke-virtual {v2, v3, v6}, Lcom/estrongs/android/k/d;->a(ZZ)V

    iget-wide v4, v0, Lcom/estrongs/android/pop/app/unlock/b;->a:J

    invoke-virtual {v2, v4, v5, v6}, Lcom/estrongs/android/k/d;->a(JZ)V

    new-instance v3, Lcom/estrongs/android/k/f;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v3, v4}, Lcom/estrongs/android/k/f;-><init>(Ljava/util/HashMap;)V

    const-string v4, "data_id"

    iget-object v5, v0, Lcom/estrongs/android/pop/app/unlock/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "card_icon"

    iget-object v5, v0, Lcom/estrongs/android/pop/app/unlock/b;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "card_title"

    iget-object v5, v0, Lcom/estrongs/android/pop/app/unlock/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "card_msg"

    iget-object v5, v0, Lcom/estrongs/android/pop/app/unlock/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "card_result"

    iget-object v5, v0, Lcom/estrongs/android/pop/app/unlock/b;->h:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "card_button"

    iget-object v5, v0, Lcom/estrongs/android/pop/app/unlock/b;->i:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dialog_icon"

    iget-object v5, v0, Lcom/estrongs/android/pop/app/unlock/b;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dialog_title"

    iget-object v5, v0, Lcom/estrongs/android/pop/app/unlock/b;->k:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dialog_msg"

    iget-object v5, v0, Lcom/estrongs/android/pop/app/unlock/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/k/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Lcom/estrongs/android/k/d;->a(Lcom/estrongs/android/k/f;Z)V

    new-instance v3, Lcom/estrongs/android/k/g;

    invoke-direct {v3}, Lcom/estrongs/android/k/g;-><init>()V

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/unlock/b;->m:Z

    iput-boolean v0, v3, Lcom/estrongs/android/k/g;->a:Z

    invoke-virtual {v2, v3}, Lcom/estrongs/android/k/d;->a(Lcom/estrongs/android/k/g;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/unlock/m;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/unlock/m;->a(Ljava/util/List;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/unlock/m;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/unlock/m;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "datas"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/unlock/m;->a(Lorg/json/JSONArray;)V
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

.method private b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/unlock/b;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/b;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/unlock/b;-><init>()V

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "lock_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "to"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->a:J

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->b:Ljava/lang/String;

    const-string v4, "lock_activated"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->d:Z

    const-string v4, "card_icon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->e:Ljava/lang/String;

    const-string v4, "card_title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->f:Ljava/lang/String;

    const-string v4, "card_msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->g:Ljava/lang/String;

    const-string v4, "card_result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->h:Ljava/lang/String;

    const-string v4, "card_button"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->i:Ljava/lang/String;

    const-string v4, "dialog_icon"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->j:Ljava/lang/String;

    const-string v4, "dialog_title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->k:Ljava/lang/String;

    const-string v4, "dialog_msg"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/estrongs/android/pop/app/unlock/b;->l:Ljava/lang/String;

    const-string v4, "charging_unlock_dialog"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "charging_unlock_dialog"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/estrongs/android/pop/app/unlock/b;->m:Z

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_2
    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->c:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/n;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/unlock/n;-><init>(Lcom/estrongs/android/pop/app/unlock/m;)V

    invoke-static {v0, v1}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;Lcom/dianxinos/library/notify/e;)Z

    return-void
.end method

.method public b()V
    .locals 3

    sget-object v0, Lcom/estrongs/android/pop/app/messagebox/n;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/dianxinos/library/notify/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/messagebox/e;->a()Lcom/estrongs/android/pop/app/messagebox/e;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/unlock/p;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/unlock/p;-><init>(Lcom/estrongs/android/pop/app/unlock/m;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/messagebox/e;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
