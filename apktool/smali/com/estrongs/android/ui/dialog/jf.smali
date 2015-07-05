.class Lcom/estrongs/android/ui/dialog/jf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/je;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/je;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jf;->a:Lcom/estrongs/android/ui/dialog/je;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jf;->a:Lcom/estrongs/android/ui/dialog/je;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/je;->c:Lcom/estrongs/android/ui/dialog/ja;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->f(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/android/view/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/ak;->b()V

    return-void
.end method
