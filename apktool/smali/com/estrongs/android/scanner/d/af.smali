.class public Lcom/estrongs/android/scanner/d/af;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/estrongs/android/scanner/d/af;


# instance fields
.field private b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/scanner/d/af;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/d/af;-><init>()V

    sput-object v0, Lcom/estrongs/android/scanner/d/af;->a:Lcom/estrongs/android/scanner/d/af;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x1400

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/estrongs/android/scanner/am;

    const-string v0, "FlusherThread"

    invoke-direct {v8, v0}, Lcom/estrongs/android/scanner/am;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/estrongs/android/scanner/d/af;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/af;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/estrongs/android/scanner/d/ag;

    invoke-direct {v1, p0}, Lcom/estrongs/android/scanner/d/ag;-><init>(Lcom/estrongs/android/scanner/d/af;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public static a()Lcom/estrongs/android/scanner/d/af;
    .locals 1

    sget-object v0, Lcom/estrongs/android/scanner/d/af;->a:Lcom/estrongs/android/scanner/d/af;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/af;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
