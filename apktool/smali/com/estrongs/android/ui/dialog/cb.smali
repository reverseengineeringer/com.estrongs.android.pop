.class Lcom/estrongs/android/ui/dialog/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/estrongs/android/ui/dialog/by;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/by;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/cb;->c:Lcom/estrongs/android/ui/dialog/by;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/cb;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/estrongs/android/ui/dialog/cb;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cb;->c:Lcom/estrongs/android/ui/dialog/by;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/by;->f(Lcom/estrongs/android/ui/dialog/by;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/cb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setMessage(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/cb;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cb;->c:Lcom/estrongs/android/ui/dialog/by;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/by;->f(Lcom/estrongs/android/ui/dialog/by;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setItemsEnable(Z)V

    :cond_0
    return-void
.end method
