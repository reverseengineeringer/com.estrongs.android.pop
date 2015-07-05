.class Lcom/estrongs/android/ui/dialog/dr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/dn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/dn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/dr;->a:Lcom/estrongs/android/ui/dialog/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dr;->a:Lcom/estrongs/android/ui/dialog/dn;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/dn;->b()V

    return-void
.end method
