.class public abstract Lcom/android/launcher3/model/BaseModelUpdateTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ModelUpdateTask;


# static fields
.field private static final DEBUG_TASKS:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseModelUpdateTask"


# instance fields
.field private mAllAppsList:Lcom/android/launcher3/model/AllAppsList;

.field private mApp:Lcom/android/launcher3/LauncherAppState;

.field private mDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mUiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/HashMap;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$bindDeepShortcuts$5(Ljava/util/HashMap;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$bindUpdatedWorkspaceItems$2(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$scheduleCallbackTask$0(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$bindExtraContainerItems$4(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)I
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$bindUpdatedWorkspaceItems$3(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$bindApplicationsIfNeeded$10(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$bindUpdatedWidgets$6(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$bindUpdatedWorkspaceItems$1(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/util/function/Predicate;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$deleteAndBindComponentsRemoved$7(Ljava/util/function/Predicate;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$bindApplicationsIfNeeded$8(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$bindApplicationsIfNeeded$9(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$bindApplicationsIfNeeded$11([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private static synthetic lambda$bindApplicationsIfNeeded$10(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$bindApplicationsIfNeeded$11([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$bindApplicationsIfNeeded$8(Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/util/PackageUserKey;
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v1, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method private static synthetic lambda$bindApplicationsIfNeeded$9(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/Integer;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/model/data/AppInfo;->uid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$bindDeepShortcuts$5(Ljava/util/HashMap;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindDeepShortcutMap(Ljava/util/HashMap;)V

    return-void
.end method

.method private static synthetic lambda$bindExtraContainerItems$4(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method

.method private static synthetic lambda$bindUpdatedWidgets$6(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindAllWidgets(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$bindUpdatedWorkspaceItems$1(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$bindUpdatedWorkspaceItems$2(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindWorkspaceItemsChanged(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$bindUpdatedWorkspaceItems$3(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    return p0
.end method

.method private static synthetic lambda$deleteAndBindComponentsRemoved$7(Ljava/util/function/Predicate;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindWorkspaceComponentsRemoved(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private static synthetic lambda$scheduleCallbackTask$0(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method


# virtual methods
.method public bindApplicationsIfNeeded()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindApplicationsIfNeeded(Z)V

    return-void
.end method

.method public bindApplicationsIfNeeded(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsList;->getAndResetChangeFlag()Z

    move-result v0

    sget-boolean v1, Lcom/android/launcher3/testing/shared/TestProtocol;->sDebugTracing:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindApplicationsIfNeeded changeFlag? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b/243688989"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {p1}, Lcom/android/launcher3/model/AllAppsList;->copyData()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/model/AllAppsList;->getFlags()I

    move-result v0

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Ln/a0;->a:Ln/a0;

    sget-object v3, Ln/n;->a:Ln/n;

    sget-object v4, Ln/y;->a:Ln/y;

    invoke-static {v2, v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Ln/w;

    invoke-direct {v2, p1, v0, v1}, Ln/w;-><init>([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    :cond_2
    return-void
.end method

.method public bindDeepShortcuts(Lcom/android/launcher3/model/BgDataModel;)V
    .locals 1
    .param p1    # Lcom/android/launcher3/model/BgDataModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel;->deepShortcutMap:Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance p1, Ln/t;

    invoke-direct {p1, v0}, Ln/t;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 1
    .param p1    # Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ln/m;

    invoke-direct {v0, p1}, Ln/m;-><init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V
    .locals 1
    .param p1    # Lcom/android/launcher3/model/BgDataModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/WidgetsModel;->getWidgetsListForPicker(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ln/s;

    invoke-direct {v0, p1}, Ln/s;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public bindUpdatedWorkspaceItems(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Ln/q;->a:Ln/q;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-boolean v1, Lcom/android/launcher3/testing/shared/TestProtocol;->sDebugTracing:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", workspaceUpdates "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b/243688989"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ln/u;

    invoke-direct {v1, v0}, Ln/u;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Ln/r;->a:Ln/r;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ln/o;

    invoke-direct {v1, v0}, Ln/o;-><init>(Lcom/android/launcher3/util/IntSparseArrayMap;)V

    invoke-interface {p1, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Ln/p;->a:Ln/p;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Ln/z;

    invoke-direct {v0, p0}, Ln/z;-><init>(Lcom/android/launcher3/model/BaseModelUpdateTask;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/function/Predicate;Ljava/lang/String;)V

    new-instance p2, Ln/v;

    invoke-direct {p2, p1}, Ln/v;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public abstract execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .param p1    # Lcom/android/launcher3/LauncherAppState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/model/BgDataModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/model/AllAppsList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public getLauncherCallBack()Lq2/m;
    .locals 4

    iget-object p0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    instance-of v3, v2, Lq2/m;

    if-eqz v3, :cond_0

    check-cast v2, Lq2/m;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 3

    iget-object p0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    sget-object v0, Lcom/android/launcher3/celllayout/CellPosMapper;->DEFAULT:Lcom/android/launcher3/celllayout/CellPosMapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/android/launcher3/LauncherModel;->getWriter(ZZLcom/android/launcher3/celllayout/CellPosMapper;Lcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/LauncherAppState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/LauncherModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/model/BgDataModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/launcher3/model/AllAppsList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iput-object p2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    iput-object p3, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iput-object p4, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iput-object p5, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modelLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " forTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b/243688989"

    invoke-static {v2, v1}, Lcom/android/launcher3/testing/shared/TestProtocol;->testLogD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mApp:Lcom/android/launcher3/LauncherAppState;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/model/BaseModelUpdateTask;->execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V

    return-void
.end method

.method public final scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 6
    .param p1    # Lcom/android/launcher3/LauncherModel$CallbackTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getCallbacks()[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/model/BaseModelUpdateTask;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Ln/x;

    invoke-direct {v5, p1, v3}, Ln/x;-><init>(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
