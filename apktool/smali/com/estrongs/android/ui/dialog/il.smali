.class Lcom/estrongs/android/ui/dialog/il;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ij;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ij;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/il;->a:Lcom/estrongs/android/ui/dialog/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/il;->a:Lcom/estrongs/android/ui/dialog/ij;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ij;->dismiss()V

    return-void
.end method
