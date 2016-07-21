.class Lcom/estrongs/android/ui/dialog/jp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/jo;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jo;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jp;->a:Lcom/estrongs/android/ui/dialog/jo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jp;->a:Lcom/estrongs/android/ui/dialog/jo;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jo;->c:Lcom/estrongs/android/ui/dialog/jk;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/jk;->a:Lcom/estrongs/android/ui/dialog/jh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/jh;->f(Lcom/estrongs/android/ui/dialog/jh;)Lcom/estrongs/android/view/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/bo;->b()V

    return-void
.end method
