.class abstract Landroid/support/v4/content/ModernAsyncTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field private static final b:Ljava/util/concurrent/ThreadFactory;

.field private static final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Landroid/support/v4/content/g;

.field private static volatile e:Ljava/util/concurrent/Executor;


# instance fields
.field private final f:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile g:Landroid/support/v4/content/ModernAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroid/support/v4/content/e;

    invoke-direct {v0}, Landroid/support/v4/content/e;-><init>()V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->b:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Landroid/support/v4/content/ModernAsyncTask;->c:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Landroid/support/v4/content/ModernAsyncTask;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Landroid/support/v4/content/ModernAsyncTask;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/support/v4/content/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/content/g;-><init>(Landroid/support/v4/content/e;)V

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->d:Landroid/support/v4/content/g;

    sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->a:Ljava/util/concurrent/Executor;

    sput-object v0, Landroid/support/v4/content/ModernAsyncTask;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->b(Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask$Status;->FINISHED:Landroid/support/v4/content/ModernAsyncTask$Status;

    iput-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->g:Landroid/support/v4/content/ModernAsyncTask$Status;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/content/ModernAsyncTask;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected varargs a([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask;->a()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/ModernAsyncTask;->f:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method
