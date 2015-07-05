.class Lcom/estrongs/android/ui/e/hs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/utils/cb;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/ui/e/hr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/hr;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/hs;->b:Lcom/estrongs/android/ui/e/hr;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/hs;->a:Ljava/util/List;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/e/hs;->b:Lcom/estrongs/android/ui/e/hr;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/hr;->a:Lcom/estrongs/android/ui/e/hl;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/hl;->a(Lcom/estrongs/android/ui/e/hl;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/hs;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Ljava/util/List;)V

    return-void
.end method
