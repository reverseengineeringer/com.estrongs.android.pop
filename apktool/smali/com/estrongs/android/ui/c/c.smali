.class Lcom/estrongs/android/ui/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/unlock/g;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/c;->a:Lcom/estrongs/android/ui/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/k/d;)V
    .locals 2

    const-string v0, "onRemoveUnLockCardView"

    invoke-static {v0}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a;->b(Lcom/estrongs/android/ui/c/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/c;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/c;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/c/a;->b(Lcom/estrongs/android/ui/c/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/c;->a:Lcom/estrongs/android/ui/c/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/c/a;->notifyItemRemoved(I)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/c;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v1}, Lcom/estrongs/android/ui/c/a;->b(Lcom/estrongs/android/ui/c/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
