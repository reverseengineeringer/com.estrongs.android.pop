.class Lcom/estrongs/android/pop/app/in;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/im;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/im;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/in;->a:Lcom/estrongs/android/pop/app/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
