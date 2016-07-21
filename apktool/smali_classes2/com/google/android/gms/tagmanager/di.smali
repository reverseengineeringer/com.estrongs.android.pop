.class Lcom/google/android/gms/tagmanager/di;
.super Lcom/google/android/gms/tagmanager/dh;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static n:Lcom/google/android/gms/tagmanager/di;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/tagmanager/au;

.field private volatile d:Lcom/google/android/gms/tagmanager/ar;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/google/android/gms/tagmanager/av;

.field private k:Landroid/os/Handler;

.field private l:Lcom/google/android/gms/tagmanager/bl;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/di;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/dh;-><init>()V

    const v0, 0x1b7740

    iput v0, p0, Lcom/google/android/gms/tagmanager/di;->e:I

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/di;->f:Z

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/di;->g:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/di;->h:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/di;->i:Z

    new-instance v0, Lcom/google/android/gms/tagmanager/dj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/dj;-><init>(Lcom/google/android/gms/tagmanager/di;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/di;->j:Lcom/google/android/gms/tagmanager/av;

    iput-boolean v2, p0, Lcom/google/android/gms/tagmanager/di;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/di;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/di;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/tagmanager/di;->e:I

    return v0
.end method

.method public static c()Lcom/google/android/gms/tagmanager/di;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/di;->n:Lcom/google/android/gms/tagmanager/di;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/di;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/di;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/di;->n:Lcom/google/android/gms/tagmanager/di;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/di;->n:Lcom/google/android/gms/tagmanager/di;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/di;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->m:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/tagmanager/di;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/tagmanager/di;)Lcom/google/android/gms/tagmanager/au;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->c:Lcom/google/android/gms/tagmanager/au;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/di;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private f()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/tagmanager/bl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/bl;-><init>(Lcom/google/android/gms/tagmanager/dh;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/di;->l:Lcom/google/android/gms/tagmanager/bl;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->l:Lcom/google/android/gms/tagmanager/bl;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/di;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/bl;->a(Landroid/content/Context;)V

    return-void
.end method

.method private g()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/di;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/tagmanager/dk;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/dk;-><init>(Lcom/google/android/gms/tagmanager/di;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/di;->k:Landroid/os/Handler;

    iget v0, p0, Lcom/google/android/gms/tagmanager/di;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/di;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/di;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/tagmanager/di;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->g:Z

    if-nez v0, :cond_0

    const-string v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bg;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->d:Lcom/google/android/gms/tagmanager/ar;

    new-instance v1, Lcom/google/android/gms/tagmanager/dl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/dl;-><init>(Lcom/google/android/gms/tagmanager/di;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/ar;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ar;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/di;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->d:Lcom/google/android/gms/tagmanager/ar;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/di;->d:Lcom/google/android/gms/tagmanager/ar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->m:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/tagmanager/di;->a(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->m:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/tagmanager/di;->e:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/di;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget v0, p0, Lcom/google/android/gms/tagmanager/di;->e:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/di;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/di;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/tagmanager/di;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bg;->e(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/tagmanager/di;->m:Z

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/di;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/tagmanager/di;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/tagmanager/di;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/di;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/tagmanager/di;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized d()Lcom/google/android/gms/tagmanager/au;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->c:Lcom/google/android/gms/tagmanager/au;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/tagmanager/bz;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/di;->j:Lcom/google/android/gms/tagmanager/av;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/di;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/bz;-><init>(Lcom/google/android/gms/tagmanager/av;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/di;->c:Lcom/google/android/gms/tagmanager/au;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->k:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/di;->g()V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->g:Z

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->f:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/di;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->f:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->l:Lcom/google/android/gms/tagmanager/bl;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/di;->i:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/di;->f()V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/di;->c:Lcom/google/android/gms/tagmanager/au;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method
