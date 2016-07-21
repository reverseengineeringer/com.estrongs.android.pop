.class Lcom/estrongs/android/view/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/compress/bb;

.field final synthetic b:Lcom/estrongs/android/view/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/pop/app/compress/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ar;->b:Lcom/estrongs/android/view/ak;

    iput-object p2, p0, Lcom/estrongs/android/view/ar;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ar;->a:Lcom/estrongs/android/pop/app/compress/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bb;->d()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
