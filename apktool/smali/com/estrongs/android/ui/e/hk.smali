.class Lcom/estrongs/android/ui/e/hk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/a/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/hk;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/e/cp;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->e:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->K:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->l:Z

    if-nez v2, :cond_3

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->f:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->y:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->g:Z

    if-eqz v2, :cond_4

    :cond_2
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->d:Z

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->n:Z

    if-nez v2, :cond_5

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->B:Z

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->i:Z

    if-nez v2, :cond_7

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->j:Z

    if-nez v2, :cond_7

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->k:Z

    if-nez v2, :cond_7

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/cp;->L:Z

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method
