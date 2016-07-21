.class Lcom/dianxinos/library/b/b/d/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/dianxinos/library/b/b/d/q;


# direct methods
.method constructor <init>(Lcom/dianxinos/library/b/b/d/q;Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/b/b/d/r;->c:Lcom/dianxinos/library/b/b/d/q;

    iput-object p2, p0, Lcom/dianxinos/library/b/b/d/r;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/dianxinos/library/b/b/d/r;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/r;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/r;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/library/b/b/d/r;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
