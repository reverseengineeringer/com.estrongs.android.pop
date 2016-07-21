.class Lcom/estrongs/android/pop/app/ez;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ey;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ey;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ez;->a:Lcom/estrongs/android/pop/app/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ez;->a:Lcom/estrongs/android/pop/app/ey;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v1

    if-nez p2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/ez;->a:Lcom/estrongs/android/pop/app/ey;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/ey;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/estrongs/android/ui/e/iq;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
