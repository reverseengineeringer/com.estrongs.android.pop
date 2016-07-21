.class Lcom/estrongs/android/ui/b/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ab;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ac;->a:Lcom/estrongs/android/ui/b/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ac;->a:Lcom/estrongs/android/ui/b/ab;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ab;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/cr;->a(Ljava/util/List;)V

    return-void
.end method
