.class Lcom/estrongs/android/widget/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/cc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/ae;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ae;

    invoke-static {v0}, Lcom/estrongs/android/widget/ae;->a(Lcom/estrongs/android/widget/ae;)Lcom/estrongs/android/view/cc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/af;->a:Lcom/estrongs/android/widget/ae;

    invoke-static {v0}, Lcom/estrongs/android/widget/ae;->a(Lcom/estrongs/android/widget/ae;)Lcom/estrongs/android/view/cc;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/estrongs/android/view/cc;->a(Lcom/estrongs/fs/h;)V

    :cond_0
    return-void
.end method
