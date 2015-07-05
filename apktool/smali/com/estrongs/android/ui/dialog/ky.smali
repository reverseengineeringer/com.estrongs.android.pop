.class Lcom/estrongs/android/ui/dialog/ky;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/kw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/kw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ky;->a:Lcom/estrongs/android/ui/dialog/kw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ky;->a:Lcom/estrongs/android/ui/dialog/kw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/kw;->dismiss()V

    return-void
.end method
