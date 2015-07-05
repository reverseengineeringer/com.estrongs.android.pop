.class Lcom/estrongs/android/ui/preference/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/FtpServerPreference;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/o;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/o;->a:Lcom/estrongs/android/ui/preference/FtpServerPreference;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/FtpServerPreference;->b(Lcom/estrongs/android/ui/preference/FtpServerPreference;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
