.class final Lcom/estrongs/android/pop/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/a/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/a/e;->a:Lcom/estrongs/android/pop/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/a/f;

    invoke-direct {v0, p0, p2}, Lcom/estrongs/android/pop/a/f;-><init>(Lcom/estrongs/android/pop/a/e;Landroid/os/IBinder;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/a/f;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
