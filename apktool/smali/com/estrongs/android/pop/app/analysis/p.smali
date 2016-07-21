.class public Lcom/estrongs/android/pop/app/analysis/p;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field private e:Lcom/estrongs/android/ui/notification/d;

.field private f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Timer;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "appName"

    sput-object v0, Lcom/estrongs/android/pop/app/analysis/p;->a:Ljava/lang/String;

    const-string v0, "packageName"

    sput-object v0, Lcom/estrongs/android/pop/app/analysis/p;->b:Ljava/lang/String;

    const-string v0, "com.estrongs.analysis.sensitive"

    sput-object v0, Lcom/estrongs/android/pop/app/analysis/p;->c:Ljava/lang/String;

    const-string v0, "com.estrongs.analysis.action.NOTIFICATION_REMOVED"

    sput-object v0, Lcom/estrongs/android/pop/app/analysis/p;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->h:Z

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->g:Ljava/util/Timer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/app/analysis/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/p;-><init>()V

    return-void
.end method

.method public static a()Lcom/estrongs/android/pop/app/analysis/p;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/analysis/r;->a:Lcom/estrongs/android/pop/app/analysis/p;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->e:Lcom/estrongs/android/ui/notification/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->e:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/p;->d()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/analysis/p;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->g:Ljava/util/Timer;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/t;

    invoke-direct {v1, p0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/t;-><init>(Lcom/estrongs/android/pop/app/analysis/p;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    return-void
.end method

.method public a(Lcom/estrongs/android/ui/notification/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/p;->e:Lcom/estrongs/android/ui/notification/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/analysis/p;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->g:Ljava/util/Timer;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/analysis/s;-><init>(Lcom/estrongs/android/pop/app/analysis/p;Lcom/estrongs/android/pop/app/analysis/q;)V

    const-wide/32 v2, 0x6d67d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/analysis/p;->h:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->e:Lcom/estrongs/android/ui/notification/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/app/analysis/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/analysis/p;->d(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->e:Lcom/estrongs/android/ui/notification/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->e:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->e:Lcom/estrongs/android/ui/notification/d;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->f:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->e:Lcom/estrongs/android/ui/notification/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/estrongs/android/pop/app/analysis/p;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/estrongs/android/pop/app/analysis/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/p;->h:Z

    return v0
.end method
