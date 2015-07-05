.class Lcom/estrongs/android/ui/e/hx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/hl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/hx;->a:Lcom/estrongs/android/ui/e/hl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hx;->a:Lcom/estrongs/android/ui/e/hl;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/hl;->a(Lcom/estrongs/android/ui/e/hl;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hx;->a:Lcom/estrongs/android/ui/e/hl;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/hl;->a(Lcom/estrongs/android/ui/e/hl;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    const v1, 0x7f0b03ce

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/hx;->a:Lcom/estrongs/android/ui/e/hl;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/hl;->a(Lcom/estrongs/android/ui/e/hl;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u()V

    return v3

    :cond_2
    new-instance v1, Lcom/estrongs/android/ui/dialog/hc;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/hx;->a:Lcom/estrongs/android/ui/e/hl;

    invoke-static {v2}, Lcom/estrongs/android/ui/e/hl;->a(Lcom/estrongs/android/ui/e/hl;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/dialog/hc;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/h;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/hc;->a()V

    goto :goto_0
.end method
