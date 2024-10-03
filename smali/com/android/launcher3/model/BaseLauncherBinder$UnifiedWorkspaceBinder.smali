.class Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/BaseLauncherBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnifiedWorkspaceBinder"
.end annotation


# instance fields
.field private final mApp:Lcom/android/launcher3/LauncherAppState;

.field private final mAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

.field private final mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

.field private final mCardWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nothing/launcher/card/s;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtraItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyBindingId:I

.field private final mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

.field private final mUiExecutor:Ljava/util/concurrent/Executor;

.field private final mWorkspaceItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/model/BaseLauncherBinder;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/BaseLauncherBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/concurrent/Executor;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/launcher3/LauncherAppState;",
            "Lcom/android/launcher3/model/BgDataModel;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/nothing/launcher/card/s;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;",
            ">;",
            "Lcom/android/launcher3/util/IntArray;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    iput-object p5, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iput p6, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mMyBindingId:I

    iput-object p7, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mWorkspaceItems:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mAppWidgets:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mExtraItems:Ljava/util/ArrayList;

    iput-object p11, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    iput-object p9, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCardWidgets:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bind$6(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->bind(ZI)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bind$2(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private bind(ZI)V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    invoke-interface {v0, v1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->getPagesToBindSynchronously(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null screen ids provided by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mWorkspaceItems:Ljava/util/ArrayList;

    invoke-static {v0, v7, v1, v2}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v7, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mAppWidgets:Ljava/util/ArrayList;

    invoke-static {v0, v7, v3, v4}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v7, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCardWidgets:Ljava/util/ArrayList;

    invoke-static {v0, v7, v5, v6}, Lcom/android/launcher3/model/ModelUtils;->filterCurrentWorkspaceItems(Lcom/android/launcher3/util/IntSet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v7, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    invoke-virtual {v8, v7, v1}, Lcom/android/launcher3/model/BaseLauncherBinder;->sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    iget-object v8, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->this$0:Lcom/android/launcher3/model/BaseLauncherBinder;

    invoke-virtual {v8, v7, v2}, Lcom/android/launcher3/model/BaseLauncherBinder;->sortWorkspaceItemsSpatially(Lcom/android/launcher3/InvariantDeviceProfile;Ljava/util/ArrayList;)V

    sget-object v7, Lcom/android/launcher3/model/v;->a:Lcom/android/launcher3/model/v;

    iget-object v8, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    new-instance v7, Lcom/android/launcher3/model/n;

    invoke-direct {v7, p0}, Lcom/android/launcher3/model/n;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;)V

    iget-object v8, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    iget-object v7, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v1, v7}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v3, v1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->bindAppWidgets(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v5, v1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->bindCardWidgets(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->CHANGE_MODEL_DELEGATE_LOADING_ORDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mExtraItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/launcher3/model/o;

    invoke-direct {v3, p0}, Lcom/android/launcher3/model/o;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    new-instance v1, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v1}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    new-instance v3, Ln/l;

    invoke-direct {v3, v1}, Ln/l;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->bindAppWidgets(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    invoke-direct {p0, v6, v3}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->bindCardWidgets(Ljava/util/List;Ljava/util/concurrent/Executor;)V

    new-instance v2, Lcom/android/launcher3/model/s;

    invoke-direct {v2, v0}, Lcom/android/launcher3/model/s;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    new-instance v2, Lcom/android/launcher3/model/w;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/w;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;)V

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v2, Lcom/android/launcher3/model/t;

    invoke-direct {v2, v0, v1, p2, p1}, Lcom/android/launcher3/model/t;-><init>(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V

    iget-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v2, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget-object p0, p0, Lcom/android/launcher3/model/BgDataModel;->stringCache:Lcom/android/launcher3/model/StringCache;

    invoke-virtual {p0}, Lcom/android/launcher3/model/StringCache;->clone()Lcom/android/launcher3/model/StringCache;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindStringCache(Lcom/android/launcher3/model/StringCache;)V

    return-void
.end method

.method private bindAppWidgets(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
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

    new-instance v3, Lcom/android/launcher3/model/q;

    invoke-direct {v3, v2}, Lcom/android/launcher3/model/q;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0, v3, p2}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bindCardWidgets(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nothing/launcher/card/s;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
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

    new-instance v3, Lcom/android/launcher3/model/r;

    invoke-direct {v3, v2}, Lcom/android/launcher3/model/r;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0, v3, p2}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bindWorkspaceItems(Ljava/util/ArrayList;Ljava/util/concurrent/Executor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
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
    new-instance v4, Lcom/android/launcher3/model/u;

    invoke-direct {v4, p1, v1, v3}, Lcom/android/launcher3/model/u;-><init>(Ljava/util/ArrayList;II)V

    invoke-virtual {p0, v4, p2}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$executeCallbacksTask$9(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bindAppWidgets$8(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bind$4(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bind$5()V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bind$1(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic h(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bindWorkspaceItems$7(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bind$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bind$3(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->lambda$bindCardWidgets$10(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private static synthetic lambda$bind$0(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->clearPendingBinds()V

    invoke-interface {p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->startBinding()V

    return-void
.end method

.method private synthetic lambda$bind$1(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mOrderedScreenIds:Lcom/android/launcher3/util/IntArray;

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindScreens(Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method

.method private static synthetic lambda$bind$2(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method

.method private synthetic lambda$bind$3(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/p;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/p;-><init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    iget-object p1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mUiExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private static synthetic lambda$bind$4(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->finishBindingItems(Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method private synthetic lambda$bind$5()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/ItemInstallQueue;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->resumeModelPush(I)V

    return-void
.end method

.method private static synthetic lambda$bind$6(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZLcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V

    return-void
.end method

.method private static synthetic lambda$bindAppWidgets$8(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private static synthetic lambda$bindCardWidgets$10(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private static synthetic lambda$bindWorkspaceItems$7(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    add-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p3, p0, p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$executeCallbacksTask$9(Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mMyBindingId:I

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    iget v1, v1, Lcom/android/launcher3/model/BgDataModel;->lastBindId:I

    if-eq v0, v1, :cond_0

    const-string p0, "LauncherBinder"

    const-string p1, "Too many consecutive reloads, skipping obsolete data-bind"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;->mCallbacks:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-interface {p1, p0}, Lcom/android/launcher3/LauncherModel$CallbackTask;->execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method


# virtual methods
.method protected executeCallbacksTask(Lcom/android/launcher3/LauncherModel$CallbackTask;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/x;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/model/x;-><init>(Lcom/android/launcher3/model/BaseLauncherBinder$UnifiedWorkspaceBinder;Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
