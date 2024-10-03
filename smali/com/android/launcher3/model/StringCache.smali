.class public Lcom/android/launcher3/model/StringCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allAppsPersonalTab:Ljava/lang/String;

.field public allAppsPersonalTabAccessibility:Ljava/lang/String;

.field public allAppsWorkTab:Ljava/lang/String;

.field public allAppsWorkTabAccessibility:Ljava/lang/String;

.field public disabledByAdminMessage:Ljava/lang/String;

.field public disabledScreenshotMessage:Ljava/lang/String;

.field public widgetsPersonalTab:Ljava/lang/String;

.field public widgetsWorkTab:Ljava/lang/String;

.field public workFolderName:Ljava/lang/String;

.field public workProfileEdu:Ljava/lang/String;

.field public workProfileEduAccept:Ljava/lang/String;

.field public workProfileEnableButton:Ljava/lang/String;

.field public workProfilePauseButton:Ljava/lang/String;

.field public workProfilePausedDescription:Ljava/lang/String;

.field public workProfilePausedTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/StringCache;->lambda$getEnterpriseString$1(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/model/StringCache;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/StringCache;->lambda$loadStrings$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultWorkProfilePausedDescriptionString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    if-eqz p0, :cond_2

    const-class p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getManagedSubscriptionsPolicy()Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/ManagedSubscriptionsPolicy;->getPolicyType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const p0, 0x7f12029d

    goto :goto_1

    :cond_1
    const p0, 0x7f12029c

    :goto_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p0, 0x7f120299

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Ln/i3;

    invoke-direct {v0, p1, p3}, Ln/i3;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getEnterpriseString(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/StringCache;->getUpdatableEnterpriseString(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private getUpdatableEnterpriseString(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x21
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getEnterpriseString$1(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$loadStrings$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/StringCache;->getDefaultWorkProfilePausedDescriptionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clone()Lcom/android/launcher3/model/StringCache;
    .locals 2

    new-instance v0, Lcom/android/launcher3/model/StringCache;

    invoke-direct {v0}, Lcom/android/launcher3/model/StringCache;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEduAccept:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEduAccept:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->workFolderName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->workFolderName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/model/StringCache;->disabledScreenshotMessage:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/launcher3/model/StringCache;->disabledScreenshotMessage:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object p0

    return-object p0
.end method

.method public loadStrings(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Launcher.WORK_PROFILE_EDU"

    const v1, 0x7f1202a1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_EDU_ACCEPT"

    const v1, 0x7f1202a0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEduAccept:Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_PAUSED_TITLE"

    const v1, 0x7f12029e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    new-instance v0, Ln/j3;

    invoke-direct {v0, p0, p1}, Ln/j3;-><init>(Lcom/android/launcher3/model/StringCache;Landroid/content/Context;)V

    const-string v1, "Launcher.WORK_PROFILE_PAUSED_DESCRIPTION"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_PAUSE_BUTTON"

    const v1, 0x7f120298

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfilePauseButton:Ljava/lang/String;

    const-string v0, "Launcher.WORK_PROFILE_ENABLE_BUTTON"

    const v1, 0x7f120297

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_WORK_TAB"

    const v1, 0x7f12006b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_PERSONAL_TAB"

    const v1, 0x7f120067

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_WORK_TAB_ACCESSIBILITY"

    const v1, 0x7f120063

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    const-string v0, "Launcher.ALL_APPS_PERSONAL_TAB_ACCESSIBILITY"

    const v1, 0x7f120062

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    const-string v0, "Launcher.WORK_FOLDER_NAME"

    const v1, 0x7f12029f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->workFolderName:Ljava/lang/String;

    const-string v0, "Launcher.WIDGETS_WORK_TAB"

    const v1, 0x7f120293

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    const-string v0, "Launcher.WIDGETS_PERSONAL_TAB"

    const v1, 0x7f120291

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    const-string v0, "Launcher.DISABLED_BY_ADMIN_MESSAGE"

    const v1, 0x7f120181

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    const-string v0, "Launcher.DISABLED_SCREENSHOT_MESSAGE"

    const v1, 0x7f12022a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/model/StringCache;->getEnterpriseString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/StringCache;->disabledScreenshotMessage:Ljava/lang/String;

    return-void
.end method
