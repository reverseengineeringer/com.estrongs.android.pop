.class Lcom/estrongs/android/pop/app/fg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/bc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IF)V
    .locals 4

    float-to-double v0, p2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/d/b;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    invoke-virtual {v2, p1, v3}, Lcom/estrongs/android/ui/d/b;->a(IF)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/d/b;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/ui/d/b;->a(IF)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/d/b;->d(I)V

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/by;

    move-result-object v0

    const-string v1, "playing"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->s(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fg;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/by;

    move-result-object v0

    const-string v1, "playlist"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    return-void
.end method
