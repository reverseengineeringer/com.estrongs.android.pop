.class Lcom/estrongs/android/view/cz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cz;->a:Lcom/estrongs/android/view/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/cz;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v0}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cz;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v0}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    iget-object v2, p0, Lcom/estrongs/android/view/cz;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v2}, Lcom/estrongs/android/view/cq;->e(Lcom/estrongs/android/view/cq;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/ad;->Q(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->d()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cz;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v0, v1}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
