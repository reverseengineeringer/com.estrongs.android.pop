.class Lcom/estrongs/android/pop/app/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/zeroconf/w;

.field final synthetic b:Lcom/estrongs/android/pop/app/bi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/bi;Lcom/estrongs/android/pop/zeroconf/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bl;->b:Lcom/estrongs/android/pop/app/bi;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/bl;->a:Lcom/estrongs/android/pop/zeroconf/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bl;->b:Lcom/estrongs/android/pop/app/bi;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/bi;->c(Lcom/estrongs/android/pop/app/bi;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bl;->a:Lcom/estrongs/android/pop/zeroconf/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bl;->a:Lcom/estrongs/android/pop/zeroconf/w;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/zeroconf/w;->b()V

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
