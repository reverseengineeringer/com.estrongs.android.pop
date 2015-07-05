.class Lcom/estrongs/android/widget/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/kr;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/s;

    iget-object v0, v0, Lcom/estrongs/android/widget/s;->b:Lcom/estrongs/android/widget/r;

    iget-object v1, p0, Lcom/estrongs/android/widget/t;->a:Lcom/estrongs/android/widget/s;

    iget-object v1, v1, Lcom/estrongs/android/widget/s;->a:Lcom/estrongs/fs/h;

    invoke-static {v0, v1}, Lcom/estrongs/android/widget/r;->a(Lcom/estrongs/android/widget/r;Lcom/estrongs/fs/h;)V

    :cond_0
    return-void
.end method
