.class Lcom/baidu/mobstat/ca;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/baidu/mobstat/ca;

.field private static p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mobstat/cf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/os/Handler;

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/baidu/mobstat/by;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobstat/ca;

    invoke-direct {v0}, Lcom/baidu/mobstat/ca;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ca;->a:Lcom/baidu/mobstat/ca;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ca;->p:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/baidu/mobstat/ca;->c:J

    iput-wide v0, p0, Lcom/baidu/mobstat/ca;->d:J

    iput-wide v0, p0, Lcom/baidu/mobstat/ca;->e:J

    iput-wide v0, p0, Lcom/baidu/mobstat/ca;->f:J

    new-instance v0, Lcom/baidu/mobstat/by;

    invoke-direct {v0}, Lcom/baidu/mobstat/by;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ca;->j:Lcom/baidu/mobstat/by;

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/mobstat/ca;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ca;->l:Z

    iput-boolean v2, p0, Lcom/baidu/mobstat/ca;->m:Z

    iput-boolean v2, p0, Lcom/baidu/mobstat/ca;->n:Z

    iput-boolean v2, p0, Lcom/baidu/mobstat/ca;->o:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SessionAnalysisThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    return-void
.end method

.method static a(Ljava/lang/Object;)Landroid/content/Context;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getActivity"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/ca;)Lcom/baidu/mobstat/by;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobstat/ca;->j:Lcom/baidu/mobstat/by;

    return-object v0
.end method

.method public static a()Lcom/baidu/mobstat/ca;
    .locals 1

    sget-object v0, Lcom/baidu/mobstat/ca;->a:Lcom/baidu/mobstat/ca;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobstat/ca;Ljava/lang/String;)Lcom/baidu/mobstat/cf;
    .locals 1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ca;->b(Ljava/lang/String;)Lcom/baidu/mobstat/cf;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "clearLastSession(Context context):context=null"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/baidu/mobstat/cu;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_last_session.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/cl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/ca;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ca;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/ca;Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/ca;->c(Landroid/content/Context;J)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/baidu/mobstat/ca;->p:Ljava/util/HashMap;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "page Object is null"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/mobstat/cf;

    invoke-direct {v0, p1}, Lcom/baidu/mobstat/cf;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/mobstat/ca;->p:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/baidu/mobstat/ca;->p:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobstat/ca;->l:Z

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/baidu/mobstat/cf;
    .locals 2

    sget-object v1, Lcom/baidu/mobstat/ca;->p:Ljava/util/HashMap;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "pageName is null"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/ca;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ca;->a(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/baidu/mobstat/ca;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/cf;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/baidu/mobstat/ca;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ca;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/content/Context;J)V
    .locals 4

    const-string v0, "flush current session to last_session.json"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/baidu/mobstat/ca;->j:Lcom/baidu/mobstat/by;

    invoke-virtual {v0}, Lcom/baidu/mobstat/by;->c()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "e"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/baidu/mobstat/cu;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_last_session.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/mobstat/cl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception v1

    const-string v1, "StatSession.flushSession() failed"

    invoke-static {v1}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/baidu/mobstat/ca;->p:Ljava/util/HashMap;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "pageName is null"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/baidu/mobstat/ca;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/mobstat/ca;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobstat/ca;->l:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/baidu/mobstat/ca;->k:I

    return-void
.end method

