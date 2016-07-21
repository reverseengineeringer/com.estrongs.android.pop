.class Lcom/estrongs/android/ui/controller/widget/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/estrongs/android/ui/controller/widget/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/widget/c;F)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/widget/d;->b:Lcom/estrongs/android/ui/controller/widget/c;

    iput p2, p0, Lcom/estrongs/android/ui/controller/widget/d;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/d;->b:Lcom/estrongs/android/ui/controller/widget/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/widget/c;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/d;->b:Lcom/estrongs/android/ui/controller/widget/c;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/widget/c;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/d;->a:F

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a(F)V

    :cond_0
    return-void
.end method
