.class public final synthetic Lp4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic a:Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/a;->a:Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lp4/a;->a:Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;

    invoke-static {p0, p1}, Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;->d(Lcom/nothing/launcher/setting/homesettings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
