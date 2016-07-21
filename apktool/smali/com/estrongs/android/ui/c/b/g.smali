.class Lcom/estrongs/android/ui/c/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/b/i;

.field final synthetic b:Lcom/estrongs/android/ui/c/b/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/f;Lcom/estrongs/android/ui/c/b/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/g;->b:Lcom/estrongs/android/ui/c/b/f;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/b/g;->a:Lcom/estrongs/android/ui/c/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/g;->b:Lcom/estrongs/android/ui/c/b/f;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/f;->a:Lcom/estrongs/android/ui/c/b/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/g;->a:Lcom/estrongs/android/ui/c/b/i;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/c/b/a;->a(Lcom/estrongs/android/ui/c/b/a;Lcom/estrongs/android/ui/c/b/i;)V

    return-void
.end method
