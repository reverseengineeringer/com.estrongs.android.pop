.class Lcom/estrongs/android/pop/app/eo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/eu;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/c/i;

.field final synthetic b:Lcom/estrongs/android/pop/app/en;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/en;Lcom/estrongs/android/pop/app/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/eo;->b:Lcom/estrongs/android/pop/app/en;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/c/m;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/eo;->b:Lcom/estrongs/android/pop/app/en;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/en;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v1, 0x7f0802c0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/eo;->b:Lcom/estrongs/android/pop/app/en;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/en;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eo;->a:Lcom/estrongs/android/pop/app/c/i;

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/c/i;Lcom/estrongs/android/pop/app/c/j;)V

    goto :goto_0
.end method
