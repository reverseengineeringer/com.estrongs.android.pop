.class Lcom/estrongs/android/view/en;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/em;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/em;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/en;->a:Lcom/estrongs/android/view/em;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/en;->a:Lcom/estrongs/android/view/em;

    iget-object v0, v0, Lcom/estrongs/android/view/em;->c:Lcom/estrongs/android/view/eb;

    invoke-virtual {v0}, Lcom/estrongs/android/view/eb;->e()V

    return-void
.end method
