.class Lcom/estrongs/android/ui/g/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/g/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/g/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/g/k;->a:Lcom/estrongs/android/ui/g/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/g/k;->a:Lcom/estrongs/android/ui/g/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/g/h;->h(Lcom/estrongs/android/ui/g/h;)Lcom/estrongs/android/ui/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->h()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
