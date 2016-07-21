.class public Lcom/dianxinos/library/notify/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dianxinos/library/notify/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dianxinos/library/notify/dispatcher/p;)I
    .locals 7

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v3, "uninstall"

    iget-object v4, p1, Lcom/dianxinos/library/notify/dispatcher/p;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/dianxinos/library/notify/dispatcher/p;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p1, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;)Lcom/dianxinos/library/notify/data/j;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/dianxinos/library/notify/c;->a()Landroid/content/Context;

    move-result-object v3

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p1, Lcom/dianxinos/library/notify/dispatcher/p;->d:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "silent"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_2

    :goto_1
    const-string v5, "pkgName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_3

    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v5, p1, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/dianxinos/library/notify/g/a;->e(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v3}, Lcom/dianxinos/library/notify/e/a;->a(Landroid/content/Context;)Lcom/dianxinos/library/notify/e/a;

    move-result-object v5

    invoke-static {}, Lcom/dianxinos/library/notify/dispatcher/b;->a()Lcom/dianxinos/library/notify/dispatcher/b;

    move-result-object v6

    invoke-virtual {v5, v3, v4, v6, v2}, Lcom/dianxinos/library/notify/e/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v1

    iget-object v1, p1, Lcom/dianxinos/library/notify/dispatcher/p;->a:Ljava/lang/String;

    const-string v2, "null"

    invoke-static {v1, v2}, Lcom/dianxinos/library/notify/g/a;->e(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "uninstall"

    return-object v0
.end method
