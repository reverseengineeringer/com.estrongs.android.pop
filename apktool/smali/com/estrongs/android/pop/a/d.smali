.class final Lcom/estrongs/android/pop/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/a/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/a/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/a/a/c;

    invoke-direct {v0, p2}, Lcom/estrongs/android/pop/a/a/c;-><init>(Landroid/os/IBinder;)V

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/a/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/a/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
