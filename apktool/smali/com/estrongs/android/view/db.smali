.class Lcom/estrongs/android/view/db;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/av;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/estrongs/android/view/av",
        "<",
        "Lcom/estrongs/fs/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/av;

.field final synthetic b:Lcom/estrongs/android/view/cq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cq;Lcom/estrongs/android/view/av;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/db;->b:Lcom/estrongs/android/view/cq;

    iput-object p2, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/av;

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

    iget-object v0, p0, Lcom/estrongs/android/view/db;->a:Lcom/estrongs/android/view/av;

    iget-object v1, p0, Lcom/estrongs/android/view/db;->b:Lcom/estrongs/android/view/cq;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cq;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/av;->a(Ljava/util/List;)V

    return-void
.end method
