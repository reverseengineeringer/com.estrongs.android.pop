.class Lcom/estrongs/android/ui/e/bx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/d;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/g;

.field final synthetic b:Lcom/estrongs/android/ui/e/bw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/bw;Lcom/estrongs/android/view/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/bx;->b:Lcom/estrongs/android/ui/e/bw;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/bx;->a:Lcom/estrongs/android/view/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bx;->a:Lcom/estrongs/android/view/g;

    iget-object v0, v0, Lcom/estrongs/android/view/g;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bx;->a:Lcom/estrongs/android/view/g;

    iput-object p1, v0, Lcom/estrongs/android/view/g;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bx;->a:Lcom/estrongs/android/view/g;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/bx;->a:Lcom/estrongs/android/view/g;

    iget-object v1, v1, Lcom/estrongs/android/view/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/g;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
