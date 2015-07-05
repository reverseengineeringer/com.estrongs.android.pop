.class Lcom/estrongs/android/ui/dialog/gm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/a/i;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/gk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/gk;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 12

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->d(Lcom/estrongs/android/ui/dialog/gk;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    const-string v3, "perms"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/dialog/gk;->a(Lcom/estrongs/android/ui/dialog/gk;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->e(Lcom/estrongs/android/ui/dialog/gk;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->b(Lcom/estrongs/android/ui/dialog/gk;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1000

    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v8, v7

    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_4

    aget-object v9, v7, v3

    move v2, v1

    move v0, v1

    :goto_2
    iget-object v10, p0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v10}, Lcom/estrongs/android/ui/dialog/gk;->f(Lcom/estrongs/android/ui/dialog/gk;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_2

    iget-object v10, p0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v10}, Lcom/estrongs/android/ui/dialog/gk;->f(Lcom/estrongs/android/ui/dialog/gk;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "permission"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, v2}, Lcom/estrongs/android/ui/dialog/gk;->a(Lcom/estrongs/android/ui/dialog/gk;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    return-void

    :cond_2
    if-nez v0, :cond_3

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v4, v9, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    const-string v9, "name"

    invoke-virtual {v2, v4}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "disable"

    const/4 v9, 0x0

    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    throw v0

    :cond_4
    move v0, v1

    :goto_5
    :try_start_6
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/gk;->f(Lcom/estrongs/android/ui/dialog/gk;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/gk;->f(Lcom/estrongs/android/ui/dialog/gk;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "permission"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move v0, v1

    :goto_6
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0, v5}, Lcom/estrongs/android/ui/dialog/gk;->a(Lcom/estrongs/android/ui/dialog/gk;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/gm;->a:Lcom/estrongs/android/ui/dialog/gk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/gk;->g(Lcom/estrongs/android/ui/dialog/gk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/gn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/gn;-><init>(Lcom/estrongs/android/ui/dialog/gm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3
.end method
