.class Lcom/estrongs/android/ui/e/ef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/a/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ef;->a:Lcom/estrongs/android/ui/e/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/e/co;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/estrongs/android/pop/z;->r:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/co;->h:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/co;->P:Z

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/co;->T:Z

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/co;->e:Z

    if-nez v2, :cond_5

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/co;->f:Z

    if-nez v2, :cond_4

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/co;->x:Z

    if-nez v2, :cond_4

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/co;->g:Z

    if-eqz v2, :cond_7

    :cond_4
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/co;->d:Z

    if-nez v2, :cond_7

    :cond_5
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/co;->P:Z

    if-nez v2, :cond_6

    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/co;->T:Z

    if-eqz v2, :cond_7

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-boolean v2, p1, Lcom/estrongs/android/ui/e/co;->i:Z

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
