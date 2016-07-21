.class Lcom/estrongs/android/ui/e/dm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/a/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/dm;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/e/cp;)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/estrongs/android/pop/z;->u:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->e:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->L:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->K:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/estrongs/android/ui/e/cp;->l:Z

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
