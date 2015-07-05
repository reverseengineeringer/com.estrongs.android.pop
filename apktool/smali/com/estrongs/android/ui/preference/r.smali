.class Lcom/estrongs/android/ui/preference/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/ListPreference;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/ListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/r;->a:Lcom/estrongs/android/ui/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/r;->a:Lcom/estrongs/android/ui/preference/ListPreference;

    invoke-static {v0, p2}, Lcom/estrongs/android/ui/preference/ListPreference;->a(Lcom/estrongs/android/ui/preference/ListPreference;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/r;->a:Lcom/estrongs/android/ui/preference/ListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/ui/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
