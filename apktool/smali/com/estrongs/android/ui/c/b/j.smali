.class Lcom/estrongs/android/ui/c/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/c/b/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/b/i;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/j;->b:Lcom/estrongs/android/ui/c/b/i;

    iput p2, p0, Lcom/estrongs/android/ui/c/b/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/j;->b:Lcom/estrongs/android/ui/c/b/i;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/i;->b:Lcom/estrongs/android/ui/c/a/d;

    iget v1, p0, Lcom/estrongs/android/ui/c/b/j;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/d;->b(I)V

    return-void
.end method
