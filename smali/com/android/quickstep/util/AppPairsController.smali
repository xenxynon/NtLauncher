.class public Lcom/android/quickstep/util/AppPairsController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FULL_RATIO:I = 0x2

.field private static final LEFT_TOP:I = 0x0

.field private static final POINT_FIVE_RATIO:I = 0x1

.field private static final POINT_SEVEN_RATIO:I = 0x2

.field private static final POINT_THREE_RATIO:I = 0x0

.field private static final RIGHT_BOTTOM:I = 0x4


# instance fields
.field public DEFAULT_RATIO:I

.field private final mContext:Landroid/content/Context;

.field private final mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/util/SplitSelectStateController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/util/AppPairsController;->DEFAULT_RATIO:I

    iput-object p1, p0, Lcom/android/quickstep/util/AppPairsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/AppPairsController;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/util/AppPairsController;->lambda$saveAppPair$0(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/icons/IconCache;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/AppPairsController;->lambda$saveAppPair$3(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/icons/IconCache;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/util/AppPairsController;->lambda$saveAppPair$1(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method private complement(I)I
    .locals 0

    rsub-int/lit8 p0, p1, 0x2

    return p0
.end method

.method public static synthetic d(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/AppPairsController;->lambda$saveAppPair$2(Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method

.method private static synthetic lambda$saveAppPair$0(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 1

    const-string v0, ""

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    iput-object p1, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    return-void
.end method

.method private static synthetic lambda$saveAppPair$1(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->addToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    return-void
.end method

.method private synthetic lambda$saveAppPair$2(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/android/quickstep/util/AppPairsController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/util/b;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/util/b;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$saveAppPair$3(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/icons/IconCache;)V
    .locals 2

    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/quickstep/util/e;

    invoke-direct {v1, p2, p1}, Lcom/android/quickstep/util/e;-><init>(Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    sget-object p2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/util/c;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/c;-><init>(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public saveAppPair(Lcom/android/quickstep/views/TaskView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->clone()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->clone()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p1

    iput v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    iget v0, p0, Lcom/android/quickstep/util/AppPairsController;->DEFAULT_RATIO:I

    add-int/lit8 v2, v0, 0x0

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/AppPairsController;->complement(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-static {v1, p1}, Lcom/android/launcher3/model/data/FolderInfo;->createAppPair(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    const-string v0, "App pair 1"

    iput-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/quickstep/util/AppPairsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/util/d;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/quickstep/util/d;-><init>(Lcom/android/quickstep/util/AppPairsController;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/icons/IconCache;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
