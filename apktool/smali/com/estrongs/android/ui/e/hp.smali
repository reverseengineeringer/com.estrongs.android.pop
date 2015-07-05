.class Lcom/estrongs/android/ui/e/hp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/e/hn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/hn;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/hp;->b:Lcom/estrongs/android/ui/e/hn;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/hp;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hp;->b:Lcom/estrongs/android/ui/e/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/hn;->a:Lcom/estrongs/android/ui/e/hl;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/hl;->a(Lcom/estrongs/android/ui/e/hl;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hp;->b:Lcom/estrongs/android/ui/e/hn;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/hn;->a:Lcom/estrongs/android/ui/e/hl;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/hl;->a(Lcom/estrongs/android/ui/e/hl;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hp;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/al;

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/util/List;Lcom/estrongs/android/pop/app/a/al;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/eo;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/hp;->b:Lcom/estrongs/android/ui/e/hn;

    iget-object v2, v2, Lcom/estrongs/android/ui/e/hn;->a:Lcom/estrongs/android/ui/e/hl;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/hl;->a(Lcom/estrongs/android/ui/e/hl;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/e/hp;->b:Lcom/estrongs/android/ui/e/hn;

    iget-object v3, v3, Lcom/estrongs/android/ui/e/hn;->a:Lcom/estrongs/android/ui/e/hl;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/hl;->a(Lcom/estrongs/android/ui/e/hl;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v3

    const v4, 0x7f0b03dc

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v2, v3, v4}, Lcom/estrongs/android/ui/dialog/eo;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/ui/e/hq;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/ui/e/hq;-><init>(Lcom/estrongs/android/ui/e/hp;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/eo;->a(Lcom/estrongs/android/ui/dialog/er;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/eo;->show()V

    goto :goto_0
.end method
