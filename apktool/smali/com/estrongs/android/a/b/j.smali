.class Lcom/estrongs/android/a/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/estrongs/android/a/b/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/b/i;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/b/j;->b:Lcom/estrongs/android/a/b/i;

    iput-object p2, p0, Lcom/estrongs/android/a/b/j;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/a/b/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/q;

    instance-of v2, v0, Lcom/estrongs/android/a/b/i;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/estrongs/android/a/b/i;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/i;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/a/b/i;->b(Lcom/estrongs/android/a/b/i;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/a/b/j;->b:Lcom/estrongs/android/a/b/i;

    invoke-static {v2, v0}, Lcom/estrongs/android/a/b/i;->a(Lcom/estrongs/android/a/b/i;Lcom/estrongs/android/a/b/i;)V

    goto :goto_0

    :cond_1
    return-void
.end method
