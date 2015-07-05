.class Lcom/estrongs/android/ui/b/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/y;->a:Lcom/estrongs/android/ui/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/y;->a:Lcom/estrongs/android/ui/b/x;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/x;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cp;->a(Ljava/util/List;)V

    return-void
.end method
