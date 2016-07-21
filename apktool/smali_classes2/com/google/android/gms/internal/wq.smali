.class public Lcom/google/android/gms/internal/wq;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Lcom/google/android/gms/internal/wr;

.field private static b:Lcom/google/android/gms/internal/wq;


# instance fields
.field private final c:Landroid/app/Application;

.field private d:Lcom/google/android/gms/internal/wy;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/wr;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/internal/xb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/wr;

    sput-object v0, Lcom/google/android/gms/internal/wq;->a:[Lcom/google/android/gms/internal/wr;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/wq;->c:Landroid/app/Application;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/wq;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/wq;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/google/android/gms/internal/wq;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/wq;->b:Lcom/google/android/gms/internal/wq;

    if-nez v2, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/wq;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/wq;-><init>(Landroid/app/Application;)V

    sput-object v2, Lcom/google/android/gms/internal/wq;->b:Lcom/google/android/gms/internal/wq;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/wq;->b:Lcom/google/android/gms/internal/wq;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()[Lcom/google/android/gms/internal/wr;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/wq;->e:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/wq;->a:[Lcom/google/android/gms/internal/wr;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wq;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/wq;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/wr;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/wr;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/wy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wq;->d:Lcom/google/android/gms/internal/wy;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/wr;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/wq;->e:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wq;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/wq;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/wy;Landroid/app/Activity;)V
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wy;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v0, p2, Lcom/google/android/gms/internal/wp;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/wp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/wp;->a(Lcom/google/android/gms/internal/wy;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wq;->d:Lcom/google/android/gms/internal/wy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/wq;->d:Lcom/google/android/gms/internal/wy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wy;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wy;->b(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/wq;->d:Lcom/google/android/gms/internal/wy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wy;->b(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wq;->d()[Lcom/google/android/gms/internal/wr;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/wr;->a(Lcom/google/android/gms/internal/wy;Landroid/app/Activity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/wy;->h()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wy;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    move-object v0, v2

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/wq;->d:Lcom/google/android/gms/internal/wy;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/wq;->d:Lcom/google/android/gms/internal/wy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wy;->c()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wy;->c()I

    move-result v3

    if-ne v2, v3, :cond_6

    iput-object p1, p0, Lcom/google/android/gms/internal/wq;->d:Lcom/google/android/gms/internal/wy;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wq;->b()V

    iput-object p1, p0, Lcom/google/android/gms/internal/wq;->d:Lcom/google/android/gms/internal/wy;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/wq;->d()[Lcom/google/android/gms/internal/wr;

    move-result-object v0

    :cond_7
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/wr;->a(Lcom/google/android/gms/internal/wy;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public a(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    const-string v0, "com.google.android.gms.measurement.ScreenViewService"

    const-string v1, "AutoScreeViewTracking is not supported on API 14 or earlier devices"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/wq;->c()Z

    move-result v0

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/xb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/xb;-><init>(Lcom/google/android/gms/internal/wq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/wq;->f:Lcom/google/android/gms/internal/xb;

    iget-object v0, p0, Lcom/google/android/gms/internal/wq;->c:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/wq;->f:Lcom/google/android/gms/internal/xb;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/wq;->c:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/wq;->f:Lcom/google/android/gms/internal/xb;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/wq;->f:Lcom/google/android/gms/internal/xb;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/wq;->d:Lcom/google/android/gms/internal/wy;

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/wq;->f:Lcom/google/android/gms/internal/xb;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
