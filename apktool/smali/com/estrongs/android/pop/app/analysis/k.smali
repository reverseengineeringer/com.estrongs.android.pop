.class public Lcom/estrongs/android/pop/app/analysis/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/estrongs/android/pop/app/analysis/n;)I
    .locals 2

    const v0, 0x7f02021b

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/estrongs/android/pop/app/analysis/n;->e:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f020217

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020218

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020219

    goto :goto_0

    :pswitch_3
    const v0, 0x7f02021a

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/estrongs/android/a/b/f;)Lcom/estrongs/android/pop/app/analysis/m;
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/estrongs/android/a/b/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x480

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/estrongs/android/a/l;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)[I

    move-result-object v5

    array-length v6, v5

    invoke-static {v0, v3, v4, v1, v5}, Lcom/estrongs/android/a/l;->a(Landroid/app/ActivityManager;Ljava/util/List;Ljava/util/List;Ljava/lang/String;[I)J

    move-result-wide v4

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/m;

    invoke-direct {v1}, Lcom/estrongs/android/pop/app/analysis/m;-><init>()V

    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/estrongs/android/pop/app/analysis/m;->a:J

    iput v6, v1, Lcom/estrongs/android/pop/app/analysis/m;->b:I

    iput-wide v4, v1, Lcom/estrongs/android/pop/app/analysis/m;->c:J

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/f;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/g;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-wide v4, v1, Lcom/estrongs/android/pop/app/analysis/m;->a:J

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/g;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/estrongs/android/pop/app/analysis/m;->a:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    :goto_2
    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/estrongs/android/pop/app/analysis/n;
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/n;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/analysis/n;-><init>()V

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/app/analysis/n;->a:Ljava/lang/String;

    const-string v2, "cus_des"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/app/analysis/n;->d:Ljava/lang/String;

    const-string v2, "des"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/app/analysis/n;->c:Ljava/lang/String;

    const-string v2, "level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/app/analysis/n;->b:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/estrongs/android/pop/app/analysis/n;->e:I

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/k;->a(Lcom/estrongs/android/pop/app/analysis/n;)I

    move-result v1

    iput v1, v0, Lcom/estrongs/android/pop/app/analysis/n;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const v1, 0x7f02021b

    iput v1, v0, Lcom/estrongs/android/pop/app/analysis/n;->f:I

    goto :goto_0
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/i;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "country = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curr_lang = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/estrongs/android/pop/esclasses/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChina = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/l;->a(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "app_permissions_en.txt"

    const-string v2, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "app_permissions_cn.txt"

    :goto_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/FexApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    const-string v0, "utf8"

    invoke-static {v2, v0}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    sget-object v0, Lcom/estrongs/android/pop/esclasses/i;->a:Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_2
    const-string v2, "tw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "app_permissions_zh-Hant.txt"

    goto :goto_1

    :cond_3
    const-string v0, "app_permissions_en.txt"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    :cond_4
    move-object v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/estrongs/fs/util/m;->a(Ljava/io/InputStream;)V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Lcom/estrongs/android/a/b/f;Lcom/estrongs/android/pop/app/analysis/o;Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/l;

    invoke-direct {v0, p3, p1, p0, p2}, Lcom/estrongs/android/pop/app/analysis/l;-><init>(ZLcom/estrongs/android/a/b/f;Landroid/content/Context;Lcom/estrongs/android/pop/app/analysis/o;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/estrongs/android/pop/app/analysis/o;->a()V

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_1
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
