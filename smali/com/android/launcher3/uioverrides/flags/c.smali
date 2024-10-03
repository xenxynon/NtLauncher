.class public final synthetic Lcom/android/launcher3/uioverrides/flags/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

.field public final synthetic b:Landroidx/preference/SwitchPreference;

.field public final synthetic c:Lcom/android/launcher3/uioverrides/flags/DebugFlag;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/flags/c;->a:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/flags/c;->b:Landroidx/preference/SwitchPreference;

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/flags/c;->c:Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/c;->a:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/flags/c;->b:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/c;->c:Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->a(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
