.class Lcom/estrongs/android/pop/app/eu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->j(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v1, 0x7f0b026e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {p1, v0, v2, v1, v2}, Lcom/estrongs/android/ui/f/e;->a(Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)Lcom/estrongs/android/ui/f/e;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ev;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/ev;-><init>(Lcom/estrongs/android/pop/app/eu;Lcom/estrongs/android/ui/f/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/f/e;->a(Lcom/estrongs/android/pop/app/fz;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/e;->c()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0
.end method
