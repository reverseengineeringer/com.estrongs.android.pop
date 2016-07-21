.class Lcom/estrongs/fs/impl/t/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/fs/impl/t/a;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/t/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/t/e;->c:Lcom/estrongs/fs/impl/t/a;

    iput-object p2, p0, Lcom/estrongs/fs/impl/t/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/fs/impl/t/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/impl/t/e;->c:Lcom/estrongs/fs/impl/t/a;

    invoke-static {v0}, Lcom/estrongs/fs/impl/t/a;->b(Lcom/estrongs/fs/impl/t/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/t/e;->c:Lcom/estrongs/fs/impl/t/a;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/t/a;->f()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/impl/t/e;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/fs/impl/t/e;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/estrongs/fs/impl/t/e;->c:Lcom/estrongs/fs/impl/t/a;

    invoke-virtual {v2, v0}, Lcom/estrongs/fs/impl/t/a;->c(Ljava/util/List;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
