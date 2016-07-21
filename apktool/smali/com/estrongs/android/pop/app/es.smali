.class Lcom/estrongs/android/pop/app/es;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/utils/ck;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/er;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/er;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/es;->a:Lcom/estrongs/android/pop/app/er;

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/es;->a:Lcom/estrongs/android/pop/app/er;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/er;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->u()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/es;->a:Lcom/estrongs/android/pop/app/er;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/er;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->B()Lcom/estrongs/android/pop/app/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/es;->a:Lcom/estrongs/android/pop/app/er;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/er;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/c/i;)V

    return-void
.end method
