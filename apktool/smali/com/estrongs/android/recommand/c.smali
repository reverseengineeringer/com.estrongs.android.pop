.class public final Lcom/estrongs/android/recommand/c;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/lang/String;

.field private static volatile c:Lcom/estrongs/android/recommand/c;


# instance fields
.field a:Lcom/estrongs/android/recommand/l;

.field private d:Lcom/estrongs/android/recommand/a;

.field private e:Lcom/estrongs/android/recommand/b;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/recommand/n;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/recommand/n;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/estrongs/android/recommand/j;

.field private i:Lcom/estrongs/android/recommand/k;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/recommand/p;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/estrongs/android/recommand/m;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/estrongs/android/recommand/p;

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/recommand/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/recommand/c;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/recommand/c;->n:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/recommand/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/estrongs/android/recommand/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/recommand/c;->q:Ljava/lang/Object;

    new-instance v0, Lcom/estrongs/android/recommand/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/recommand/g;-><init>(Lcom/estrongs/android/recommand/c;)V

    iput-object v0, p0, Lcom/estrongs/android/recommand/c;->r:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/recommand/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/recommand/h;-><init>(Lcom/estrongs/android/recommand/c;)V

    iput-object v0, p0, Lcom/estrongs/android/recommand/c;->s:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/recommand/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/recommand/i;-><init>(Lcom/estrongs/android/recommand/c;)V

    iput-object v0, p0, Lcom/estrongs/android/recommand/c;->a:Lcom/estrongs/android/recommand/l;

    invoke-virtual {p0}, Lcom/estrongs/android/recommand/c;->b()V

    return-void
.end method

