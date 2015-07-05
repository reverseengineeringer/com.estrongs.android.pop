.class Lcom/estrongs/android/ui/e/gr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/a/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gr;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/e/co;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->x:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->g:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->d:Z

    if-nez v0, :cond_2

    :cond_1
    iget v0, p1, Lcom/estrongs/android/ui/e/co;->F:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/co;->G:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/estrongs/android/ui/e/co;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->c(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
