.class public Lcom/estrongs/android/ui/e/hy;
.super Lcom/estrongs/android/ui/e/f;


# instance fields
.field private k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

.field private l:Lcom/estrongs/android/ui/e/iq;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLandroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/f;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/hy;->k()V

    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hy;->l:Lcom/estrongs/android/ui/e/iq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iq;->d()V

    return-void
.end method


# virtual methods
.method public f(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hy;->l:Lcom/estrongs/android/ui/e/iq;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/iq;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/hy;->l()V

    return-void
.end method

.method protected h()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hy;->b:Landroid/content/Context;

    instance-of v0, v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hy;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hy;->k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    new-instance v0, Lcom/estrongs/android/ui/e/iq;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hy;->k:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/iq;-><init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/hy;->l:Lcom/estrongs/android/ui/e/iq;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hy;->l:Lcom/estrongs/android/ui/e/iq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iq;->e()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need PopAudioPlayer as the first argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hy;->l:Lcom/estrongs/android/ui/e/iq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iq;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected k()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/hy;->m()V

    const v0, 0x7f0d0159

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/hy;->e(I)V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hy;->l:Lcom/estrongs/android/ui/e/iq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/iq;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/hy;->a([Ljava/lang/String;)V

    return-void
.end method
