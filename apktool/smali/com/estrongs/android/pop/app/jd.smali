.class Lcom/estrongs/android/pop/app/jd;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/jd;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jd;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Z

    return-void
.end method
