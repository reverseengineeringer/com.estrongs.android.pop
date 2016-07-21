.class Lcom/estrongs/android/ui/controller/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/fastscroller/d;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/w;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/w;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->l(Lcom/estrongs/android/ui/controller/h;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/w;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->m(Lcom/estrongs/android/ui/controller/h;)Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->b()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/controller/w;->a:Lcom/estrongs/android/ui/controller/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/h;->m(Lcom/estrongs/android/ui/controller/h;)Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a()V

    goto :goto_0
.end method
