.class Lcom/estrongs/android/ui/adapter/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/aa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/adapter/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/ab;->a:Lcom/estrongs/android/ui/adapter/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/ab;->a:Lcom/estrongs/android/ui/adapter/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/aa;->b:Lcom/estrongs/android/ui/adapter/y;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/y;->notifyDataSetChanged()V

    return-void
.end method
