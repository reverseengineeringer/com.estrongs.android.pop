.class Lcom/estrongs/android/ui/dialog/fa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ey;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ey;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fa;->a:Lcom/estrongs/android/ui/dialog/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fa;->a:Lcom/estrongs/android/ui/dialog/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ey;->b:Lcom/estrongs/android/ui/dialog/ev;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ev;->f(Lcom/estrongs/android/ui/dialog/ev;)Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method
