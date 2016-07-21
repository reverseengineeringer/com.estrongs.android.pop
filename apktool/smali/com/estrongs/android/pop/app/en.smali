.class Lcom/estrongs/android/pop/app/en;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/en;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/en;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/en;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/en;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/en;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/en;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/j;

    invoke-static {v2, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/c/i;Lcom/estrongs/android/pop/app/c/j;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/er;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/en;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/en;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v4, 0x7f0803d7

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v2, v3, v4}, Lcom/estrongs/android/ui/dialog/er;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/app/eo;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/eo;-><init>(Lcom/estrongs/android/pop/app/en;Lcom/estrongs/android/pop/app/c/i;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/er;->a(Lcom/estrongs/android/ui/dialog/eu;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/er;->show()V

    goto :goto_0
.end method
