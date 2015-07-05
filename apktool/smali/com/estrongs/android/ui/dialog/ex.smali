.class Lcom/estrongs/android/ui/dialog/ex;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ev;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ev;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ex;->a:Lcom/estrongs/android/ui/dialog/ev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ex;->a:Lcom/estrongs/android/ui/dialog/ev;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ev;->b:Lcom/estrongs/android/ui/dialog/es;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/es;->f(Lcom/estrongs/android/ui/dialog/es;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method
