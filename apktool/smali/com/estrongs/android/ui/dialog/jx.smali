.class Lcom/estrongs/android/ui/dialog/jx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/jw;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/jw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jx;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jx;->a:Lcom/estrongs/android/ui/dialog/jw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jw;->dismiss()V

    return-void
.end method
