.class final Lcom/estrongs/android/pop/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/estrongs/android/pop/a/i;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/pop/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/a/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/a/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/a/b;->c:Lcom/estrongs/android/pop/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/estrongs/android/pop/a/a/c;

    invoke-direct {v1, p2}, Lcom/estrongs/android/pop/a/a/c;-><init>(Landroid/os/IBinder;)V

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/a/b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/a/b;->c:Lcom/estrongs/android/pop/a/i;

    invoke-interface {v1, v0}, Lcom/estrongs/android/pop/a/i;->a(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
