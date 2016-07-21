.class Lcom/estrongs/android/widget/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/dw;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/p;->a:Lcom/estrongs/android/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/estrongs/android/view/cr;Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/p;->a:Lcom/estrongs/android/widget/f;

    iget-object v0, v0, Lcom/estrongs/android/widget/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/p;->a:Lcom/estrongs/android/widget/f;

    invoke-static {v0}, Lcom/estrongs/android/widget/f;->b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/p;->a:Lcom/estrongs/android/widget/f;

    iget-object v1, v1, Lcom/estrongs/android/widget/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/p;->a:Lcom/estrongs/android/widget/f;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/widget/f;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method
