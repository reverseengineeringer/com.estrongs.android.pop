.class public Lcom/dianxinos/lockscreen/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/dianxinos/lockscreen/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/SharedPreferences;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dianxinos/lockscreen/a;->a:Lcom/dianxinos/lockscreen/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/a;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dianxinos/lockscreen/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ls_global_configs_sp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/a;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/dianxinos/lockscreen/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {v2, p3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/a;->b:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;
    .locals 3

    sget-object v0, Lcom/dianxinos/lockscreen/a;->a:Lcom/dianxinos/lockscreen/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/dianxinos/lockscreen/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/lockscreen/a;->a:Lcom/dianxinos/lockscreen/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/lockscreen/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dianxinos/lockscreen/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/lockscreen/a;->a:Lcom/dianxinos/lockscreen/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dianxinos/lockscreen/a;->a:Lcom/dianxinos/lockscreen/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private k()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/lockscreen/a;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/a;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/a;->b:Landroid/content/Context;

    const-string v1, "charging_configs_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/a;->c:Landroid/content/SharedPreferences;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/a;->c:Landroid/content/SharedPreferences;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ls_global_configs_sp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_saver_timestamp"

    invoke-direct {p0, p1, v0, v1}, Lcom/dianxinos/lockscreen/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 2

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "charge_boost_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(IZJJ)V
    .locals 5

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    div-long v2, p5, v2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_1

    const-string v1, "usb_screenon_count"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_screenon_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_1
    const-string v1, "usb_screenoff_count"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "usb_screenoff_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_3

    const-string v1, "ac_screenon_count"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ac_screenon_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    const-string v1, "ac_screenoff_count"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "ac_screenoff_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public a(J)V
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "conf_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_anim_with_screen"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a()Z
    .locals 4

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/a;->b()J

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

.method public a(IZ)[J
    .locals 8

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    new-array v1, v2, [J

    aput-wide v4, v1, v7

    aput-wide v4, v1, v6

    if-ne p1, v2, :cond_2

    if-eqz p2, :cond_1

    const-string v2, "usb_screenon_count"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v7

    const-string v2, "usb_screenon_time"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v6

    :cond_0
    :goto_0
    aget-wide v2, v1, v6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    aput-wide v2, v1, v6

    return-object v1

    :cond_1
    const-string v2, "usb_screenoff_count"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v7

    const-string v2, "usb_screenoff_time"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v6

    goto :goto_0

    :cond_2
    if-ne p1, v6, :cond_0

    if-eqz p2, :cond_3

    const-string v2, "ac_screenon_count"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v7

    const-string v2, "ac_screenon_time"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v6

    goto :goto_0

    :cond_3
    const-string v2, "ac_screenoff_count"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v7

    const-string v2, "ac_screenoff_time"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    aput-wide v2, v1, v6

    goto :goto_0
.end method

.method public b()J
    .locals 6

    const-wide/16 v4, 0x0

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ChargingConfigs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get open time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/a;->h()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "screen_saver_timestamp"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/a;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "screen_saver_timestamp"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(I)V
    .locals 2

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(J)V
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "charge_last_pull_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/a;->h()Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez p1, :cond_1

    const-string v0, "screen_saver_timestamp"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ChargingConfigs"

    const-string v1, "set open false and LockScreen never open, invalid"

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-eqz p1, :cond_2

    const-string v3, "screen_saver_timestamp"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/dianxinos/lockscreen/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/dianxinos/lockscreen/ad/AdvertDataMgr;->a(J)V

    :cond_2
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_4

    const-string v2, "last_screen_saver_timestamp"

    invoke-interface {v4, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_1
    sget-boolean v2, Lcom/dianxinos/lockscreen/c/g;->a:Z

    if-eqz v2, :cond_3

    const-string v2, "ChargingConfigs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set open time:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v2, "screen_saver_timestamp"

    invoke-interface {v4, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/dianxinos/lockscreen/c;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/c;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/lockscreen/c;->b(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method public c(Z)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lockscreen_switch_old_timestamp"

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    if-nez p1, :cond_2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    const-string v0, "lockscreen_switch_old_timestamp"

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/a;->b()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/a;->b(Z)V

    :cond_1
    :goto_0
    const-string v0, "lockscreen_switch"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_2
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const-string v0, "lockscreen_switch_old_timestamp"

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/a;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "screen_saver_timestamp"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lockscreen_switch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/Long;
    .locals 4

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "conf_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "label_switch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public e()J
    .locals 4

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "charge_last_pull_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()J
    .locals 3

    const-string v0, "com.dianxinos.optimizer.duplay"

    const-string v1, "charging_global_configs_sp"

    const-string v2, "screen_saver_timestamp"

    invoke-direct {p0, v0, v1, v2}, Lcom/dianxinos/lockscreen/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()J
    .locals 3

    const-string v0, "com.dianxinos.dxbs"

    const-string v1, "battery_global_configs_sp"

    const-string v2, "screen_saver_timestamp"

    invoke-direct {p0, v0, v1, v2}, Lcom/dianxinos/lockscreen/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/lockscreen/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/a;->d:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 3

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/a;->k()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "label_switch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
