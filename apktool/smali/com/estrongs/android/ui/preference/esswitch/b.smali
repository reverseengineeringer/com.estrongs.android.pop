.class Lcom/estrongs/android/ui/preference/esswitch/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/esswitch/b;->a:Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;Lcom/estrongs/android/ui/preference/esswitch/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/preference/esswitch/b;-><init>(Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/esswitch/b;->a:Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->a(Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/esswitch/b;->a:Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->a(Z)V

    goto :goto_1
.end method
