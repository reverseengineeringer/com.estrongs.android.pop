.class Lcom/estrongs/android/ui/dialog/lg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/le;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/le;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/lg;->a:Lcom/estrongs/android/ui/dialog/le;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/lg;->a:Lcom/estrongs/android/ui/dialog/le;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/le;->dismiss()V

    return-void
.end method
