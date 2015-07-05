.class Lcom/estrongs/android/pop/view/ex;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ew;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ex;->a:Lcom/estrongs/android/pop/view/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ex;->a:Lcom/estrongs/android/pop/view/ew;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/ew;->b:Lcom/estrongs/android/pop/view/eu;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ex;->a:Lcom/estrongs/android/pop/view/ew;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/ew;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/eu;->a(Lcom/estrongs/android/pop/view/eu;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ex;->a:Lcom/estrongs/android/pop/view/ew;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/ew;->b:Lcom/estrongs/android/pop/view/eu;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/eu;->a:Z

    return-void
.end method
