.class public Lcom/dianxinos/dxservice/stat/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Long;

.field private static g:Lcom/dianxinos/dxservice/stat/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/app/AlarmManager;

.field private d:Landroid/app/PendingIntent;

.field private e:Z

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x1b7740

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/dianxinos/dxservice/stat/a;->a:Ljava/lang/Long;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dianxinos/dxservice/stat/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/a;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/a;->c:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "DXCoreAlarmReceiver"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/a;->b:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/dxservice/stat/a;->d:Landroid/app/PendingIntent;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dianxinos/dxservice/stat/a;->f:J

    iput-boolean v3, p0, Lcom/dianxinos/dxservice/stat/a;->e:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/dxservice/stat/a;
    .locals 2

    const-class v1, Lcom/dianxinos/dxservice/stat/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/dxservice/stat/a;->g:Lcom/dianxinos/dxservice/stat/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/dxservice/stat/a;

    invoke-direct {v0, p0}, Lcom/dianxinos/dxservice/stat/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/dxservice/stat/a;->g:Lcom/dianxinos/dxservice/stat/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/dianxinos/dxservice/stat/a;->g:Lcom/dianxinos/dxservice/stat/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dianxinos/dxservice/stat/a;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/dianxinos/dxservice/stat/a;->e:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.Alarm"

    const-string v2, "Start to regist alarm!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/a;->c:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/dianxinos/dxservice/stat/a;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/a;->c:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/dianxinos/dxservice/stat/a;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/dianxinos/dxservice/stat/a;->d:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    iput-boolean v1, p0, Lcom/dianxinos/dxservice/stat/a;->e:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dianxinos/dxservice/stat/a;->f:J

    :cond_1
    return-void
.end method

.method public b()V
    .locals 4

    iget-boolean v0, p0, Lcom/dianxinos/dxservice/stat/a;->e:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/dianxinos/dxservice/stat/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/dianxinos/dxservice/a/c;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stat.Alarm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to unRegist alarm, The last register time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/dianxinos/dxservice/stat/a;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/dxservice/stat/a;->c:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/dianxinos/dxservice/stat/a;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/dxservice/stat/a;->e:Z

    :cond_1
    return-void
.end method
