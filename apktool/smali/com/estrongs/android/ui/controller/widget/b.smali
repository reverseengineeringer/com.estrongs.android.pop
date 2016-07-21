.class Lcom/estrongs/android/ui/controller/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/widget/b;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/b;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/b;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/widget/b;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-static {v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->e(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)Lcom/estrongs/android/ui/controller/widget/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
