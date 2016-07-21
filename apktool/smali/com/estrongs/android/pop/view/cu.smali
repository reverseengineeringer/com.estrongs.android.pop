.class Lcom/estrongs/android/pop/view/cu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ct;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/cu;->a:Lcom/estrongs/android/pop/view/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cu;->a:Lcom/estrongs/android/pop/view/ct;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/ct;->b:Lcom/estrongs/android/pop/view/cr;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/cu;->a:Lcom/estrongs/android/pop/view/ct;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/ct;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/cr;->a(Lcom/estrongs/android/pop/view/cr;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/cu;->a:Lcom/estrongs/android/pop/view/ct;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/ct;->b:Lcom/estrongs/android/pop/view/cr;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/cr;->a:Z

    return-void
.end method
