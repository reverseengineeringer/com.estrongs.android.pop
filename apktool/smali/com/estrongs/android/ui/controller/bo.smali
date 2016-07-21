.class Lcom/estrongs/android/ui/controller/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lcom/estrongs/android/ui/controller/bn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/bn;FF)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/bo;->c:Lcom/estrongs/android/ui/controller/bn;

    iput p2, p0, Lcom/estrongs/android/ui/controller/bo;->a:F

    iput p3, p0, Lcom/estrongs/android/ui/controller/bo;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/bo;->c:Lcom/estrongs/android/ui/controller/bn;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/bn;->a:Lcom/estrongs/android/ui/controller/bm;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/bm;->b(Lcom/estrongs/android/ui/controller/bm;)Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/controller/bo;->a:F

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setWarnPercent(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/bo;->c:Lcom/estrongs/android/ui/controller/bn;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/bn;->a:Lcom/estrongs/android/ui/controller/bm;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/bm;->b(Lcom/estrongs/android/ui/controller/bm;)Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/controller/bo;->b:F

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a(F)V

    return-void
.end method
