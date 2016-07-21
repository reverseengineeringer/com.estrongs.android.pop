.class public Lcom/dianxinos/lockscreen/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z

.field private static j:Lcom/dianxinos/lockscreen/i;


# instance fields
.field private b:Lcom/dianxinos/lockscreen/a;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/ContentResolver;

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    sput-boolean v0, Lcom/dianxinos/lockscreen/i;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/dianxinos/lockscreen/i;->e:I

    iput v2, p0, Lcom/dianxinos/lockscreen/i;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/lockscreen/i;->g:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/i;->h:J

    iput-boolean v2, p0, Lcom/dianxinos/lockscreen/i;->i:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/i;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/i;->d:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/dianxinos/lockscreen/a;->a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/lockscreen/i;->b:Lcom/dianxinos/lockscreen/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/lockscreen/i;
    .locals 2

    sget-object v0, Lcom/dianxinos/lockscreen/i;->j:Lcom/dianxinos/lockscreen/i;

    if-nez v0, :cond_1

    const-class v1, Lcom/dianxinos/lockscreen/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/lockscreen/i;->j:Lcom/dianxinos/lockscreen/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/lockscreen/i;

    invoke-direct {v0, p0}, Lcom/dianxinos/lockscreen/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/lockscreen/i;->j:Lcom/dianxinos/lockscreen/i;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dianxinos/lockscreen/i;->j:Lcom/dianxinos/lockscreen/i;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(IJJ)V
    .locals 10

    iget-object v0, p0, Lcom/dianxinos/lockscreen/i;->d:Landroid/content/ContentResolver;

    const-string v1, "stay_on_while_plugged_in"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    :goto_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/i;->b:Lcom/dianxinos/lockscreen/a;

    invoke-virtual {v0, p1, v3}, Lcom/dianxinos/lockscreen/a;->a(IZ)[J

    move-result-object v0

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    add-long/2addr v4, p2

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    add-long v6, p4, v0

    sget-boolean v0, Lcom/dianxinos/lockscreen/i;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "newSavedLevelGap=%d, newSavedTimeGap=%d, screenOn=%b, plugType=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalChargeTag"

    invoke-static {v1, v0}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dianxinos/lockscreen/i;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/dianxinos/lockscreen/i;->b:Lcom/dianxinos/lockscreen/a;

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/dianxinos/lockscreen/a;->a(IZJJ)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "chargeData.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mmZ "

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/lockscreen/i;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "ChargingTimeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dianxinos/lockscreen/c/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/dianxinos/lockscreen/i;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "ChargingTimeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dianxinos/lockscreen/c/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(IIIJZ)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/dianxinos/lockscreen/i;->g:I

    if-eq v0, v6, :cond_3

    iget v0, p0, Lcom/dianxinos/lockscreen/i;->g:I

    if-gt p2, v0, :cond_1

    iget v0, p0, Lcom/dianxinos/lockscreen/i;->g:I

    if-ne p2, v0, :cond_3

    if-eqz p6, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/i;->i:Z

    if-eqz v0, :cond_2

    if-ge p2, p3, :cond_2

    iget v0, p0, Lcom/dianxinos/lockscreen/i;->g:I

    sub-int v0, p2, v0

    int-to-long v2, v0

    iget-wide v0, p0, Lcom/dianxinos/lockscreen/i;->h:J

    sub-long v4, p4, v0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/dianxinos/lockscreen/i;->a(IJJ)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/i;->i:Z

    :goto_1
    if-eqz p6, :cond_4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dianxinos/lockscreen/i;->h:J

    iput v7, p0, Lcom/dianxinos/lockscreen/i;->f:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/dianxinos/lockscreen/i;->e:I

    iput v6, p0, Lcom/dianxinos/lockscreen/i;->g:I

    iput-boolean v7, p0, Lcom/dianxinos/lockscreen/i;->i:Z

    goto :goto_0

    :cond_3
    const-string v0, "ChargingTimeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip updating, mPreLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/dianxinos/lockscreen/i;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", curLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dianxinos/lockscreen/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/dianxinos/lockscreen/i;->g:I

    sub-int v0, p2, v0

    if-lez v0, :cond_5

    iput-wide p4, p0, Lcom/dianxinos/lockscreen/i;->h:J

    :cond_5
    iput p1, p0, Lcom/dianxinos/lockscreen/i;->f:I

    iput p3, p0, Lcom/dianxinos/lockscreen/i;->e:I

    iput p2, p0, Lcom/dianxinos/lockscreen/i;->g:I

    goto :goto_0
.end method
