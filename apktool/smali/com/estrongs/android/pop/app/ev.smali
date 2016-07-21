.class Lcom/estrongs/android/pop/app/ev;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/eu;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/c/j;

.field final synthetic b:Lcom/estrongs/android/pop/app/eu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/eu;Lcom/estrongs/android/pop/app/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ev;->b:Lcom/estrongs/android/pop/app/eu;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ev;->a:Lcom/estrongs/android/pop/app/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/c/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ev;->b:Lcom/estrongs/android/pop/app/eu;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v1, 0x7f0802c0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ev;->a:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/c/j;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ev;->b:Lcom/estrongs/android/pop/app/eu;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/eu;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
