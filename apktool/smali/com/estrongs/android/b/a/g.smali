.class Lcom/estrongs/android/b/a/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/b/a/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/b/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/b/a/g;->a:Lcom/estrongs/android/b/a/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/b/a/n;

    invoke-direct {v0}, Lcom/estrongs/android/b/a/n;-><init>()V

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/n;->b()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/b/a/g;->a:Lcom/estrongs/android/b/a/f;

    iget-object v2, v0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    iput-object v2, v1, Lcom/estrongs/android/b/a/f;->a:Lcom/estrongs/android/b/a/h;

    iget-object v1, p0, Lcom/estrongs/android/b/a/g;->a:Lcom/estrongs/android/b/a/f;

    iget-object v2, v0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    iput-object v2, v1, Lcom/estrongs/android/b/a/f;->b:Lcom/estrongs/android/b/a/k;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/estrongs/android/b/a/n;->a(Lcom/estrongs/android/b/a/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/n;->b()V

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/b/a/g;->a:Lcom/estrongs/android/b/a/f;

    iget-object v2, v0, Lcom/estrongs/android/b/a/n;->a:Lcom/estrongs/android/b/a/h;

    iput-object v2, v1, Lcom/estrongs/android/b/a/f;->a:Lcom/estrongs/android/b/a/h;

    iget-object v1, p0, Lcom/estrongs/android/b/a/g;->a:Lcom/estrongs/android/b/a/f;

    iget-object v0, v0, Lcom/estrongs/android/b/a/n;->b:Lcom/estrongs/android/b/a/k;

    iput-object v0, v1, Lcom/estrongs/android/b/a/f;->b:Lcom/estrongs/android/b/a/k;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
