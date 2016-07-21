.class Lcom/estrongs/android/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/a/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/q;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/r;->c:Lcom/estrongs/android/a/q;

    iput-object p2, p0, Lcom/estrongs/android/a/r;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/estrongs/android/a/r;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/a/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/t;

    iget v4, v0, Lcom/estrongs/android/a/t;->b:I

    add-int/2addr v2, v4

    int-to-long v4, v1

    iget-wide v0, v0, Lcom/estrongs/android/a/t;->a:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    add-long/2addr v0, v4

    long-to-int v1, v0

    move v0, v1

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/estrongs/android/a/q;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "analyze finish"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/a/r;->c:Lcom/estrongs/android/a/q;

    invoke-static {v0}, Lcom/estrongs/android/a/q;->a(Lcom/estrongs/android/a/q;)Lcom/estrongs/android/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/a/r;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/estrongs/android/a/j;->a(Ljava/lang/String;)V

    return-void
.end method
