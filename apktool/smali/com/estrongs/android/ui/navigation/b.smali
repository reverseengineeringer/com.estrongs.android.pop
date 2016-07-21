.class Lcom/estrongs/android/ui/navigation/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/MultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/MultiWindowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/b;->a:Lcom/estrongs/android/ui/navigation/MultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/b;->a:Lcom/estrongs/android/ui/navigation/MultiWindowActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->a(Lcom/estrongs/android/ui/navigation/MultiWindowActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/b;->a:Lcom/estrongs/android/ui/navigation/MultiWindowActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/MultiWindowActivity;->d()V

    return-void
.end method
