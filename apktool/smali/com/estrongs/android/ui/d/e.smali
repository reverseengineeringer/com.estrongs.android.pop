.class public Lcom/estrongs/android/ui/d/e;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/d/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    return-void
.end method

.method public static a()I
    .locals 2

    sget-object v1, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/estrongs/android/ui/d/e;->a:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    const/16 v2, 0xb

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v3, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v4

    move v1, v0

    :goto_1
    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/d/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/am;->G(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-static {v5}, Lcom/estrongs/android/util/am;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/estrongs/android/util/am;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {v0, p0}, Lcom/estrongs/android/ui/d/d;->a(Ljava/lang/String;)V

    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_4

    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/ui/d/d;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/d/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/d/d;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/ui/d/d;->a(Ljava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    goto :goto_0
.end method

.method public static a(I)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    sput p0, Lcom/estrongs/android/ui/d/e;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    sget-object v2, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/d/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/d;->a()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "key_window_path"

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "cached_windows"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_windows"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method public static a(Lcom/estrongs/android/ui/d/d;)V
    .locals 2

    :try_start_0
    sget-object v1, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/estrongs/android/ui/d/d;I)V
    .locals 2

    :try_start_0
    sget-object v1, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0, p1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static b(Lcom/estrongs/android/ui/d/d;)I
    .locals 3

    sget-object v1, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_0

    monitor-exit v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    const/4 v0, -0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Lcom/estrongs/android/ui/d/d;
    .locals 3

    sget-object v1, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    sget v2, Lcom/estrongs/android/ui/d/e;->a:I

    invoke-static {v0, v2}, Lcom/estrongs/android/util/bd;->a(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    sget v2, Lcom/estrongs/android/ui/d/e;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/d/d;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 7

    sget-object v1, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->M()Ljava/util/LinkedList;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    new-instance v2, Lcom/estrongs/android/ui/d/d;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/estrongs/android/ui/d/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "#home#"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v0, "market"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/ad;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    sget-boolean v5, Lcom/estrongs/android/pop/z;->n:Z

    if-eqz v5, :cond_4

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v5, 0x1

    if-gt v0, v5, :cond_2

    const-string v0, "/sdcard"

    :cond_4
    sget-object v5, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    new-instance v6, Lcom/estrongs/android/ui/d/d;

    invoke-direct {v6, v0}, Lcom/estrongs/android/ui/d/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-gez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_4

    sget-object v3, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p0, :cond_4

    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/d/d;

    sget v3, Lcom/estrongs/android/ui/d/e;->a:I

    if-le p0, v3, :cond_1

    sget v3, Lcom/estrongs/android/ui/d/e;->a:I

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v4

    if-ne v3, v4, :cond_2

    :cond_1
    sget v3, Lcom/estrongs/android/ui/d/e;->a:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/estrongs/android/ui/d/e;->a:I

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/d;->c()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/d;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c()I
    .locals 2

    sget-object v1, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c(I)Lcom/estrongs/android/ui/d/d;
    .locals 2

    sget-object v1, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/estrongs/android/util/bd;->a(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/d/d;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/estrongs/android/ui/d/d;->b:Lcom/estrongs/android/ui/d/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static d()V
    .locals 4

    sget-object v1, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/estrongs/android/ui/d/e;->a:I

    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/d/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/d;->c()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/d;->c()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/d/d;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/estrongs/android/ui/d/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
