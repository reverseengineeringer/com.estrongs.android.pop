.class public Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z

.field private static b:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    sput-boolean v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->b:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;
    .locals 2

    sget-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->b:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    if-nez v0, :cond_1

    const-class v1, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->b:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->b:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->b:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad_switch_for_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->n()V

    return-void
.end method

.method private a(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad_switch_for_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "AdvertDataMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ad net type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->access$000(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is open:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->NetUnknown:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    if-ne p1, v2, :cond_1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->NetUnknown:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->NetWifi:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    sget-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->NetUnknown:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    goto :goto_1

    :cond_4
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->NetUnknown:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_0
    sget-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->Net2G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->Net3G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->Net4G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private b(I)V
    .locals 2

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ad_show_times"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private f(J)V
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "new_user_protect"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private g(J)V
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ad_close_protect"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private j()J
    .locals 4

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "new_user_protect"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private k()J
    .locals 4

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ad_close_protect"

    const-wide/32 v2, 0x1499700

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private l()I
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ad_show_times"

    const/16 v2, 0x3e7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private m()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->c:Landroid/content/Context;

    const-string v1, "ls_sp_date"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->d:Landroid/content/SharedPreferences;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->d:Landroid/content/SharedPreferences;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private n()V
    .locals 2

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->o()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "AdvertDataMgr"

    const-string v1, "do real ad pre refresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/c;->a()Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->a()V

    goto :goto_0
.end method

.method private o()I
    .locals 1

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recommend_show_times"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(J)V
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "start_screen_lock_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    invoke-static {p1}, Lcom/dianxinos/lockscreen/ad/a;->a(Lorg/json/JSONObject;)Lcom/dianxinos/lockscreen/ad/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v1, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "AdvertDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configurtion after parse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->NetWifi:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    iget-boolean v2, v0, Lcom/dianxinos/lockscreen/ad/a;->a:Z

    invoke-direct {p0, v1, v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;Z)V

    sget-object v1, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->Net2G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    iget-boolean v2, v0, Lcom/dianxinos/lockscreen/ad/a;->b:Z

    invoke-direct {p0, v1, v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;Z)V

    sget-object v1, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->Net3G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    iget-boolean v2, v0, Lcom/dianxinos/lockscreen/ad/a;->c:Z

    invoke-direct {p0, v1, v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;Z)V

    sget-object v1, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->Net4G:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    iget-boolean v2, v0, Lcom/dianxinos/lockscreen/ad/a;->d:Z

    invoke-direct {p0, v1, v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;Z)V

    sget-object v1, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->NetUnknown:Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    iget-boolean v2, v0, Lcom/dianxinos/lockscreen/ad/a;->e:Z

    invoke-direct {p0, v1, v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;Z)V

    iget-wide v2, v0, Lcom/dianxinos/lockscreen/ad/a;->f:J

    invoke-direct {p0, v2, v3}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->f(J)V

    iget-wide v2, v0, Lcom/dianxinos/lockscreen/ad/a;->g:J

    invoke-direct {p0, v2, v3}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->g(J)V

    iget v1, v0, Lcom/dianxinos/lockscreen/ad/a;->h:I

    invoke-direct {p0, v1}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->b(I)V

    iget-boolean v1, v0, Lcom/dianxinos/lockscreen/ad/a;->i:Z

    invoke-virtual {p0, v1}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Z)V

    iget-wide v2, v0, Lcom/dianxinos/lockscreen/ad/a;->k:J

    invoke-virtual {p0, v2, v3}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->c(J)V

    iget-wide v2, v0, Lcom/dianxinos/lockscreen/ad/a;->l:J

    invoke-virtual {p0, v2, v3}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->d(J)V

    iget v1, v0, Lcom/dianxinos/lockscreen/ad/a;->j:I

    invoke-virtual {p0, v1}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(I)V

    iget-wide v0, v0, Lcom/dianxinos/lockscreen/ad/a;->m:J

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->e(J)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recommend_switch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(J)V
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "start_screen_ad_switch_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->b(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;

    move-result-object v0

    sget-boolean v1, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "AdvertDataMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad net type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;->access$000(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr$NetworkClass;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(J)V
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recommend_new_pro_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c()Z
    .locals 10

    const-wide/16 v4, -0x1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "start_screen_lock_time"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "AdvertDataMgr"

    const-string v2, "ad never open lockscreen, new user protect"

    invoke-static {v1, v2}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gez v1, :cond_3

    sget-boolean v1, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "AdvertDataMgr"

    const-string v2, "ad user changed the time, new user protect"

    invoke-static {v1, v2}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->j()J

    move-result-wide v2

    sub-long v2, v4, v2

    invoke-virtual {p0, v2, v3}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(J)V

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "AdvertDataMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ad new user protect, protect time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->j()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";span time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v4, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sub-long v2, v4, v2

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->j()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(J)V
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "recommend_int_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public d()Z
    .locals 10

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "start_screen_ad_switch_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->k()J

    move-result-wide v4

    sget-boolean v6, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v6, :cond_0

    const-string v6, "AdvertDataMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ad close time, span time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v2, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";protect time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sub-long v0, v2, v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(J)V
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dlg_int_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public e()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "show_ad_day_of_year"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_2

    sget-boolean v3, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v3, :cond_0

    const-string v3, "AdvertDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ad is other day, count reset :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show_ad_day_of_year"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ad_showed_times"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "ad_showed_times"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->l()I

    move-result v2

    sget-boolean v3, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v3, :cond_3

    const-string v3, "AdvertDataMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ad current time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";limit times:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()V
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->m()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "show_ad_day_of_year"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "show_ad_day_of_year"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ad_showed_times"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "ad_showed_times"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ad_showed_times"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    invoke-static {}, Lcom/dianxinos/lockscreen/c/j;->a()Lcom/dianxinos/lockscreen/c/j;

    move-result-object v0

    new-instance v1, Lcom/dianxinos/lockscreen/ad/b;

    invoke-direct {v1, p0}, Lcom/dianxinos/lockscreen/ad/b;-><init>(Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/c/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()V
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->o()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "real"

    invoke-static {v1, v2, v0}, Lcom/dianxinos/lockscreen/x;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "AdvertDataMgr"

    const-string v1, "do real ad load"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/ad/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dianxinos/lockscreen/ad/c;->a()Lcom/dianxinos/lockscreen/ad/extra/ADCardController;

    move-result-object v0

    sget-object v1, Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;->SCREENLOCKBIGCARD:Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/ad/extra/ADCardController;->a(Lcom/dianxinos/lockscreen/ad/extra/ADCardController$ADCardType;)V

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
