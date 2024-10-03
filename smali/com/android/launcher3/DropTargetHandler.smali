.class public final Lcom/android/launcher3/DropTargetHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/DropTargetHandler;->onSecondaryTargetCompleteDrop$lambda$1$lambda$0(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/DropTargetHandler;Lcom/android/launcher3/util/IntSet;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/DropTargetHandler;->onDeleteComplete$lambda$3(Lcom/android/launcher3/DropTargetHandler;Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/DropTargetHandler;Lkotlin/jvm/internal/a0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/DropTargetHandler;->onDeleteComplete$lambda$4(Lcom/android/launcher3/DropTargetHandler;Lkotlin/jvm/internal/a0;)V

    return-void
.end method

.method private final commitDelete(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelWriter;->commitDelete()V

    instance-of p0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz p0, :cond_0

    sget-object p0, Ly4/g;->a:Ly4/g;

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    :goto_0
    invoke-virtual {p0, p1}, Ly4/g;->g(Landroid/content/ComponentName;)V

    goto :goto_1

    :cond_0
    instance-of p0, p1, Lcom/nothing/launcher/card/s;

    if-eqz p0, :cond_1

    sget-object p0, Ly4/g;->a:Ly4/g;

    check-cast p1, Lcom/nothing/launcher/card/s;

    invoke-virtual {p1}, Lcom/nothing/launcher/card/s;->h()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p0, :cond_2

    sget-object p0, Ly4/c;->a:Ly4/c;

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p0, p1}, Ly4/c;->c(Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static final onDeleteComplete$lambda$3(Lcom/android/launcher3/DropTargetHandler;Lcom/android/launcher3/util/IntSet;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V

    iget-object p1, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/model/ModelWriter;->abortDelete()V

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method private static final onDeleteComplete$lambda$4(Lcom/android/launcher3/DropTargetHandler;Lkotlin/jvm/internal/a0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pageItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/DropTargetHandler;->commitDelete(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private static final onSecondaryTargetCompleteDrop$lambda$1$lambda$0(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;)V
    .locals 1

    const-string v0, "$deferred"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->onLauncherResume()V

    return-void
.end method


# virtual methods
.method public final dismissPrediction(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "announcement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onActionClicked"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    const p1, 0x7f12013d

    const v0, 0x7f12027a

    invoke-static {p0, p1, v0, p3, p2}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    const-string v0, "mLauncher.dragLayer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getMLauncher()Lcom/android/launcher3/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public final getViewUnderDrag(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lb3/m;->j(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getDragInfo()Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getDragInfo()Lcom/android/launcher3/CellLayout$CellInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onAccessibilityDelete(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/CharSequence;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announcement"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    const-string v2, "removed by accessibility drop"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    iget-object p1, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onClick(Lcom/android/launcher3/ButtonDropTarget;)V
    .locals 1

    const-string v0, "buttonDropTarget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    return-void
.end method

.method public final onDeleteComplete(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/a0;

    invoke-direct {v0}, Lkotlin/jvm/internal/a0;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p1, v0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    :cond_0
    iget-object p1, v0, Lkotlin/jvm/internal/a0;->g:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aput p1, v1, v2

    invoke-static {v1}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object p1

    :goto_0
    new-instance v1, Lcom/android/launcher3/y;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/y;-><init>(Lcom/android/launcher3/DropTargetHandler;Lcom/android/launcher3/util/IntSet;)V

    new-instance p1, Lcom/android/launcher3/z;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/z;-><init>(Lcom/android/launcher3/DropTargetHandler;Lkotlin/jvm/internal/a0;)V

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    const v0, 0x7f12013d

    const v2, 0x7f12027a

    invoke-static {p0, v0, v2, p1, v1}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDropAnimationComplete()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public final onSecondaryTargetCompleteDrop(Landroid/content/ComponentName;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, p2, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    instance-of p2, p2, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance p1, Lcom/android/launcher3/a0;

    invoke-direct {p1, v0}, Lcom/android/launcher3/a0;-><init>(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->sendFailure()V

    :cond_1
    return-void
.end method

.method public final prepareToUndoDelete()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/DropTargetHandler;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelWriter;->prepareToUndoDelete()V

    return-void
.end method
