.class public Lcom/estrongs/android/pop/app/b/m;
.super Ljava/util/Observable;

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/Observer;


# static fields
.field protected static a:I

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Z

.field private f:Lcom/estrongs/android/pop/app/b/c;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/b/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/b/m;->b:Ljava/lang/String;

    const/16 v0, 0x1e

    sput v0, Lcom/estrongs/android/pop/app/b/m;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/app/b/c;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/m;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/m;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/b/m;->e:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/b/m;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/m;->h:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/m;->f:Lcom/estrongs/android/pop/app/b/c;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/b/m;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/m;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/m;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/m;->f:Lcom/estrongs/android/pop/app/b/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/c;->b()Ljava/util/Vector;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-static {}, Lcom/estrongs/a/a;->getCurrentTask()Lcom/estrongs/a/a;

    move-result-object v0

    iget-boolean v4, p0, Lcom/estrongs/android/pop/app/b/m;->e:Z

    if-eqz v4, :cond_3

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/m;->e:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/m;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x258

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/a/a;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/estrongs/android/pop/app/b/c;->a()Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/c;->e()V

    :cond_4
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    :goto_3
    iget-object v4, p0, Lcom/estrongs/android/pop/app/b/m;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    sget v5, Lcom/estrongs/android/pop/app/b/m;->a:I

    if-le v4, v5, :cond_5

    const-wide/16 v4, 0x46

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_3

    :cond_5
    new-instance v4, Lcom/estrongs/android/pop/app/b/p;

    invoke-direct {v4, v0, p1}, Lcom/estrongs/android/pop/app/b/p;-><init>(Ljava/net/InetAddress;Ljava/util/ArrayList;)V

    invoke-virtual {v4, p0}, Lcom/estrongs/android/pop/app/b/p;->addObserver(Ljava/util/Observer;)V

    new-instance v0, Lcom/estrongs/android/pop/app/b/n;

    invoke-direct {v0, p0, v4}, Lcom/estrongs/android/pop/app/b/n;-><init>(Lcom/estrongs/android/pop/app/b/m;Ljava/lang/Runnable;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/b/n;->setPriority(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/n;->start()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/m;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/b/f;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/m;->c:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/m;->g:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/m;->e:Z

    return-void
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/m;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/b/m;->b:Ljava/lang/String;

    const-string v1, "ScanAllHosts run error, scan type is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/m;->g:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/b/m;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/b/f;

    iget v4, v1, Lcom/estrongs/android/pop/app/b/f;->g:I

    if-nez v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/b/m;->b(Ljava/util/ArrayList;)V

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/b/m;->b(Ljava/util/ArrayList;)V

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/m;->setChanged()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/m;->notifyObservers()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/m;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-boolean v5, p0, Lcom/estrongs/android/pop/app/b/m;->e:Z

    iput-boolean v5, p0, Lcom/estrongs/android/pop/app/b/m;->g:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/m;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/b/m;->b(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/estrongs/android/pop/app/b/p;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/estrongs/android/pop/app/b/o;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/estrongs/android/pop/app/b/o;

    iget v0, v0, Lcom/estrongs/android/pop/app/b/o;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/m;->setChanged()V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/b/m;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0
.end method
