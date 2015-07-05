.class Lcom/estrongs/android/pop/app/er;
.super Lcom/estrongs/android/ui/view/IndicatorView;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/eq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/eq;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/er;->a:Lcom/estrongs/android/pop/app/eq;

    invoke-direct {p0, p2}, Lcom/estrongs/android/ui/view/IndicatorView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "playlist"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/er;->a:Lcom/estrongs/android/pop/app/eq;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/eq;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/by;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/by;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eq v0, p1, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/app/er;->a(II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/er;->a:Lcom/estrongs/android/pop/app/eq;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/eq;->a(I)V

    :cond_1
    return-void
.end method
