.class Lcom/estrongs/android/view/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/widget/f;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/as;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/as;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/at;->a:Lcom/estrongs/android/view/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/at;->a:Lcom/estrongs/android/view/as;

    iget-object v0, v0, Lcom/estrongs/android/view/as;->o:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/at;->a:Lcom/estrongs/android/view/as;

    iget-object v0, v0, Lcom/estrongs/android/view/as;->o:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/at;->a:Lcom/estrongs/android/view/as;

    iget-object v0, v0, Lcom/estrongs/android/view/as;->o:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/d;->c()V

    iget-object v0, p0, Lcom/estrongs/android/view/at;->a:Lcom/estrongs/android/view/as;

    invoke-virtual {v0}, Lcom/estrongs/android/view/as;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/at;->a:Lcom/estrongs/android/view/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/as;->e(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
