.class Lcom/estrongs/android/widget/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/dx;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ad;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ae;->a:Lcom/estrongs/android/widget/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ae;->a:Lcom/estrongs/android/widget/ad;

    invoke-static {v0}, Lcom/estrongs/android/widget/ad;->a(Lcom/estrongs/android/widget/ad;)Lcom/estrongs/android/view/dx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ae;->a:Lcom/estrongs/android/widget/ad;

    invoke-static {v0}, Lcom/estrongs/android/widget/ad;->a(Lcom/estrongs/android/widget/ad;)Lcom/estrongs/android/view/dx;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/estrongs/android/view/dx;->a(Lcom/estrongs/fs/h;)V

    :cond_0
    return-void
.end method
