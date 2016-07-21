.class public Lcom/flurry/sdk/hl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kj;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/sdk/ig;

.field private c:Lcom/flurry/sdk/iy;

.field private d:Lcom/flurry/sdk/ii;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/hl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/hl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/hl;
    .locals 3

    const-class v1, Lcom/flurry/sdk/hl;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/hl;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/js;->a(Ljava/lang/Class;)Lcom/flurry/sdk/kj;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/flurry/sdk/lf;)Lcom/flurry/sdk/jb;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/flurry/sdk/jb;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/lf;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jb;

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "android.permission.INTERNET"

    invoke-static {p1, v0}, Lcom/flurry/sdk/lt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/hl;->a:Ljava/lang/String;

    const-string v1, "Application must declare permission: android.permission.INTERNET"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/flurry/sdk/lt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/flurry/sdk/hl;->a:Ljava/lang/String;

    const-string v1, "It is highly recommended that the application declare permission: android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/flurry/sdk/kg;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private h()Lcom/flurry/sdk/jb;
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/lh;->a()Lcom/flurry/sdk/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/lh;->e()Lcom/flurry/sdk/lf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/hl;->a(Lcom/flurry/sdk/lf;)Lcom/flurry/sdk/jb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v1

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v1

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v1

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, p1, p2, v0}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v1

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v1

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p2}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/flurry/sdk/jb;

    invoke-static {v0}, Lcom/flurry/sdk/lf;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/flurry/sdk/iy;

    invoke-direct {v0}, Lcom/flurry/sdk/iy;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hl;->c:Lcom/flurry/sdk/iy;

    new-instance v0, Lcom/flurry/sdk/ig;

    invoke-direct {v0}, Lcom/flurry/sdk/ig;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hl;->b:Lcom/flurry/sdk/ig;

    new-instance v0, Lcom/flurry/sdk/ii;

    invoke-direct {v0}, Lcom/flurry/sdk/ii;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/hl;->d:Lcom/flurry/sdk/ii;

    invoke-direct {p0, p1}, Lcom/flurry/sdk/hl;->b(Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v0, v1

    if-le v0, v4, :cond_1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v1

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/flurry/sdk/jd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p3, v2}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/hl;->d:Lcom/flurry/sdk/ii;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/hl;->d:Lcom/flurry/sdk/ii;

    invoke-virtual {v0}, Lcom/flurry/sdk/ii;->c()V

    iput-object v1, p0, Lcom/flurry/sdk/hl;->d:Lcom/flurry/sdk/ii;

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/hl;->c:Lcom/flurry/sdk/iy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/hl;->c:Lcom/flurry/sdk/iy;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy;->a()V

    iput-object v1, p0, Lcom/flurry/sdk/hl;->c:Lcom/flurry/sdk/iy;

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/hl;->b:Lcom/flurry/sdk/ig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/hl;->b:Lcom/flurry/sdk/ig;

    invoke-virtual {v0}, Lcom/flurry/sdk/ig;->a()V

    iput-object v1, p0, Lcom/flurry/sdk/hl;->b:Lcom/flurry/sdk/ig;

    :cond_2
    const-class v0, Lcom/flurry/sdk/jb;

    invoke-static {v0}, Lcom/flurry/sdk/lf;->b(Ljava/lang/Class;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/flurry/sdk/ig;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/hl;->b:Lcom/flurry/sdk/ig;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/sdk/jb;->a(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;

    :cond_0
    return-void
.end method

.method public d()Lcom/flurry/sdk/iy;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/hl;->c:Lcom/flurry/sdk/iy;

    return-object v0
.end method

.method public e()Lcom/flurry/sdk/ii;
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/hl;->d:Lcom/flurry/sdk/ii;

    return-object v0
.end method

.method public f()V
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/jb;->a()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    invoke-direct {p0}, Lcom/flurry/sdk/hl;->h()Lcom/flurry/sdk/jb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/flurry/sdk/jb;->b()V

    :cond_0
    return-void
.end method
