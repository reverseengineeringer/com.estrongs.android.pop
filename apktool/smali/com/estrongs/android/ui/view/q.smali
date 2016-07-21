.class Lcom/estrongs/android/ui/view/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/q;->a:Lcom/estrongs/android/ui/view/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/q;->a:Lcom/estrongs/android/ui/view/o;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/o;->a:Lcom/estrongs/android/ui/view/b;

    invoke-static {v0}, Lcom/estrongs/android/ui/view/b;->x(Lcom/estrongs/android/ui/view/b;)Lcom/estrongs/android/view/gg;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/gg;->a(Ljava/lang/Object;)V

    return-void
.end method
