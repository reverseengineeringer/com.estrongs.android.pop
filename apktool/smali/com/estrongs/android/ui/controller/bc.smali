.class Lcom/estrongs/android/ui/controller/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/bb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/bc;->a:Lcom/estrongs/android/ui/controller/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/bc;->a:Lcom/estrongs/android/ui/controller/bb;

    iget-object v0, v0, Lcom/estrongs/android/ui/controller/bb;->a:Lcom/estrongs/android/ui/controller/aj;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/aj;->b(Lcom/estrongs/android/ui/controller/aj;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
