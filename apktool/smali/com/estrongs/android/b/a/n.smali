.class Lcom/estrongs/android/b/a/n;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/b/a/h;

.field b:Lcom/estrongs/android/b/a/k;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/b/a/h;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/h;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    new-instance v0, Lcom/estrongs/android/b/a/k;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/k;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/b/a/n;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/b/a/n;->g()Z

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 11

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->bg()J

    move-result-wide v2

    const-string v0, "card_update_internal"

    const/16 v4, 0xc

    invoke-static {v0, v4}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const v4, 0x36ee80

    mul-int/2addr v0, v4

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/cards_update"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v5}, Lcom/estrongs/fs/util/j;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/b/a/n;->f()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    iget-object v0, v0, Lcom/estrongs/android/b/a/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/i;

    iget-boolean v4, v0, Lcom/estrongs/android/b/a/i;->b:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/b/a/n;->b(Lcom/estrongs/android/b/a/i;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v2, v2

    if-nez v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    if-eqz v0, :cond_c

    new-instance v6, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cards"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_8

    array-length v8, v7

    move v4, v1

    :goto_2
    if-ge v4, v8, :cond_8

    aget-object v9, v7, v4

    new-instance v10, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2, v10}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    :cond_7
    :goto_3
    if-nez v0, :cond_b

    :cond_8
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v6}, Lcom/estrongs/fs/util/j;->a(Ljava/io/File;)Z

    move-result v0

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    :cond_a
    :goto_4
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/ad;->k(J)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_5
    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    move v0, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_6
    invoke-static {v3}, Lcom/estrongs/fs/util/j;->a(Ljava/io/InputStream;)V

    throw v0

    :cond_b
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_c
    invoke-static {v5}, Lcom/estrongs/fs/util/j;->a(Ljava/io/File;)Z

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_5

    :cond_d
    move v0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method a()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/b/a/h;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/h;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    new-instance v0, Lcom/estrongs/android/b/a/k;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/k;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    invoke-virtual {p0}, Lcom/estrongs/android/b/a/n;->d()V

    invoke-virtual {p0}, Lcom/estrongs/android/b/a/n;->e()V

    return-void
.end method

