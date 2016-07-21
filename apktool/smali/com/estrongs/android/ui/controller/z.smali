.class Lcom/estrongs/android/ui/controller/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Lcom/estrongs/android/ui/controller/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/h;Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/z;->b:Lcom/estrongs/android/ui/controller/h;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/z;->a:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/z;->a:Lcom/estrongs/android/view/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/z;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/z;->b:Lcom/estrongs/android/ui/controller/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/controller/z;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v1}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/h;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
