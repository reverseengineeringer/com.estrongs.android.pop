.class Lcom/estrongs/android/ui/preference/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/CustomListPreference;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/CustomListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/a;->a:Lcom/estrongs/android/ui/preference/CustomListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/a;->a:Lcom/estrongs/android/ui/preference/CustomListPreference;

    invoke-static {v0, p2}, Lcom/estrongs/android/ui/preference/CustomListPreference;->a(Lcom/estrongs/android/ui/preference/CustomListPreference;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/a;->a:Lcom/estrongs/android/ui/preference/CustomListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/ui/preference/CustomListPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
