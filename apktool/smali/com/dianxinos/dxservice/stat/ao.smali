.class public Lcom/dianxinos/dxservice/stat/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/Long;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/dianxinos/dxservice/stat/ap;

.field private i:Lcom/dianxinos/dxservice/stat/ap;

.field private j:Lcom/dianxinos/dxservice/stat/ap;

.field private k:Lcom/dianxinos/dxservice/stat/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/dxservice/stat/ao;->a:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->c:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/pm/PackageInfo;)Ljava/lang/Long;
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "fakeFi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->b:Landroid/content/Context;

    const-string v3, "utils"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "firstInstallTime"

    invoke-static {p1, v1}, Lcom/dianxinos/dxservice/a/b;->a(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->b:Landroid/content/Context;

    const-string v3, "utils"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to getFirstInstallTime!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_1
.end method

.method private a(Lcom/dianxinos/dxservice/stat/ap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dianxinos/dxservice/stat/ao;->b(Lcom/dianxinos/dxservice/stat/ap;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/dxservice/stat/ao;->c(Lcom/dianxinos/dxservice/stat/ap;)V

    invoke-direct {p0, p1}, Lcom/dianxinos/dxservice/stat/ao;->d(Lcom/dianxinos/dxservice/stat/ap;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/dianxinos/dxservice/stat/ap;)V
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/dxservice/core/a;->a(Landroid/content/Context;)Lcom/dianxinos/dxservice/core/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/dxservice/stat/ao;->b(Ljava/lang/String;Lcom/dianxinos/dxservice/stat/ap;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/dianxinos/dxservice/core/a;->a(Ljava/lang/String;ILjava/lang/Object;)Z

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/dianxinos/dxservice/stat/ap;)Lorg/json/JSONObject;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "INS-UR-LC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/ap;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/ap;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/sql/Date;

    invoke-virtual {p2}, Lcom/dianxinos/dxservice/stat/ap;->c()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/sql/Date;-><init>(J)V

    invoke-static {v2}, Lcom/dianxinos/dxservice/a/c;->a(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to get Json!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to get Json!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->h:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->j:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->k:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "INS-FI"

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->i:Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/dxservice/stat/ao;->a(Ljava/lang/String;Lcom/dianxinos/dxservice/stat/ap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->h:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->k:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->j:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "INS-CDASD"

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->i:Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/dxservice/stat/ao;->a(Ljava/lang/String;Lcom/dianxinos/dxservice/stat/ap;)V

    :cond_2
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->h:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->j:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->k:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "INS-WD"

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->i:Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/dxservice/stat/ao;->a(Ljava/lang/String;Lcom/dianxinos/dxservice/stat/ap;)V

    :cond_3
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->h:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->j:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->k:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "INS-CD"

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->i:Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/dxservice/stat/ao;->a(Ljava/lang/String;Lcom/dianxinos/dxservice/stat/ap;)V

    :cond_4
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->h:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v1}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->h:Lcom/dianxinos/dxservice/stat/ap;

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->i:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v1, v0}, Lcom/dianxinos/dxservice/stat/ap;->a(Lcom/dianxinos/dxservice/stat/ap;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "INS-PU"

    invoke-direct {p0, v1, v0}, Lcom/dianxinos/dxservice/stat/ao;->a(Ljava/lang/String;Lcom/dianxinos/dxservice/stat/ap;)V

    const-string v0, "INS-UR"

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->i:Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/dxservice/stat/ao;->a(Ljava/lang/String;Lcom/dianxinos/dxservice/stat/ap;)V

    const-string v0, "INS-UR-LC"

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->i:Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {p0, v0, v1}, Lcom/dianxinos/dxservice/stat/ao;->a(Ljava/lang/String;Lcom/dianxinos/dxservice/stat/ap;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->j:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v1}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->j:Lcom/dianxinos/dxservice/stat/ap;

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->k:Lcom/dianxinos/dxservice/stat/ap;

    invoke-virtual {v1}, Lcom/dianxinos/dxservice/stat/ap;->d()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->k:Lcom/dianxinos/dxservice/stat/ap;

    goto :goto_1
.end method

.method private b(Lcom/dianxinos/dxservice/stat/ap;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->b:Landroid/content/Context;

    const-string v1, "utils"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/dianxinos/dxservice/stat/ap;->b(Lcom/dianxinos/dxservice/stat/ap;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/dianxinos/dxservice/stat/ap;->c(Lcom/dianxinos/dxservice/stat/ap;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Failed to updateSharedPerferencedInfo!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c()Lcom/dianxinos/dxservice/stat/ap;
    .locals 4

    new-instance v1, Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {v1, p0}, Lcom/dianxinos/dxservice/stat/ap;-><init>(Lcom/dianxinos/dxservice/stat/ao;)V

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ao;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dianxinos/dxservice/stat/ao;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dianxinos/dxservice/stat/ap;->a(Ljava/lang/Long;)V

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dianxinos/dxservice/stat/ap;->a(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/DXStatService/stat/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dianxinos/dxservice/stat/ap;->a(Ljava/lang/String;)V

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.UserReturnStatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppUserReturnStat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/dianxinos/dxservice/stat/ap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to processAppUserReturnStat!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to processAppUserReturnStat!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private c(Lcom/dianxinos/dxservice/stat/ap;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/dianxinos/dxservice/stat/ap;->b(Lcom/dianxinos/dxservice/stat/ap;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/dianxinos/dxservice/stat/ap;->c(Lcom/dianxinos/dxservice/stat/ap;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Failed to updateSettingsInfo!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d()Lcom/dianxinos/dxservice/stat/ap;
    .locals 6

    new-instance v1, Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {v1, p0}, Lcom/dianxinos/dxservice/stat/ap;-><init>(Lcom/dianxinos/dxservice/stat/ao;)V

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->b:Landroid/content/Context;

    const-string v2, "utils"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ao;->e:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/dxservice/stat/ao;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2}, Lcom/dianxinos/dxservice/stat/ap;->a(Ljava/lang/Long;)V

    invoke-virtual {v1, v0}, Lcom/dianxinos/dxservice/stat/ap;->a(Ljava/lang/Integer;)V

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.UserReturnStatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharePrefrenceUserReturnStat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/dianxinos/dxservice/stat/ap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to processSharedPrefrenceUserReturnStat!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private d(Lcom/dianxinos/dxservice/stat/ap;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/.userReturn"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ao;->e:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/dianxinos/dxservice/stat/ap;->b(Lcom/dianxinos/dxservice/stat/ap;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ao;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/dianxinos/dxservice/stat/ap;->c(Lcom/dianxinos/dxservice/stat/ap;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :goto_2
    :try_start_3
    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_2

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to updateSDCardInfo!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Close fileOutputStream has IOException!"

    :goto_3
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_3

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close fileOutputStream has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_3
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_3

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close fileOutputStream has Exception!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_4
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Close fileOutputStream has Exception!"

    :goto_6
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_5
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Close fileOutputStream has IOException!"

    goto :goto_3

    :catch_6
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Close fileOutputStream has Exception!"

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_0
.end method

.method private e()Lcom/dianxinos/dxservice/stat/ap;
    .locals 6

    new-instance v1, Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {v1, p0}, Lcom/dianxinos/dxservice/stat/ap;-><init>(Lcom/dianxinos/dxservice/stat/ao;)V

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ao;->e:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ao;->c:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/dianxinos/dxservice/stat/ao;->f:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/dianxinos/dxservice/stat/ap;->a(Ljava/lang/Long;)V

    invoke-virtual {v1, v2}, Lcom/dianxinos/dxservice/stat/ap;->a(Ljava/lang/Integer;)V

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.UserReturnStatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsUserReturnStat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/dianxinos/dxservice/stat/ap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Failed to processSettingsUserReturnStat!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private f()Lcom/dianxinos/dxservice/stat/ap;
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v0, Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {v0, p0}, Lcom/dianxinos/dxservice/stat/ap;-><init>(Lcom/dianxinos/dxservice/stat/ao;)V

    :try_start_0
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v5, Ljava/io/File;

    const-string v4, "/sdcard/.userReturn"

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_10

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_16
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_17
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v3, "\t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/dianxinos/dxservice/stat/ao;->e:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/dxservice/stat/ap;->a(Ljava/lang/Long;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_3
    :try_start_6
    sget-boolean v4, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v4, :cond_4

    const-string v4, "stat.UserReturnStatService"

    const-string v5, "Failed to processSDCardUserReturnStat!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_4
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    :cond_5
    :goto_4
    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_1

    :catch_1
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has IOException!"

    :goto_5
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_6
    :try_start_9
    iget-object v3, p0, Lcom/dianxinos/dxservice/stat/ao;->f:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/dxservice/stat/ap;->a(Ljava/lang/Integer;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_6
    :try_start_a
    sget-boolean v3, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v3, :cond_7

    const-string v3, "stat.UserReturnStatService"

    const-string v5, "Failed to processSDCardUserReturnStat!"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_7
    if-eqz v4, :cond_8

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    :cond_8
    :goto_7
    if-eqz v2, :cond_1

    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    goto/16 :goto_1

    :catch_3
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has IOException!"

    goto :goto_5

    :cond_9
    :try_start_d
    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v1, :cond_a

    const-string v1, "stat.UserReturnStatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDCardUserReturnStat:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dianxinos/dxservice/stat/ap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_a
    :goto_8
    if-eqz v4, :cond_b

    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_14

    :cond_b
    :goto_9
    if-eqz v2, :cond_1

    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_15

    goto/16 :goto_1

    :catch_4
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has IOException!"

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_a
    if-eqz v4, :cond_c

    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    :cond_c
    :goto_b
    if-eqz v2, :cond_d

    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    :cond_d
    :goto_c
    throw v0

    :catch_5
    move-exception v1

    sget-boolean v3, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v3, :cond_c

    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has IOException!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :catch_6
    move-exception v1

    sget-boolean v3, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v3, :cond_c

    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has Exception!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :catch_7
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_d

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has IOException!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :catch_8
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_d

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has Exception!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :catch_9
    move-exception v1

    sget-boolean v3, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v3, :cond_5

    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has IOException!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_a
    move-exception v1

    sget-boolean v3, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v3, :cond_5

    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has Exception!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_b
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has Exception!"

    :goto_d
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_c
    move-exception v1

    sget-boolean v3, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v3, :cond_8

    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has IOException!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catch_d
    move-exception v1

    sget-boolean v3, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v3, :cond_8

    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has Exception!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    :catch_e
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has Exception!"

    goto :goto_d

    :catch_f
    move-exception v1

    sget-boolean v4, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v4, :cond_0

    const-string v4, "stat.UserReturnStatService"

    const-string v5, "Close fileInputStream has IOException!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_10
    move-exception v1

    sget-boolean v4, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v4, :cond_0

    const-string v4, "stat.UserReturnStatService"

    const-string v5, "Close fileInputStream has Exception!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_11
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has IOException!"

    goto/16 :goto_5

    :catch_12
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has Exception!"

    goto :goto_d

    :catch_13
    move-exception v1

    sget-boolean v3, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v3, :cond_b

    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has IOException!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :catch_14
    move-exception v1

    sget-boolean v3, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v3, :cond_b

    const-string v3, "stat.UserReturnStatService"

    const-string v4, "Close fileInputStream has Exception!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :catch_15
    move-exception v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v2, :cond_1

    const-string v2, "stat.UserReturnStatService"

    const-string v3, "Close bufferedReader has Exception!"

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    goto/16 :goto_a

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto/16 :goto_a

    :catch_16
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_6

    :catch_17
    move-exception v1

    move-object v2, v3

    goto/16 :goto_6

    :catch_18
    move-exception v1

    move-object v2, v3

    goto/16 :goto_3

    :catch_19
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_3

    :cond_e
    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_8
.end method


# virtual methods
.method public a()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/ao;->c:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/ao;->g:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-boolean v2, Lcom/dianxinos/dxservice/a/c;->d:Z

    if-eqz v2, :cond_0

    const-string v2, "stat.UserReturnStatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last reportTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and now:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v1, Lcom/dianxinos/dxservice/stat/ao;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/dianxinos/dxservice/a/c;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "stat.UserReturnStatService"

    const-string v2, "Failed to get user return reportTime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Lcom/dianxinos/dxservice/stat/ao;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/ao;->c()Lcom/dianxinos/dxservice/stat/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->i:Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/ao;->d()Lcom/dianxinos/dxservice/stat/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->h:Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/ao;->e()Lcom/dianxinos/dxservice/stat/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->j:Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/ao;->f()Lcom/dianxinos/dxservice/stat/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->k:Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/ao;->b()V

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/ao;->i:Lcom/dianxinos/dxservice/stat/ap;

    invoke-direct {p0, v0}, Lcom/dianxinos/dxservice/stat/ao;->a(Lcom/dianxinos/dxservice/stat/ap;)V

    :cond_0
    return-void
.end method
