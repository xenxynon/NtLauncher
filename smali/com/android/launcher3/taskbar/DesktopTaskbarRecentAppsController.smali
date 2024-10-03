.class public Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;
.super Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;
.source "SourceFile"


# instance fields
.field private mApps:[Lcom/android/launcher3/model/data/AppInfo;

.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mRunningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;->mRunningApps:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    return-void
.end method

.method private getAppInfo(Landroid/content/ComponentName;)Lcom/android/launcher3/model/data/AppInfo;
    .locals 4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRunningAppsFromTasks()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->getRunningTasks()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    invoke-direct {p0, v3}, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;->getAppInfo(Landroid/content/ComponentName;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method protected isEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    return-void
.end method

.method protected setApps([Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    return-void
.end method

.method protected updateHotseatItemInfos([Lcom/android/launcher3/model/data/ItemInfo;)[Lcom/android/launcher3/model/data/ItemInfo;
    .locals 3

    array-length v0, p1

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;->mRunningApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/launcher3/model/data/ItemInfo;

    array-length p1, p1

    :goto_0
    array-length v2, v1

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;->mRunningApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v2, v1, p1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected updateRunningApps(Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;->getRunningAppsFromTasks()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    if-lt v5, v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v3, v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/AppInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iput-object v1, p0, Lcom/android/launcher3/taskbar/DesktopTaskbarRecentAppsController;->mRunningApps:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->commitRunningAppsToUI()V

    return-void
.end method
