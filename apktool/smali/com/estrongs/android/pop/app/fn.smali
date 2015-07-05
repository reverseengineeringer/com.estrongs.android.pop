.class Lcom/estrongs/android/pop/app/fn;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fn;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    :try_start_0
    const-string v0, "Market"

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fn;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fn;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget v0, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fn;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget v0, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fn;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fn;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/fn;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget v1, v1, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/fn;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget v2, v2, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a:I

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/fn;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, -0x1

    iput v1, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fn;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, -0x1

    iput v1, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
