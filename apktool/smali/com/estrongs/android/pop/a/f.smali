.class Lcom/estrongs/android/pop/a/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/estrongs/android/pop/a/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/a/e;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/a/f;->b:Lcom/estrongs/android/pop/a/e;

    iput-object p2, p0, Lcom/estrongs/android/pop/a/f;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x0

    new-instance v3, Lcom/estrongs/android/pop/a/a/c;

    iget-object v0, p0, Lcom/estrongs/android/pop/a/f;->a:Landroid/os/IBinder;

    invoke-direct {v3, v0}, Lcom/estrongs/android/pop/a/a/c;-><init>(Landroid/os/IBinder;)V

    :try_start_0
    invoke-virtual {v3}, Lcom/estrongs/android/pop/a/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/estrongs/android/pop/a/g;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/a/g;-><init>(Lcom/estrongs/android/pop/a/f;Z)V

    invoke-static {v2}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/estrongs/android/pop/a/a/c;->b()I

    move-result v0

    if-eqz v0, :cond_1

    if-ne v0, v6, :cond_3

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/a/a/c;->a(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const-wide/16 v4, 0x32

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Lcom/estrongs/android/pop/a/a/c;->b()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-ne v0, v6, :cond_5

    :cond_3
    :goto_2
    if-eq v0, v6, :cond_4

    if-ne v0, v7, :cond_7

    :cond_4
    move v0, v1

    :goto_3
    new-instance v2, Lcom/estrongs/android/pop/a/h;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/a/h;-><init>(Lcom/estrongs/android/pop/a/f;Z)V

    invoke-static {v2}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    iget-object v0, p0, Lcom/estrongs/android/pop/a/f;->b:Lcom/estrongs/android/pop/a/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/a/e;->a:Lcom/estrongs/android/pop/a/j;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/a/j;->a(Z)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    move v2, v1

    :goto_4
    const/16 v4, 0x14

    if-ge v2, v4, :cond_3

    const-wide/16 v4, 0x64

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_5
    :try_start_4
    invoke-virtual {v3}, Lcom/estrongs/android/pop/a/a/c;->a()Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    if-ne v0, v7, :cond_2

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Lcom/estrongs/android/pop/a/a/c;->a()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_5
.end method
