.class Lcom/estrongs/android/view/ew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/estrongs/android/view/cq",
        "<",
        "Lcom/estrongs/fs/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cq;

.field final synthetic b:Lcom/estrongs/android/view/eu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/eu;Lcom/estrongs/android/view/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ew;->b:Lcom/estrongs/android/view/eu;

    iput-object p2, p0, Lcom/estrongs/android/view/ew;->a:Lcom/estrongs/android/view/cq;

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

    iget-object v0, p0, Lcom/estrongs/android/view/ew;->a:Lcom/estrongs/android/view/cq;

    iget-object v1, p0, Lcom/estrongs/android/view/ew;->b:Lcom/estrongs/android/view/eu;

    invoke-virtual {v1}, Lcom/estrongs/android/view/eu;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/cq;->a(Ljava/util/List;)V

    return-void
.end method
