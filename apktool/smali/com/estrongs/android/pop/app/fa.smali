.class Lcom/estrongs/android/pop/app/fa;
.super Lcom/estrongs/android/pop/app/a/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fa;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/a/e;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fa;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
