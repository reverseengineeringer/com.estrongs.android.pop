.class public abstract Lcom/estrongs/android/d/k;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Lcom/estrongs/android/d/m;

.field c:Lcom/estrongs/android/d/m;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/d/m;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/d/m;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/Thread;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/d/k;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/d/k;->e:Ljava/util/Map;

    const-string v0, "ThumnailLoader"

    iput-object v0, p0, Lcom/estrongs/android/d/k;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/d/k;->a:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/estrongs/android/d/k;->h:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/d/k;->e()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/d/k;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/d/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/d/k;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/d/k;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/d/k;->e:Ljava/util/Map;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/d/k;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/d/k;->f:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/d/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/d/n;-><init>(Lcom/estrongs/android/d/k;Lcom/estrongs/android/d/l;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v1, p0, Lcom/estrongs/android/d/k;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/d/k;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/d/k;->a:Z

    return-void
.end method

.method public a(ILcom/estrongs/fs/h;Landroid/widget/ImageView;)V
    .locals 4

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/d/k;->g:Ljava/lang/Thread;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/d/k;->e()V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/estrongs/android/d/m;

    invoke-direct {v2, p1, p2, p3}, Lcom/estrongs/android/d/m;-><init>(ILcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/estrongs/android/d/k;->e:Ljava/util/Map;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/d/m;

    iput-object v0, p0, Lcom/estrongs/android/d/k;->b:Lcom/estrongs/android/d/m;

    iget-object v0, p0, Lcom/estrongs/android/d/k;->b:Lcom/estrongs/android/d/m;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/d/k;->e:Ljava/util/Map;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/estrongs/android/d/k;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/estrongs/android/d/k;->b:Lcom/estrongs/android/d/m;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected abstract a(Lcom/estrongs/android/d/m;)Z
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/d/k;->a:Z

    iget-object v1, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract b(Lcom/estrongs/android/d/m;)Z
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/d/k;->f:Z

    iget-object v1, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/d/k;->g:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/d/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/d/k;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/d/k;->c:Lcom/estrongs/android/d/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/d/m;->g:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
