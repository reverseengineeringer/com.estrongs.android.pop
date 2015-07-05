.class Lcom/estrongs/android/pop/app/ek;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ek;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ek;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/widget/RealViewSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ek;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    new-instance v1, Lcom/estrongs/android/pop/app/ga;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ek;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v1, v2}, Lcom/estrongs/android/pop/app/ga;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/ga;)Lcom/estrongs/android/pop/app/ga;

    return-void
.end method
