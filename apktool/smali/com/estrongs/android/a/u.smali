.class Lcom/estrongs/android/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/q;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/u;->a:Lcom/estrongs/android/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/a/q;Lcom/estrongs/android/a/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/a/u;-><init>(Lcom/estrongs/android/a/q;)V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "DB Analyzer"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
