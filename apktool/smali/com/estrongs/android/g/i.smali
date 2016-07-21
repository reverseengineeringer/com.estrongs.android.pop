.class Lcom/estrongs/android/g/i;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/estrongs/android/g/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/g/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/g/i;->a:Lcom/estrongs/android/g/h;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/g/i;->a:Lcom/estrongs/android/g/h;

    iget-object v0, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v0}, Lcom/estrongs/android/g/f;->c(Lcom/estrongs/android/g/f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/g/i;->a:Lcom/estrongs/android/g/h;

    iget-object v0, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v0}, Lcom/estrongs/android/g/f;->h(Lcom/estrongs/android/g/f;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/g/i;->a:Lcom/estrongs/android/g/h;

    iget-object v0, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v0}, Lcom/estrongs/android/g/f;->e(Lcom/estrongs/android/g/f;)Lcom/estrongs/android/ui/notification/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/g/i;->a:Lcom/estrongs/android/g/h;

    iget-object v0, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    invoke-static {v0}, Lcom/estrongs/android/g/f;->e(Lcom/estrongs/android/g/f;)Lcom/estrongs/android/ui/notification/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->e()V

    iget-object v0, p0, Lcom/estrongs/android/g/i;->a:Lcom/estrongs/android/g/h;

    iget-object v0, v0, Lcom/estrongs/android/g/h;->a:Lcom/estrongs/android/g/f;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/estrongs/android/g/f;->a(Lcom/estrongs/android/g/f;Lcom/estrongs/android/ui/notification/d;)Lcom/estrongs/android/ui/notification/d;

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
