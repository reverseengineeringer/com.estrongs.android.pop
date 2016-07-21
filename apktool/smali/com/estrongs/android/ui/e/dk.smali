.class Lcom/estrongs/android/ui/e/dk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/a/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dk;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/e/cp;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->A:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->e:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->L:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->K:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->H:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->l:Z

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->h:Z

    if-eqz v2, :cond_4

    iget v2, p1, Lcom/estrongs/android/ui/e/cp;->N:I

    if-ne v2, v1, :cond_4

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->O:Z

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->f:Z

    if-nez v2, :cond_5

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->y:Z

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->d:Z

    if-nez v2, :cond_6

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->O:Z

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->n:Z

    if-nez v2, :cond_7

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->B:Z

    if-eqz v2, :cond_8

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->i:Z

    if-nez v2, :cond_9

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->j:Z

    if-nez v2, :cond_9

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->k:Z

    if-eqz v2, :cond_a

    :cond_9
    move v0, v1

    goto :goto_0

    :cond_a
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->q:Z

    if-nez v2, :cond_b

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->r:Z

    if-eqz v2, :cond_0

    :cond_b
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->O:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
