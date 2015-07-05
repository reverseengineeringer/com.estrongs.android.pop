.class Lcom/estrongs/android/ui/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/c;->a:Lcom/estrongs/android/ui/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c;->a:Lcom/estrongs/android/ui/c/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b;->a:Lcom/estrongs/android/ui/c/a;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/a;->a(Lcom/estrongs/android/ui/c/a;)Lcom/estrongs/android/ui/c/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/b;->l()V

    return-void
.end method
