.class Lcom/estrongs/android/ui/controller/widget/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/widget/c;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/c;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/cleaner/a/a/c;->b(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/widget/c;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    new-instance v2, Lcom/estrongs/android/ui/controller/widget/d;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/controller/widget/d;-><init>(Lcom/estrongs/android/ui/controller/widget/c;F)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
