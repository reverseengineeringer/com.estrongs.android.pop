.class public Lcom/estrongs/android/pop/multicopy/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;

.field private b:Lcom/estrongs/a/a;

.field private c:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;Lcom/estrongs/a/a;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/multicopy/c;->a:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/multicopy/c;->c:Landroid/os/ConditionVariable;

    iput-object p2, p0, Lcom/estrongs/android/pop/multicopy/c;->b:Lcom/estrongs/a/a;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/multicopy/c;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/c;->c:Landroid/os/ConditionVariable;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/multicopy/c;->b:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ad;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/multicopy/c;->b:Lcom/estrongs/a/a;

    new-instance v2, Lcom/estrongs/android/pop/multicopy/d;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/multicopy/d;-><init>(Lcom/estrongs/android/pop/multicopy/c;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/multicopy/c;->a:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;

    invoke-static {v1}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->a(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;)Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy$SegmentInfos;->isChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/multicopy/c;->a:Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;

    invoke-static {v1}, Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;->b(Lcom/estrongs/android/pop/multicopy/MultiThreadCopy;)V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/multicopy/c;->b:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/multicopy/c;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    iget-object v1, p0, Lcom/estrongs/android/pop/multicopy/c;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    :cond_2
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void
.end method
