.class Lcom/estrongs/android/pop/app/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/pop/app/a/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/o;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/p;->b:Lcom/estrongs/android/pop/app/a/o;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/a/p;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/p;->b:Lcom/estrongs/android/pop/app/a/o;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/o;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w()Lcom/estrongs/android/pop/app/a/ak;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/p;->b:Lcom/estrongs/android/pop/app/a/o;

    iget-object v2, v0, Lcom/estrongs/android/pop/app/a/o;->a:Lcom/estrongs/android/pop/app/a/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/p;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/al;

    invoke-static {v2, v1, v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;Lcom/estrongs/android/pop/app/a/ak;Lcom/estrongs/android/pop/app/a/al;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/dialog/eo;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/a/p;->b:Lcom/estrongs/android/pop/app/a/o;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/a/o;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/a/p;->b:Lcom/estrongs/android/pop/app/a/o;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/a/o;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v3

    const v4, 0x7f0b03dc

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v0, v2, v3, v4}, Lcom/estrongs/android/ui/dialog/eo;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/app/a/q;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/a/q;-><init>(Lcom/estrongs/android/pop/app/a/p;Lcom/estrongs/android/pop/app/a/ak;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/eo;->a(Lcom/estrongs/android/ui/dialog/er;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/eo;->show()V

    goto :goto_0
.end method
