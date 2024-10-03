.class public Lcom/android/searchlauncher/QuickstepSettingsFragment;
.super Lcom/android/searchlauncher/SearchSettingsFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/searchlauncher/SearchSettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected initPreference(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "pref_smartspace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/searchlauncher/SearchSettingsFragment;->initPreference(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/searchlauncher/d;->i(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/searchlauncher/d;->g()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
