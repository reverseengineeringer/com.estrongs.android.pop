.class Lcom/estrongs/android/ui/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/z;->a:Lcom/estrongs/android/ui/a/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/z;->a:Lcom/estrongs/android/ui/a/y;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/y;->b:Lcom/estrongs/android/ui/a/w;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/w;->notifyDataSetChanged()V

    return-void
.end method