.method a(Lcom/estrongs/android/b/a/i;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cards/cards_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/b/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/estrongs/fs/util/j;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "hash"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/i;->c:Ljava/lang/String;

    const-string v0, "cards"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/b/a/p;->a(Lorg/json/JSONObject;)Lcom/estrongs/android/b/a/p;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/estrongs/android/b/a/i;->a(Lcom/estrongs/android/b/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/b/a/h;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/h;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    new-instance v0, Lcom/estrongs/android/b/a/k;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/k;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    invoke-virtual {p0}, Lcom/estrongs/android/b/a/n;->d()V

    invoke-virtual {p0}, Lcom/estrongs/android/b/a/n;->c()V

    iget-object v0, p0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    iget-object v0, v0, Lcom/estrongs/android/b/a/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/i;

    iget-boolean v2, v0, Lcom/estrongs/android/b/a/i;->b:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/b/a/n;->a(Lcom/estrongs/android/b/a/i;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/h;->a()V

    return-void
.end method

.method b(Lcom/estrongs/android/b/a/i;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.estrongs.com/console/service/cards/?t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/b/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/b/a/i;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    iget-object v1, v1, Lcom/estrongs/android/b/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cards_update/cards_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/estrongs/android/b/a/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/b/a/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 15

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/b/a/n;->e()V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/cards/lists"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/estrongs/fs/util/j;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    const-string v4, "hash"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/estrongs/android/b/a/k;->a:Ljava/lang/String;

    const-string v0, "content"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "types"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    move v4, v1

    :goto_0
    if-ge v4, v7, :cond_3

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "hasCards"

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    iget-object v0, v0, Lcom/estrongs/android/b/a/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/b/a/i;

    invoke-direct {v0, v8, v2}, Lcom/estrongs/android/b/a/i;-><init>(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    iget-object v2, v2, Lcom/estrongs/android/b/a/h;->a:Ljava/util/HashMap;

    iget-object v8, v0, Lcom/estrongs/android/b/a/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    iput-boolean v2, v0, Lcom/estrongs/android/b/a/i;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    const-string v0, "lists"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v3, v1

    :goto_3
    if-ge v3, v5, :cond_2

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "items"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    new-instance v7, Lcom/estrongs/android/b/a/j;

    invoke-direct {v7, v2}, Lcom/estrongs/android/b/a/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    move v2, v1

    :goto_4
    if-ge v2, v8, :cond_5

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v10, v0, [Lcom/estrongs/android/b/a/a;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    move v0, v1

    :goto_5
    if-ge v0, v11, :cond_4

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "type"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "key"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Lcom/estrongs/android/b/a/a;

    invoke-direct {v14, v13, v12}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {v7, v10}, Lcom/estrongs/android/b/a/j;->a([Lcom/estrongs/android/b/a/a;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    invoke-virtual {v0, v7}, Lcom/estrongs/android/b/a/k;->a(Lcom/estrongs/android/b/a/j;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3
.end method

.method d()V
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    new-instance v1, Lcom/estrongs/android/b/a/i;

    const-string v2, "ad"

    invoke-direct {v1, v2, v9}, Lcom/estrongs/android/b/a/i;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/h;->a(Lcom/estrongs/android/b/a/i;)V

    new-instance v7, Lcom/estrongs/android/b/a/i;

    const-string v0, "rate"

    invoke-direct {v7, v0, v9}, Lcom/estrongs/android/b/a/i;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/estrongs/android/b/a/a/e;

    const-string v1, "cardRate"

    const v2, 0x7f0801e2

    const v3, 0x7f0801e1

    const v4, 0x7f0801e0

    const v5, 0x7f020225

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/b/a/a/e;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/estrongs/android/b/a/i;->a(Lcom/estrongs/android/b/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    invoke-virtual {v0, v7}, Lcom/estrongs/android/b/a/h;->a(Lcom/estrongs/android/b/a/i;)V

    new-instance v8, Lcom/estrongs/android/b/a/i;

    const-string v0, "function"

    invoke-direct {v8, v0, v10}, Lcom/estrongs/android/b/a/i;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/estrongs/android/b/a/a/c;

    const-string v1, "cloud"

    const v2, 0x7f08018d

    const v3, 0x7f08018c

    const v4, 0x7f08018b

    const v5, 0x7f020232

    const v6, 0x7f02021f

    const-string v7, "page@net://"

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/c;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/estrongs/android/b/a/i;->a(Lcom/estrongs/android/b/a/a;)V

    new-instance v0, Lcom/estrongs/android/b/a/a/c;

    const-string v1, "music"

    const v2, 0x7f08012e

    const v3, 0x7f080190

    const v4, 0x7f08018f

    const v5, 0x7f02023d

    const-string v7, "intent@com.estrongs.android.pop.view.FileExplorerActivity?action=open_music_player"

    move v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/c;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/estrongs/android/b/a/i;->a(Lcom/estrongs/android/b/a/a;)V

    new-instance v0, Lcom/estrongs/android/b/a/a/c;

    const-string v1, "app"

    const v2, 0x7f080109

    const v3, 0x7f08018a

    const v4, 0x7f080189

    const v5, 0x7f0201f4

    const-string v7, "page@app://user"

    move v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/c;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/estrongs/android/b/a/i;->a(Lcom/estrongs/android/b/a/a;)V

    new-instance v0, Lcom/estrongs/android/b/a/a/c;

    const-string v1, "sdanalyst"

    const v2, 0x7f080285

    const v3, 0x7f080192

    const v4, 0x7f080191

    const v5, 0x7f020216

    const-string v7, "intent@com.estrongs.android.SHOW_DISK_USAGE"

    move v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/b/a/a/c;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/estrongs/android/b/a/i;->a(Lcom/estrongs/android/b/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    invoke-virtual {v0, v8}, Lcom/estrongs/android/b/a/h;->a(Lcom/estrongs/android/b/a/i;)V

    new-instance v11, Lcom/estrongs/android/b/a/i;

    const-string v0, "recommend"

    invoke-direct {v11, v0, v10}, Lcom/estrongs/android/b/a/i;-><init>(Ljava/lang/String;Z)V

    new-instance v0, Lcom/estrongs/android/b/a/a/f;

    const-string v1, "com.estrongs.locker"

    const v2, 0x7f080108

    const v3, 0x7f0801e3

    const v4, 0x7f0201f2

    const v5, 0x7f02021e

    const v6, 0x7f0801e4

    const/4 v7, 0x0

    const-string v8, "com.estrongs.locker"

    const-string v9, "intent@applocker"

    invoke-direct/range {v0 .. v10}, Lcom/estrongs/android/b/a/a/f;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v0}, Lcom/estrongs/android/b/a/i;->a(Lcom/estrongs/android/b/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    invoke-virtual {v0, v11}, Lcom/estrongs/android/b/a/h;->a(Lcom/estrongs/android/b/a/i;)V

    return-void
.end method

.method e()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    iput-object v7, v0, Lcom/estrongs/android/b/a/k;->a:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/b/a/j;

    const-string v1, "default-clean"

    invoke-direct {v0, v1}, Lcom/estrongs/android/b/a/j;-><init>(Ljava/lang/String;)V

    new-array v1, v6, [Lcom/estrongs/android/b/a/a;

    new-instance v2, Lcom/estrongs/android/b/a/a;

    const-string v3, "rate"

    const-string v4, "cardRate"

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/j;->a([Lcom/estrongs/android/b/a/a;)V

    new-array v1, v6, [Lcom/estrongs/android/b/a/a;

    new-instance v2, Lcom/estrongs/android/b/a/a;

    const-string v3, "recommend"

    invoke-direct {v2, v3, v7}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/j;->a([Lcom/estrongs/android/b/a/a;)V

    new-array v1, v6, [Lcom/estrongs/android/b/a/a;

    new-instance v2, Lcom/estrongs/android/b/a/a;

    const-string v3, "function"

    invoke-direct {v2, v3, v7}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/j;->a([Lcom/estrongs/android/b/a/a;)V

    new-array v1, v6, [Lcom/estrongs/android/b/a/a;

    new-instance v2, Lcom/estrongs/android/b/a/a;

    const-string v3, "function"

    invoke-direct {v2, v3, v7}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/j;->a([Lcom/estrongs/android/b/a/a;)V

    new-array v1, v6, [Lcom/estrongs/android/b/a/a;

    new-instance v2, Lcom/estrongs/android/b/a/a;

    const-string v3, "function"

    invoke-direct {v2, v3, v7}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/j;->a([Lcom/estrongs/android/b/a/a;)V

    new-array v1, v6, [Lcom/estrongs/android/b/a/a;

    new-instance v2, Lcom/estrongs/android/b/a/a;

    const-string v3, "function"

    invoke-direct {v2, v3, v7}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/j;->a([Lcom/estrongs/android/b/a/a;)V

    iget-object v1, p0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/b/a/k;->a(Lcom/estrongs/android/b/a/j;)V

    return-void
.end method

.method f()Z
    .locals 3

    const-string v0, "http://www.estrongs.com/console/service/cards/?t=-"

    iget-object v1, p0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    iget-object v1, v1, Lcom/estrongs/android/b/a/k;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    iget-object v1, v1, Lcom/estrongs/android/b/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cards_update/lists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/b/a/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
