.class Lcom/estrongs/android/pop/app/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/r;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/r;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/x;->a:Lcom/estrongs/android/pop/app/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->c(Lcom/estrongs/android/pop/app/r;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->a(Lcom/estrongs/android/pop/app/r;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->q()V

    return-void
.end method
