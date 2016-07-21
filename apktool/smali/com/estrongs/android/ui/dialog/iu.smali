.class Lcom/estrongs/android/ui/dialog/iu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/is;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/is;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/iu;->a:Lcom/estrongs/android/ui/dialog/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/iu;->a:Lcom/estrongs/android/ui/dialog/is;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/is;->dismiss()V

    return-void
.end method
