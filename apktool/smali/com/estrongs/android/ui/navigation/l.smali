.class Lcom/estrongs/android/ui/navigation/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/navigation/k;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/navigation/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/navigation/l;->a:Lcom/estrongs/android/ui/navigation/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/l;->a:Lcom/estrongs/android/ui/navigation/k;

    iget-object v0, v0, Lcom/estrongs/android/ui/navigation/k;->a:Lcom/estrongs/android/ui/navigation/a;

    new-instance v1, Lcom/estrongs/android/ui/navigation/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/navigation/m;-><init>(Lcom/estrongs/android/ui/navigation/l;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/navigation/a;->a(Lcom/estrongs/android/ui/navigation/r;)V

    return-void
.end method
