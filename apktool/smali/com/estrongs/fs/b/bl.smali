.class Lcom/estrongs/fs/b/bl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/d/h;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/b/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/b/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/b/bl;->a:Lcom/estrongs/fs/b/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/fs/b/bl;->a:Lcom/estrongs/fs/b/bj;

    iget-object v0, v0, Lcom/estrongs/fs/b/bj;->a:Lcom/estrongs/fs/b/bc;

    invoke-static {v0}, Lcom/estrongs/fs/b/bc;->e(Lcom/estrongs/fs/b/bc;)Lcom/estrongs/a/a/h;

    move-result-object v1

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/bl;->a:Lcom/estrongs/fs/b/bj;

    iget-object v0, v0, Lcom/estrongs/fs/b/bj;->a:Lcom/estrongs/fs/b/bc;

    invoke-static {v0}, Lcom/estrongs/fs/b/bc;->e(Lcom/estrongs/fs/b/bc;)Lcom/estrongs/a/a/h;

    move-result-object v0

    const/4 v2, 0x1

    iput v2, v0, Lcom/estrongs/a/a/h;->g:I

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/bl;->a:Lcom/estrongs/fs/b/bj;

    iget-object v0, v0, Lcom/estrongs/fs/b/bj;->a:Lcom/estrongs/fs/b/bc;

    invoke-static {v0}, Lcom/estrongs/fs/b/bc;->e(Lcom/estrongs/fs/b/bc;)Lcom/estrongs/a/a/h;

    move-result-object v0

    iput-boolean p2, v0, Lcom/estrongs/a/a/h;->f:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/bl;->a:Lcom/estrongs/fs/b/bj;

    iget-object v0, v0, Lcom/estrongs/fs/b/bj;->a:Lcom/estrongs/fs/b/bc;

    invoke-static {v0}, Lcom/estrongs/fs/b/bc;->e(Lcom/estrongs/fs/b/bc;)Lcom/estrongs/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/bl;->a:Lcom/estrongs/fs/b/bj;

    iget-object v0, v0, Lcom/estrongs/fs/b/bj;->a:Lcom/estrongs/fs/b/bc;

    invoke-static {v0}, Lcom/estrongs/fs/b/bc;->e(Lcom/estrongs/fs/b/bc;)Lcom/estrongs/a/a/h;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, Lcom/estrongs/a/a/h;->g:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
