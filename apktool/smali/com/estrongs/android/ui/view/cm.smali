.class Lcom/estrongs/android/ui/view/cm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/cl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/cl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/cm;->a:Lcom/estrongs/android/ui/view/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/cm;->a:Lcom/estrongs/android/ui/view/cl;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/cm;->a:Lcom/estrongs/android/ui/view/cl;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/cl;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/view/cl;->a(Lcom/estrongs/android/ui/view/cl;Ljava/lang/String;)V

    return-void
.end method
