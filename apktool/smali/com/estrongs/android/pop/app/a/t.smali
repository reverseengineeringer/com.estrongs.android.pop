.class Lcom/estrongs/android/pop/app/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/utils/cb;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/t;->a:Lcom/estrongs/android/pop/app/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/t;->a:Lcom/estrongs/android/pop/app/a/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->p()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/t;->a:Lcom/estrongs/android/pop/app/a/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->w()Lcom/estrongs/android/pop/app/a/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/t;->a:Lcom/estrongs/android/pop/app/a/s;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/a/ak;)V

    return-void
.end method
