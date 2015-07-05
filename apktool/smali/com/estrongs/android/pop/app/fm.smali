.class Lcom/estrongs/android/pop/app/fm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v3, 0x0

    check-cast p2, Lcom/estrongs/android/pop/app/q;

    invoke-virtual {p2}, Lcom/estrongs/android/pop/app/q;->a()Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    new-instance v2, Lcom/estrongs/android/pop/app/ge;

    invoke-direct {v2, v0}, Lcom/estrongs/android/pop/app/ge;-><init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/ge;)Lcom/estrongs/android/pop/app/ge;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->y(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Market"

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ge;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/app/ge;->a(Lcom/estrongs/android/pop/app/gc;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ge;->n()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ge;->q()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ge;->z()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ge;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->A(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ge;->a(Lcom/estrongs/android/pop/app/gc;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->z(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/ge;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/gd;)Lcom/estrongs/android/pop/app/gd;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    goto/16 :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/ge;)Lcom/estrongs/android/pop/app/ge;

    return-void
.end method
