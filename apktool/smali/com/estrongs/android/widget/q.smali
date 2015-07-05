.class Lcom/estrongs/android/widget/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cb;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/estrongs/android/view/aw;Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/g;

    iget-object v0, v0, Lcom/estrongs/android/widget/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->b(Lcom/estrongs/android/widget/g;)Lcom/estrongs/android/view/dp;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/g;

    iget-object v1, v1, Lcom/estrongs/android/widget/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/dp;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/q;->a:Lcom/estrongs/android/widget/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/widget/g;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method
