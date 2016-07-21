.class public Lcom/estrongs/android/pop/app/AudioPlayerService$MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x57

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->a(Lcom/estrongs/android/pop/app/AudioPlayerService;Landroid/media/MediaPlayer;)Z

    :cond_2
    const/16 v0, 0x55

    if-ne v0, v2, :cond_3

    if-eqz v1, :cond_9

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->F()V

    :cond_3
    :goto_1
    const/16 v0, 0x4f

    if-ne v0, v2, :cond_4

    if-eqz v1, :cond_4

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->F()V

    :cond_4
    :goto_2
    const/16 v0, 0x58

    if-ne v0, v2, :cond_5

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    sget-object v3, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->g()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->f(I)Z

    :cond_5
    const/16 v0, 0x56

    if-ne v0, v2, :cond_6

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->t()V

    :cond_6
    const/16 v0, 0x7e

    if-ne v0, v2, :cond_7

    if-eqz v1, :cond_b

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->F()V

    :cond_7
    :goto_3
    const/16 v0, 0x7f

    if-ne v0, v2, :cond_0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_8
    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->u()V

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->s()Z

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->u()V

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/estrongs/android/pop/app/AudioPlayerService;->b:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->s()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