.method public static a()Lcom/estrongs/android/recommand/c;
    .locals 2

    sget-object v0, Lcom/estrongs/android/recommand/c;->c:Lcom/estrongs/android/recommand/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/estrongs/android/recommand/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/recommand/c;->c:Lcom/estrongs/android/recommand/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/recommand/c;

    invoke-direct {v0}, Lcom/estrongs/android/recommand/c;-><init>()V

    sput-object v0, Lcom/estrongs/android/recommand/c;->c:Lcom/estrongs/android/recommand/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/estrongs/android/recommand/c;->c:Lcom/estrongs/android/recommand/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/estrongs/android/recommand/p;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/recommand/p;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/recommand/p;->c:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/recommand/e;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/recommand/e;-><init>(Lcom/estrongs/android/recommand/c;Lcom/estrongs/android/recommand/p;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bh;->a(Ljava/lang/String;Lcom/estrongs/android/util/bj;)V

    :cond_2
    iget-object v0, p1, Lcom/estrongs/android/recommand/p;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/recommand/p;->d:Ljava/lang/String;

    new-instance v1, Lcom/estrongs/android/recommand/f;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/recommand/f;-><init>(Lcom/estrongs/android/recommand/c;Lcom/estrongs/android/recommand/p;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bh;->a(Ljava/lang/String;Lcom/estrongs/android/util/bj;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/util/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/an;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "preload_Ads_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/recommand/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/recommand/c;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/recommand/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/recommand/c;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/recommand/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->g:Ljava/util/List;

    return-object v0
.end method

.method public static c()V
    .locals 0

    invoke-static {}, Lcom/estrongs/android/recommand/c;->a()Lcom/estrongs/android/recommand/c;

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/recommand/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/recommand/c;->k()V

    return-void
.end method

.method public static d()V
    .locals 2

    sget-object v0, Lcom/estrongs/android/recommand/c;->c:Lcom/estrongs/android/recommand/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/estrongs/android/recommand/c;->c:Lcom/estrongs/android/recommand/c;

    iget-object v0, v0, Lcom/estrongs/android/recommand/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/recommand/n;

    invoke-interface {v0}, Lcom/estrongs/android/recommand/n;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/recommand/c;->c:Lcom/estrongs/android/recommand/c;

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/recommand/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/recommand/c;->j()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/recommand/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/recommand/c;->l()V

    return-void
.end method

.method public static e()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/estrongs/android/recommand/c;->n()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v2, "ad_toolbox_pager"

    invoke-static {v2, v0}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static f()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/estrongs/android/recommand/c;->n()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v2, "ad_app_manager_top_switch"

    invoke-static {v2, v0}, Lcom/estrongs/android/i/a;->a(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->d:Lcom/estrongs/android/recommand/a;

    invoke-virtual {v0}, Lcom/estrongs/android/recommand/a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->d:Lcom/estrongs/android/recommand/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/recommand/a;->a(Ljava/lang/Integer;)Lcom/estrongs/android/recommand/o;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->e:Lcom/estrongs/android/recommand/b;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/recommand/b;->a(Lcom/estrongs/android/recommand/o;)Lcom/estrongs/android/recommand/n;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/estrongs/android/recommand/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ad provider is null! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/estrongs/android/recommand/o;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/estrongs/android/recommand/n;->init()V

    iget v0, v0, Lcom/estrongs/android/recommand/o;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private h()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->d:Lcom/estrongs/android/recommand/a;

    invoke-virtual {v0}, Lcom/estrongs/android/recommand/a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->d:Lcom/estrongs/android/recommand/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/recommand/a;->a(Ljava/lang/Integer;)Lcom/estrongs/android/recommand/o;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->e:Lcom/estrongs/android/recommand/b;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/recommand/b;->a(Lcom/estrongs/android/recommand/o;)Lcom/estrongs/android/recommand/n;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/estrongs/android/recommand/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app provider is null! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/estrongs/android/recommand/o;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/estrongs/android/recommand/n;->init()V

    iget v0, v0, Lcom/estrongs/android/recommand/o;->a:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private i()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/recommand/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/recommand/d;-><init>(Lcom/estrongs/android/recommand/c;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/pop/FexApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private j()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/recommand/n;

    invoke-interface {v0}, Lcom/estrongs/android/recommand/n;->load()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/recommand/p;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/estrongs/android/recommand/c;->a(Lcom/estrongs/android/recommand/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/recommand/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_4
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->q:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    :try_start_4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/recommand/p;

    iput-object v0, p0, Lcom/estrongs/android/recommand/c;->l:Lcom/estrongs/android/recommand/p;

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->j:Ljava/util/List;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iput-object v1, p0, Lcom/estrongs/android/recommand/c;->j:Ljava/util/List;

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->h:Lcom/estrongs/android/recommand/j;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->h:Lcom/estrongs/android/recommand/j;

    iget-object v1, p0, Lcom/estrongs/android/recommand/c;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/estrongs/android/recommand/j;->a(Ljava/util/List;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/recommand/n;

    invoke-interface {v0}, Lcom/estrongs/android/recommand/n;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/recommand/c;->m()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l()V
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->k:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/estrongs/android/recommand/c;->k:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v1

    move v4, v1

    :goto_1
    :try_start_2
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/recommand/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/recommand/n;

    invoke-interface {v1}, Lcom/estrongs/android/recommand/n;->load()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_2
    invoke-static {}, Lcom/estrongs/android/util/an;->b()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/estrongs/android/util/an;->d()Z

    move-result v2

    if-nez v2, :cond_5

    move v1, v3

    :goto_2
    if-eqz v1, :cond_9

    sget-object v1, Lcom/estrongs/android/recommand/c;->b:Ljava/lang/String;

    const-string v2, "networks error for load app!"

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->k:Ljava/util/Set;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-object v6, p0, Lcom/estrongs/android/recommand/c;->k:Ljava/util/Set;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v1, p0, Lcom/estrongs/android/recommand/c;->i:Lcom/estrongs/android/recommand/k;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/recommand/c;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/recommand/c;->i:Lcom/estrongs/android/recommand/k;

    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->k:Ljava/util/Set;

    invoke-interface {v1, v2}, Lcom/estrongs/android/recommand/k;->a(Ljava/util/Set;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/recommand/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v1, p0, Lcom/estrongs/android/recommand/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_5
    :try_start_8
    invoke-interface {v1}, Lcom/estrongs/android/recommand/n;->getStatusCode()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/recommand/p;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->a:Lcom/estrongs/android/recommand/l;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->a:Lcom/estrongs/android/recommand/l;

    invoke-interface {v2, v1}, Lcom/estrongs/android/recommand/l;->a(Lcom/estrongs/android/recommand/p;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_8
    move-object v0, v1

    check-cast v0, Lcom/estrongs/android/recommand/m;

    move-object v2, v0

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v1}, Lcom/estrongs/android/recommand/c;->a(Lcom/estrongs/android/recommand/p;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/estrongs/android/recommand/c;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1

    :cond_9
    add-int/lit8 v2, v5, 0x1

    const/4 v4, 0x2

    if-ge v5, v4, :cond_3

    move v5, v2

    move v4, v1

    goto/16 :goto_1

    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_a
    move v1, v4

    goto :goto_2
.end method

.method private m()V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/recommand/c;->k:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->s:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/estrongs/android/recommand/c;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static n()Z
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/recommand/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/recommand/c;->a:Lcom/estrongs/android/recommand/l;

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/estrongs/android/recommand/b;->a()Lcom/estrongs/android/recommand/b;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/recommand/c;->e:Lcom/estrongs/android/recommand/b;

    new-instance v1, Lcom/estrongs/android/recommand/a;

    invoke-direct {v1}, Lcom/estrongs/android/recommand/a;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/recommand/c;->d:Lcom/estrongs/android/recommand/a;

    iget-object v1, p0, Lcom/estrongs/android/recommand/c;->d:Lcom/estrongs/android/recommand/a;

    invoke-virtual {v1}, Lcom/estrongs/android/recommand/a;->a()V

    iget-object v1, p0, Lcom/estrongs/android/recommand/c;->a:Lcom/estrongs/android/recommand/l;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/recommand/c;->a(Lcom/estrongs/android/recommand/l;)V

    invoke-static {v0}, Lcom/estrongs/android/util/bh;->a(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/recommand/c;->j:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/recommand/c;->f:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/recommand/c;->m:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/recommand/c;->k:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/recommand/c;->g:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/android/recommand/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/recommand/c;->g()V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/recommand/c;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/recommand/c;->h()V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/util/an;->b()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/estrongs/android/util/an;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/recommand/c;->n:Z

    iget-boolean v0, p0, Lcom/estrongs/android/recommand/c;->n:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/recommand/c;->s:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/estrongs/android/recommand/c;->a(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/estrongs/android/recommand/c;->i()V

    goto :goto_1
.end method
