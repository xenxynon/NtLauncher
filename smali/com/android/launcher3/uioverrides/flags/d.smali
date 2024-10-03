.class public final synthetic Lcom/android/launcher3/uioverrides/flags/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

.field public final synthetic h:Landroidx/preference/SwitchPreference;

.field public final synthetic i:Lcom/android/launcher3/uioverrides/flags/DebugFlag;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/flags/d;->g:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/flags/d;->h:Landroidx/preference/SwitchPreference;

    iput-object p3, p0, Lcom/android/launcher3/uioverrides/flags/d;->i:Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/d;->g:Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/flags/d;->h:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/flags/d;->i:Lcom/android/launcher3/uioverrides/flags/DebugFlag;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;->c(Lcom/android/launcher3/uioverrides/flags/FlagTogglerPrefUi;Landroidx/preference/SwitchPreference;Lcom/android/launcher3/uioverrides/flags/DebugFlag;)V

    return-void
.end method
