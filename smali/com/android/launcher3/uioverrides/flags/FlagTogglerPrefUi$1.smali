.class Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$1;
.super Landroidx/preference/PreferenceDataStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;


# direct methods
.method constructor <init>(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$1;->this$0:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

    invoke-direct {p0}, Landroidx/preference/PreferenceDataStore;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi$1;->this$0:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->access$000(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;)V

    return-void
.end method