.method public a(Landroid/content/Context;J)V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v0, "AnalysisResume job"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/mobstat/ca;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    :cond_0
    iput-boolean v9, p0, Lcom/baidu/mobstat/ca;->m:Z

    invoke-direct {p0}, Lcom/baidu/mobstat/ca;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "is_first_resume=true"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ca;->a(Z)V

    iget-object v0, p0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cc;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/cc;-><init>(Lcom/baidu/mobstat/ca;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    new-instance v0, Lcom/baidu/mobstat/ch;

    iget-wide v2, p0, Lcom/baidu/mobstat/ca;->c:J

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mobstat/ch;-><init>(Lcom/baidu/mobstat/ca;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ca;->g:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lcom/baidu/mobstat/ca;->d:J

    return-void

    :cond_1
    const-string v0, " is_first_resume=false"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v0, "AnalysisPageStart"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/baidu/mobstat/ca;->b(Ljava/lang/String;)Lcom/baidu/mobstat/cf;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u81ea\u5b9a\u4e49\u9875\u9762 pageName \u4e3a null"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p4}, Lcom/baidu/mobstat/ca;->b(Ljava/lang/String;)Lcom/baidu/mobstat/cf;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/mobstat/cf;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "\u9057\u6f0fStatService.onPageEnd() || missing StatService.onPageEnd()"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p4}, Lcom/baidu/mobstat/ca;->b(Ljava/lang/String;)Lcom/baidu/mobstat/cf;

    move-result-object v0

    iput-boolean v9, v0, Lcom/baidu/mobstat/cf;->b:Z

    invoke-direct {p0, p4}, Lcom/baidu/mobstat/ca;->b(Ljava/lang/String;)Lcom/baidu/mobstat/cf;

    move-result-object v0

    iput-wide p2, v0, Lcom/baidu/mobstat/cf;->c:J

    invoke-direct {p0}, Lcom/baidu/mobstat/ca;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "is_first_resume=true"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ca;->a(Z)V

    iget-object v0, p0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cb;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/cb;-><init>(Lcom/baidu/mobstat/ca;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    new-instance v0, Lcom/baidu/mobstat/ch;

    iget-wide v2, p0, Lcom/baidu/mobstat/ca;->c:J

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mobstat/ch;-><init>(Lcom/baidu/mobstat/ca;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ca;->g:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lcom/baidu/mobstat/ca;->d:J

    goto :goto_0

    :cond_2
    const-string v0, " is_first_resume=false"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/support/v4/app/Fragment;J)V
    .locals 10

    const/4 v6, 0x0

    const-string v0, "post resume job"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/mobstat/ca;->n:Z

    if-eqz v0, :cond_0

    const-string v0, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ca;->n:Z

    invoke-direct {p0}, Lcom/baidu/mobstat/ca;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "is_first_resume=true"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ca;->a(Z)V

    iget-object v0, p0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/cd;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/cd;-><init>(Lcom/baidu/mobstat/ca;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    new-instance v0, Lcom/baidu/mobstat/ch;

    iget-wide v2, p0, Lcom/baidu/mobstat/ca;->c:J

    const/4 v9, 0x2

    move-object v1, p0

    move-wide v4, p2

    move-object v7, p1

    move-object v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mobstat/ch;-><init>(Lcom/baidu/mobstat/ca;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ca;->h:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lcom/baidu/mobstat/ca;->e:J

    return-void

    :cond_1
    const-string v0, "is_first_resume=false"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 10

    const/4 v6, 0x0

    const-string v0, "post resume job"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/baidu/mobstat/ca;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ca;->o:Z

    invoke-direct {p0}, Lcom/baidu/mobstat/ca;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "is_first_resume=true"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ca;->a(Z)V

    iget-object v0, p0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/ce;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ce;-><init>(Lcom/baidu/mobstat/ca;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    new-instance v0, Lcom/baidu/mobstat/ch;

    iget-wide v2, p0, Lcom/baidu/mobstat/ca;->c:J

    const/4 v9, 0x3

    move-object v1, p0

    move-wide v4, p2

    move-object v7, v6

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/baidu/mobstat/ch;-><init>(Lcom/baidu/mobstat/ca;JJLandroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ca;->i:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lcom/baidu/mobstat/ca;->f:J

    return-void

    :cond_1
    const-string v0, "is_first_resume=false"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lcom/baidu/mobstat/ca;->k:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x7530

    iput v0, p0, Lcom/baidu/mobstat/ca;->k:I

    :cond_0
    iget v0, p0, Lcom/baidu/mobstat/ca;->k:I

    return v0
.end method

.method public b(Landroid/content/Context;J)V
    .locals 18

    const-string v4, "post pause job"

    invoke-static {v4}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/mobstat/ca;->m:Z

    if-nez v4, :cond_0

    const-string v4, "\u9057\u6f0fStatService.onResume() || missing StatService.onResume()"

    invoke-static {v4}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/baidu/mobstat/ca;->m:Z

    new-instance v4, Lcom/baidu/mobstat/cg;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/baidu/mobstat/ca;->d:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/ca;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move-object/from16 v8, p1

    invoke-direct/range {v4 .. v17}, Lcom/baidu/mobstat/cg;-><init>(Lcom/baidu/mobstat/ca;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/ca;->c:J

    goto :goto_0
.end method

.method public b(Landroid/content/Context;JLjava/lang/String;)V
    .locals 18

    const-string v4, "post pause job"

    invoke-static {v4}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ca;->b(Ljava/lang/String;)Lcom/baidu/mobstat/cf;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v4, "\u81ea\u5b9a\u4e49\u9875\u9762 pageName \u4e3a null"

    invoke-static {v4}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v4, v5, Lcom/baidu/mobstat/cf;->b:Z

    if-nez v4, :cond_1

    const-string v4, "Please check (1)\u9057\u6f0fStatService.onPageStart() || missing StatService.onPageStart()"

    invoke-static {v4}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/baidu/mobstat/cf;->b:Z

    move-wide/from16 v0, p2

    iput-wide v0, v5, Lcom/baidu/mobstat/cf;->d:J

    new-instance v4, Lcom/baidu/mobstat/cg;

    const/4 v9, 0x0

    iget-wide v10, v5, Lcom/baidu/mobstat/cf;->c:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/ca;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move-object/from16 v8, p1

    move-object/from16 v15, p4

    invoke-direct/range {v4 .. v17}, Lcom/baidu/mobstat/cg;-><init>(Lcom/baidu/mobstat/ca;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/ca;->c:J

    goto :goto_0
.end method

.method public b(Landroid/support/v4/app/Fragment;J)V
    .locals 18

    const-string v4, "post pause job"

    invoke-static {v4}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/mobstat/ca;->n:Z

    if-nez v4, :cond_0

    const-string v4, "\u9057\u6f0fandroid.support.v4.app.Fragment StatService.onResume() || android.support.v4.app.Fragment missing StatService.onResume()"

    invoke-static {v4}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/baidu/mobstat/ca;->n:Z

    new-instance v4, Lcom/baidu/mobstat/cg;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/baidu/mobstat/ca;->e:J

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/ca;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/app/Fragment;

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v17}, Lcom/baidu/mobstat/cg;-><init>(Lcom/baidu/mobstat/ca;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/ca;->c:J

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;J)V
    .locals 18

    const-string v4, "post pause job"

    invoke-static {v4}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/baidu/mobstat/ca;->o:Z

    if-nez v4, :cond_0

    const-string v4, "\u9057\u6f0fandroid.app.Fragment StatService.onResume() || android.app.Fragment missing StatService.onResume()"

    invoke-static {v4}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/baidu/mobstat/ca;->o:Z

    new-instance v4, Lcom/baidu/mobstat/cg;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/baidu/mobstat/ca;->f:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/ca;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move-object/from16 v17, p1

    invoke-direct/range {v4 .. v17}, Lcom/baidu/mobstat/cg;-><init>(Lcom/baidu/mobstat/ca;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/mobstat/ca;->b:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/mobstat/ca;->c:J

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/ca;->j:Lcom/baidu/mobstat/by;

    iget-object v1, p0, Lcom/baidu/mobstat/ca;->j:Lcom/baidu/mobstat/by;

    invoke-virtual {v1}, Lcom/baidu/mobstat/by;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/by;->a(I)V

    return-void
.end method

.method public d()J
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobstat/ca;->j:Lcom/baidu/mobstat/by;

    invoke-virtual {v0}, Lcom/baidu/mobstat/by;->a()J

    move-result-wide v0

    return-wide v0
.end method
