.class Lcom/estrongs/fs/impl/t/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/fs/impl/t/a;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/impl/t/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/t/d;->b:Lcom/estrongs/fs/impl/t/a;

    iput-object p2, p0, Lcom/estrongs/fs/impl/t/d;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/fs/impl/t/d;->b:Lcom/estrongs/fs/impl/t/a;

    invoke-static {v0}, Lcom/estrongs/fs/impl/t/a;->b(Lcom/estrongs/fs/impl/t/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/impl/t/d;->b:Lcom/estrongs/fs/impl/t/a;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/t/a;->f()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/estrongs/fs/impl/t/d;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/estrongs/fs/impl/t/d;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/fs/impl/t/d;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/impl/t/d;->b:Lcom/estrongs/fs/impl/t/a;

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/impl/t/a;->c(Ljava/util/List;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
