.class public Lcom/dianxinos/DXStatService/stat/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile c:Lcom/dianxinos/DXStatService/stat/b;


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dianxinos/DXStatService/stat/c;

    invoke-direct {v0, p0}, Lcom/dianxinos/DXStatService/stat/c;-><init>(Lcom/dianxinos/DXStatService/stat/b;)V

    iput-object v0, p0, Lcom/dianxinos/DXStatService/stat/b;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/DXStatService/stat/b;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/dianxinos/DXStatService/stat/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/DXStatService/stat/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/dianxinos/DXStatService/stat/b;
    .locals 2

    const-class v1, Lcom/dianxinos/DXStatService/stat/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dianxinos/DXStatService/stat/b;->c:Lcom/dianxinos/DXStatService/stat/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dianxinos/DXStatService/stat/b;

    invoke-direct {v0, p0}, Lcom/dianxinos/DXStatService/stat/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dianxinos/DXStatService/stat/b;->c:Lcom/dianxinos/DXStatService/stat/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/dianxinos/DXStatService/stat/b;->c:Lcom/dianxinos/DXStatService/stat/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/DXStatService/stat/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.{DL6B117B-CBC7-4ac2-8F3C-43C1649DC7DL}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/dianxinos/DXStatService/stat/b;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/dianxinos/DXStatService/stat/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/dianxinos/DXStatService/stat/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.{DL6B117B-CBC7-4ac2-8F3C-43C1649DC7LT}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/dianxinos/DXStatService/stat/b;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/dianxinos/DXStatService/stat/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/dianxinos/DXStatService/stat/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/dianxinos/DXStatService/stat/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
