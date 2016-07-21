.class Lcom/estrongs/android/ui/dialog/y;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/y;->a:Lcom/estrongs/android/ui/dialog/x;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/y;->a:Lcom/estrongs/android/ui/dialog/x;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/x;->a:Lcom/estrongs/android/ui/dialog/u;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/u;->d(Lcom/estrongs/android/ui/dialog/u;)V

    return-void
.end method
