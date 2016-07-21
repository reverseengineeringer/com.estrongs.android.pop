.class public Lcom/flurry/sdk/dy;
.super Ljava/lang/Object;


# direct methods
.method public static a()V
    .locals 3

    new-instance v0, Lcom/flurry/sdk/eg;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/eg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/flurry/sdk/dy;->b(Lcom/flurry/sdk/eg;)V

    return-void
.end method

.method public static a(Lcom/flurry/sdk/eg;)V
    .locals 0

    invoke-static {p0}, Lcom/flurry/sdk/dy;->b(Lcom/flurry/sdk/eg;)V

    return-void
.end method

.method public static b()Lcom/flurry/sdk/eg;
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/dy;->c()Lcom/flurry/sdk/eg;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/eg;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/eg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/flurry/sdk/dy;->b(Lcom/flurry/sdk/eg;)V

    :cond_0
    return-object v0
.end method

.method private static b(Lcom/flurry/sdk/eg;)V
    .locals 3

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.flurry.sdk.request_token"

    invoke-virtual {p0}, Lcom/flurry/sdk/eg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.flurry.sdk.request_secret"

    invoke-virtual {p0}, Lcom/flurry/sdk/eg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static c()Lcom/flurry/sdk/eg;
    .locals 4

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.flurry.sdk.request_token"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.flurry.sdk.request_secret"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/eg;

    invoke-direct {v2, v1, v0}, Lcom/flurry/sdk/eg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
