.class public Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer;
.implements Lcom/android/quickstep/RecentsModel$RunningTasksListener;


# instance fields
.field private final mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mDeferUpdatesForSUW:Z

.field private mDeferredUpdates:Ljava/lang/Runnable;

.field private final mHotseatItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;[Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->lambda$commitItemsToUI$0([Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private commitItemsToUI()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isBindingItems()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    new-array v1, v0, [Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v5, v1, v3

    aget-object v5, v1, v3

    if-nez v5, :cond_1

    if-ge v4, v2, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v5, v1, v3

    aget-object v5, v1, v3

    iput v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarRecentAppsController:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->updateHotseatItemInfos([Lcom/android/launcher3/model/data/ItemInfo;)[Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferUpdatesForSUW:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/launcher3/taskbar/z2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/taskbar/z2;-><init>(Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;[Lcom/android/launcher3/model/data/ItemInfo;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferredUpdates:Ljava/lang/Runnable;

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->updateHotseatItemsAndBackground([Lcom/android/launcher3/model/data/ItemInfo;)V

    :goto_1
    return-void
.end method

.method private handleItemsAdded(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private handleItemsRemoved(Ljava/util/function/Predicate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private synthetic lambda$commitItemsToUI$0([Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->updateHotseatItemsAndBackground([Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private updateHotseatItemsAndBackground([Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarView;->updateHotseatItems([Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->updateIconsBackground()V

    return-void
.end method


# virtual methods
.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarRecentAppsController:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->setApps([Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public bindAppsAdded(Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result p1

    invoke-direct {p0, p3}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result p2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    :cond_1
    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->setDeepShortcutMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 2

    iget v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    const/16 v1, -0x67

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    goto :goto_0

    :cond_0
    const/16 v1, -0x66

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->setPredictedApps(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bindItems(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    :cond_0
    return-void
.end method

.method public bindItemsModified(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItems(Ljava/util/Collection;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsRemoved(Ljava/util/function/Predicate;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsAdded(Ljava/util/List;)Z

    move-result p1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    :cond_1
    return-void
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-interface {p0, p1, v0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->updateRestoreItems(Ljava/util/HashSet;Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->handleItemsRemoved(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    :cond_0
    return-void
.end method

.method public bindWorkspaceItemsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-interface {p0, p1, v0}, Lcom/android/launcher3/util/LauncherBindableItemsContainer;->updateWorkspaceItems(Ljava/util/List;Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method public commitRunningAppsToUI()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    return-void
.end method

.method protected dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarModelCallbacks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\thotseat items count=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    if-eqz v1, :cond_0

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "%s\tpredicted items count=%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferUpdatesForSUW:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmDeferUpdatesForSUW=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferredUpdates:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    move v2, v4

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v0, v4

    const-string p0, "%s\tupdates pending=%b"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setBindingItems(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->commitItemsToUI()V

    return-void
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarRecentAppsController:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/RecentsModel;->registerRunningTasksListener(Lcom/android/quickstep/RecentsModel$RunningTasksListener;)V

    :cond_0
    return-void
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v3, v2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRunningTasksChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->updateRunningApps()V

    return-void
.end method

.method public setDeferUpdatesForSUW(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferUpdatesForSUW:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferredUpdates:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContainer:Lcom/android/launcher3/taskbar/TaskbarView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mDeferredUpdates:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public startBinding()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->setBindingItems(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mPredictedItems:Ljava/util/List;

    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsModel;->unregisterRunningTasksListener()V

    return-void
.end method

.method public updateRunningApps()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarRecentAppsController:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarModelCallbacks;->mHotseatItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->updateRunningApps(Landroid/util/SparseArray;)V

    return-void
.end method
