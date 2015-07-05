.class public Lcom/estrongs/android/pop/app/be;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/zeroconf/v;


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static e:Lcom/estrongs/android/pop/app/be;


# instance fields
.field private d:Lcom/estrongs/android/pop/zeroconf/w;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Ljava/lang/Object;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/bj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/be;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/be;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/app/be;->e:Lcom/estrongs/android/pop/app/be;

    const v0, 0xa498

    sput v0, Lcom/estrongs/android/pop/app/be;->a:I

    const-string v0, "ESDevice"

    sput-object v0, Lcom/estrongs/android/pop/app/be;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/be;->d:Lcom/estrongs/android/pop/zeroconf/w;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/be;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/be;->h:Ljava/util/ArrayList;

    new-instance v0, Lcom/estrongs/android/pop/app/bf;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/bf;-><init>(Lcom/estrongs/android/pop/app/be;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/be;->f:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/be;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/FexApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/app/be;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/be;->e:Lcom/estrongs/android/pop/app/be;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/be;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/be;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/be;->e:Lcom/estrongs/android/pop/app/be;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/be;->e:Lcom/estrongs/android/pop/app/be;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/be;Lcom/estrongs/android/pop/zeroconf/w;)Lcom/estrongs/android/pop/zeroconf/w;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/be;->d:Lcom/estrongs/android/pop/zeroconf/w;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/be;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/be;->e()V

    return-void
.end method

.method public static b()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/be;->a()Lcom/estrongs/android/pop/app/be;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/be;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/be;->d()V

    return-void
.end method

.method private c(Lcom/estrongs/android/pop/zeroconf/u;)Lcom/estrongs/android/pop/app/bi;
    .locals 4

    new-instance v0, Lcom/estrongs/android/pop/app/bi;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/bi;-><init>()V

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/u;->f:Ljava/net/Inet4Address;

    iput-object v1, v0, Lcom/estrongs/android/pop/app/bi;->a:Ljava/net/Inet4Address;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/zeroconf/u;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/bi;->a(Lcom/estrongs/android/pop/app/bi;Ljava/util/Map;)Ljava/util/Map;

    iget-object v1, p1, Lcom/estrongs/android/pop/zeroconf/u;->a:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p1, Lcom/estrongs/android/pop/zeroconf/u;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/bi;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/be;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/be;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/be;)Lcom/estrongs/android/pop/zeroconf/w;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/be;->d:Lcom/estrongs/android/pop/zeroconf/w;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/be;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/be;->d:Lcom/estrongs/android/pop/zeroconf/w;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/be;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/be;->d:Lcom/estrongs/android/pop/zeroconf/w;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/bg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bg;-><init>(Lcom/estrongs/android/pop/app/be;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private e()V
    .locals 4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/be;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/be;->d:Lcom/estrongs/android/pop/zeroconf/w;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/be;->d:Lcom/estrongs/android/pop/zeroconf/w;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/estrongs/android/pop/app/be;->d:Lcom/estrongs/android/pop/zeroconf/w;

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/estrongs/android/pop/app/bh;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/app/bh;-><init>(Lcom/estrongs/android/pop/app/be;Lcom/estrongs/android/pop/zeroconf/w;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

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
.method public a(Lcom/estrongs/android/pop/app/bj;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/be;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/zeroconf/u;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/be;->c(Lcom/estrongs/android/pop/zeroconf/u;)Lcom/estrongs/android/pop/app/bi;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/be;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/bj;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/bj;->a(Lcom/estrongs/android/pop/app/bi;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/estrongs/android/pop/app/bj;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/be;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/estrongs/android/pop/zeroconf/u;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/be;->c(Lcom/estrongs/android/pop/zeroconf/u;)Lcom/estrongs/android/pop/app/bi;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/be;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/bj;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/bj;->b(Lcom/estrongs/android/pop/app/bi;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/be;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/be;->d:Lcom/estrongs/android/pop/zeroconf/w;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/estrongs/android/pop/zeroconf/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/estrongs/android/pop/app/be;->d:Lcom/estrongs/android/pop/zeroconf/w;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/estrongs/android/pop/zeroconf/w;->a(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
