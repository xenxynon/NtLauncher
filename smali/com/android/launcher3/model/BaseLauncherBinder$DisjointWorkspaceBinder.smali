.class Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/BaseLauncherBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisjointWorkspaceBinder"
.end annotation


# instance fields
.field private final mBoundItemIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

.field private final mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

.field final synthetic this$0:Lcom/android/launcher3/model/BaseLauncherBinder;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/util/IntArray;)V
    .locals 5

    iput-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    iget-object p1, p1, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-interface {v3, p2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/IntSet;->addAll(Lcom/android/launcher3/util/IntSet;)Lcom/android/launcher3/util/IntSet;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p1}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/IntSet;->add(I)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindOtherWorkspacePages$8(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindCurrentWorkspacePages$6(IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private bindAppWidgets(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v4, Lcom/android/launcher3/model/h;

    invoke-direct {v4, v2}, Lcom/android/launcher3/model/h;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v2, v2, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bindWorkspaceItems(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x6

    if-gt v2, v0, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :cond_0
    sub-int v3, v0, v1

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v5, Lcom/android/launcher3/model/i;

    invoke-direct {v5, p1, v1, v3}, Lcom/android/launcher3/model/i;-><init>(Ljava/util/ArrayList;II)V

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v1, v1, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v4, v5, v1}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindOtherWorkspacePages$7(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindCurrentWorkspacePages$2(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindOtherWorkspacePages$10()V

    return-void
.end method

.method public static synthetic f(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindWorkspaceItems$11(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindCurrentWorkspacePages$0(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindOtherWorkspacePages$9(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindCurrentWorkspacePages$1(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindCurrentWorkspacePages$4(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindCurrentWorkspacePages$5(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindAppWidgets$12(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private static synthetic lambda$bindAppWidgets$12(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$bindCurrentWorkspacePages$0(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$bindCurrentWorkspacePages$1(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$bindCurrentWorkspacePages$2(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method

.method private synthetic lambda$bindCurrentWorkspacePages$3(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v1, Lcom/android/launcher3/model/g;

    invoke-direct {v1, p1}, Lcom/android/launcher3/model/g;-><init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static synthetic lambda$bindCurrentWorkspacePages$4(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->clearPendingBinds()V

    invoke-interface {p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->startBinding()V

    return-void
.end method

.method private synthetic lambda$bindCurrentWorkspacePages$5(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindScreens(Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method

.method private synthetic lambda$bindCurrentWorkspacePages$6(IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    invoke-interface {p3, p0, v0, p1, p2}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V

    return-void
.end method

.method private synthetic lambda$bindOtherWorkspacePages$10()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    return-void
.end method

.method private synthetic lambda$bindOtherWorkspacePages$7(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$bindOtherWorkspacePages$8(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mBoundItemIds:Ljava/util/Set;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$bindOtherWorkspacePages$9(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->mCurrentScreenIds:Lcom/android/launcher3/util/IntSet;

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method private static synthetic lambda$bindWorkspaceItems$11(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p3, p0, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->lambda$bindCurrentWorkspacePages$3(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method


# virtual methods
.method protected bindCurrentWorkspacePages(Z)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v1, v1, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v3, v3, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v4, v4, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v5, v5, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->extraItems:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v6, Ln/i;

    invoke-direct {v6, v0}, Ln/i;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v5, v6}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v5, v5, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v5, v5, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/launcher3/model/m;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/m;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/launcher3/model/b;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/b;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/launcher3/model/l;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/l;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v1, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/BaseLauncherBinder;->sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    sget-object v1, Lcom/android/launcher3/model/j;->a:Lcom/android/launcher3/model/j;

    iget-object v4, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v1, Lcom/android/launcher3/model/e;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/e;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v4, v4, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindWorkspaceItems(Ljava/util/ArrayList;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindAppWidgets(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v1, Lcom/android/launcher3/model/f;

    invoke-direct {v1, p0, v5, p1}, Lcom/android/launcher3/model/f;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;IZ)V

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected bindOtherWorkspacePages()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v0, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v2, v2, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v2, v2, Lcom/android/launcher3/model/BgDataModel;->workspaceItems:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v3, v3, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v3, v3, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/launcher3/model/c;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/c;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v0, Lcom/android/launcher3/model/d;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/d;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v3, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/model/BaseLauncherBinder;->sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindWorkspaceItems(Ljava/util/ArrayList;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->bindAppWidgets(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    new-instance v1, Lcom/android/launcher3/model/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/a;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v2, v2, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/BaseLauncherBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v0, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mUiExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/model/k;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/k;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v0, v0, Lcom/android/launcher3/model/BaseLauncherBinder;->mCallbacksList:[Lcom/android/launcher3/model/BgDataModel$Callbacks;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$DisjointWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    iget-object v4, v4, Lcom/android/launcher3/model/BaseLauncherBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object v4, v4, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {v4}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindStringCache(Lcom/android/launcher3/model/StringCache;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
