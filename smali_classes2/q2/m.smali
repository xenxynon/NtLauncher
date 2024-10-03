.class public Lq2/m;
.super Lcom/android/launcher3/Launcher;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/IWindowModeTips;
.implements Ls3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq2/m$b;,
        Lq2/m$a;
    }
.end annotation


# static fields
.field public static final Companion:Lq2/m$a;


# instance fields
.field private cardWidgetHost:Lcom/nothing/launcher/card/p;

.field private final cardWidgetManager$delegate:Ln5/e;

.field private final hiddenAppsModel$delegate:Ln5/e;

.field private mOverviewTip:Landroid/view/View;

.field private osCoreProxy:Lcom/nothing/launcher/ossupport/core/NothingOSCore;

.field private resizeManager:La4/g;

.field private final widgetOnRemove$delegate:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq2/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq2/m$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lq2/m;->Companion:Lq2/m$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/Launcher;-><init>()V

    new-instance v0, Lq2/m$f;

    invoke-direct {v0, p0}, Lq2/m$f;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lg4/g;

    invoke-static {v2}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v2

    new-instance v3, Lq2/m$g;

    invoke-direct {v3, p0}, Lq2/m$g;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lq2/m$h;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lq2/m$h;-><init>(Ly5/a;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lf6/c;Ly5/a;Ly5/a;Ly5/a;)V

    iput-object v1, p0, Lq2/m;->hiddenAppsModel$delegate:Ln5/e;

    new-instance v0, Lq2/m$c;

    invoke-direct {v0, p0}, Lq2/m$c;-><init>(Lq2/m;)V

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lq2/m;->cardWidgetManager$delegate:Ln5/e;

    new-instance v0, Lq2/m$i;

    invoke-direct {v0, p0}, Lq2/m$i;-><init>(Lq2/m;)V

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lq2/m;->widgetOnRemove$delegate:Ln5/e;

    return-void
.end method

.method public static synthetic N(ILq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lq2/m;->removeCardWidget$lambda$14(ILq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic O(Lq2/m;ILcom/android/launcher3/util/PendingRequestArgs;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lq2/m;->handleCardResult$lambda$16(Lq2/m;ILcom/android/launcher3/util/PendingRequestArgs;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public static synthetic P(Lq2/m;ILcom/android/launcher3/util/PendingRequestArgs;Lcom/nothing/cardhost/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lq2/m;->completeTwoStageCardDrop$lambda$17(Lq2/m;ILcom/android/launcher3/util/PendingRequestArgs;Lcom/nothing/cardhost/e;)V

    return-void
.end method

.method public static synthetic Q(Lq2/m;)V
    .locals 0

    invoke-static {p0}, Lq2/m;->handleCardResult$lambda$15(Lq2/m;)V

    return-void
.end method

.method public static synthetic R(Lq2/m;)V
    .locals 0

    invoke-static {p0}, Lq2/m;->onCreate$lambda$1(Lq2/m;)V

    return-void
.end method

.method public static synthetic S(Lq2/m;)V
    .locals 0

    invoke-static {p0}, Lq2/m;->addCardWidgetImpl$lambda$7(Lq2/m;)V

    return-void
.end method

.method public static final synthetic access$getMPrevLauncherState$p$s-993110138(Lq2/m;)Lcom/android/launcher3/LauncherState;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mPrevLauncherState:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method public static final synthetic access$removeCardWidget(Lq2/m;I)V
    .locals 0

    invoke-direct {p0, p1}, Lq2/m;->removeCardWidget(I)V

    return-void
.end method

.method private final addCardWidgetFromDrop(Lcom/nothing/launcher/card/v;)V
    .locals 6

    iget-object v0, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/nothing/launcher/card/v;->k()Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nothing/launcher/card/v;->i()Lcom/nothing/cardhost/e;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher3/dragndrop/NTDragLayer;->removeView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/nothing/cardhost/e;->getAppWidgetId()I

    move-result v4

    invoke-direct {p0, v4, p1, v2, v1}, Lq2/m;->addCardWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;)V

    invoke-virtual {p1, v3}, Lcom/nothing/launcher/card/v;->m(Lcom/nothing/cardhost/e;)V

    sget-object v2, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/nothing/cardhost/d;->l()I

    move-result v2

    invoke-virtual {p1}, Lcom/nothing/launcher/card/v;->j()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v4

    invoke-virtual {p1}, Lcom/nothing/launcher/card/v;->h()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5}, Lcom/nothing/cardhost/d;->m(ILcom/nothing/cardservice/CardWidgetMetaInfo;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v2, p1, v3, v1}, Lq2/m;->addCardWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;)V

    goto :goto_1

    :cond_2
    const-string p0, "Launcher"

    const-string p1, "bindAppWidgetId error"

    invoke-static {p0, p1}, Ly2/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/nothing/launcher/card/p;->r(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final addCardWidgetFromDropImpl(ILcom/android/launcher3/model/data/ItemInfo;Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lq2/m;->addCardWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;I)V

    return-void
.end method

.method private final addCardWidgetImpl(ILcom/android/launcher3/model/data/ItemInfo;Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;I)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p4, p0, p1, p2, v0}, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->c(Lq2/m;ILcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4, p0}, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->a(Landroid/content/Context;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lq2/m;->completeAddCardWidget(ILcom/android/launcher3/model/data/ItemInfo;Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/CardWidgetProviderInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    const/4 p2, 0x0

    new-instance p3, Lq2/j;

    invoke-direct {p3, p0}, Lq2/j;-><init>(Lq2/m;)V

    invoke-virtual {p1, p5, p2, p3}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final addCardWidgetImpl$lambda$7(Lq2/m;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    return-void
.end method

.method private final completeAddCardWidget(ILcom/android/launcher3/model/data/ItemInfo;Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/CardWidgetProviderInfo;)V
    .locals 9

    if-nez p4, :cond_0

    invoke-direct {p0}, Lq2/m;->getCardWidgetManager()Lcom/nothing/launcher/card/h;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/nothing/launcher/card/h;->c(I)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object p4

    :cond_0
    const-string v7, "Launcher"

    if-eqz p4, :cond_9

    const/4 v8, 0x0

    if-nez p3, :cond_2

    iget-object v0, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/nothing/cardhost/d;->q(Lcom/nothing/cardhost/d;Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;ZILjava/lang/Object;)Lcom/nothing/cardhost/e;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v8

    :cond_2
    :goto_0
    new-instance v6, Lcom/nothing/launcher/card/s;

    invoke-virtual {p4}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    invoke-direct {v6, p1, p4}, Lcom/nothing/launcher/card/s;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v6, p2}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0, p3, v6}, Lq2/m;->prepareCardWidget(Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/s;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-interface {p1, p3, v6}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    const p1, 0x7f12013b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->announceForAccessibility(I)V

    instance-of p1, p3, Lcom/nothing/launcher/card/r;

    if-eqz p1, :cond_4

    move-object v8, p3

    check-cast v8, Lcom/nothing/launcher/card/r;

    :cond_4
    if-eqz v8, :cond_8

    iget p1, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget p3, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    if-nez p1, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "container = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " screenId = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p3

    sget-object p4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p3, p4}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {v8}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v8}, Landroid/view/View;->isLayoutRequested()Z

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->W:Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;

    const-string p3, "cellLayout"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v8, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;->b(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V

    goto :goto_2

    :cond_6
    new-instance p0, Lq2/m$e;

    invoke-direct {p0, v8, p1}, Lq2/m$e;-><init>(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {v8, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_2
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p3

    new-instance p4, Lq2/m$d;

    invoke-direct {p4, p0, v8, p1}, Lq2/m$d;-><init>(Lq2/m;Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {p3, p4}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_8
    :goto_3
    sget-object p0, Ly4/g;->a:Ly4/g;

    invoke-virtual {p0, p2, v6}, Ly4/g;->b(Lcom/android/launcher3/model/data/ItemInfo;Lcom/nothing/launcher/card/s;)V

    goto :goto_4

    :cond_9
    const-string p0, "completeAddCardWidget cardWidgetInfo is null"

    invoke-static {v7, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private final completeTwoStageCardDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreens()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    :cond_0
    move-object v4, v0

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_1

    :goto_0
    move v7, v1

    move-object v6, v2

    move-object v8, v6

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Lcom/nothing/launcher/card/p;->r(I)V

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    iget-object v5, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    if-eqz v5, :cond_4

    invoke-virtual {p3}, Lcom/android/launcher3/util/PendingRequestArgs;->getCardHandler()Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/nothing/launcher/card/CardWidgetAddFlowHandler;->a(Landroid/content/Context;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v6, p0

    move v7, p2

    invoke-static/range {v5 .. v11}, Lcom/nothing/cardhost/d;->q(Lcom/nothing/cardhost/d;Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;ZILjava/lang/Object;)Lcom/nothing/cardhost/e;

    move-result-object v2

    :cond_4
    new-instance p1, Lq2/l;

    invoke-direct {p1, p0, p2, p3, v2}, Lq2/l;-><init>(Lq2/m;ILcom/android/launcher3/util/PendingRequestArgs;Lcom/nothing/cardhost/e;)V

    move-object v6, p1

    move v7, v1

    move-object v8, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.android.launcher3.dragndrop.DragView<*>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Lcom/android/launcher3/dragndrop/DragView;

    const/4 v9, 0x1

    move-object v3, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void
.end method

.method private static final completeTwoStageCardDrop$lambda$17(Lq2/m;ILcom/android/launcher3/util/PendingRequestArgs;Lcom/nothing/cardhost/e;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lq2/m;->completeAddCardWidget(ILcom/android/launcher3/model/data/ItemInfo;Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/CardWidgetProviderInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    return-void
.end method

.method private final getCardWidgetManager()Lcom/nothing/launcher/card/h;
    .locals 0

    iget-object p0, p0, Lq2/m;->cardWidgetManager$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/card/h;

    return-object p0
.end method

.method private final getWidgetOnRemove()Lq2/m$b;
    .locals 0

    iget-object p0, p0, Lq2/m;->widgetOnRemove$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq2/m$b;

    return-object p0
.end method

.method private static final handleCardResult$lambda$15(Lq2/m;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method private static final handleCardResult$lambda$16(Lq2/m;ILcom/android/launcher3/util/PendingRequestArgs;Lcom/android/launcher3/CellLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lq2/m;->completeTwoStageCardDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Lcom/android/launcher3/CellLayout;->setDropPending(Z)V

    return-void
.end method

.method private static final onCreate$lambda$1(Lq2/m;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->y(Landroid/content/Context;)V

    return-void
.end method

.method private final prepareCardWidget(Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/s;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0, p1}, Lcom/nothing/launcher/card/s;->j(Lcom/android/launcher3/Launcher;Lcom/nothing/cardhost/e;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getFocusHandler()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method private final removeCardWidget(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    new-instance v1, Lq2/g;

    invoke-direct {v1, p1, p0}, Lq2/g;-><init>(ILq2/m;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    return-void
.end method

.method private static final removeCardWidget$lambda$14(ILq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/nothing/launcher/card/s;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/nothing/launcher/card/s;

    invoke-virtual {v0}, Lcom/nothing/launcher/card/s;->getWidgetId()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    const-string v0, "card widget is removed in response to widget remove broadcast"

    invoke-virtual {p1, p3, p2, p0, v0}, Lq2/m;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/nothing/launcher/card/v;

    if-eqz v0, :cond_1

    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    aget p2, p4, p2

    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 p2, 0x1

    aget p2, p4, p2

    iput p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :cond_0
    iput p5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    check-cast p1, Lcom/nothing/launcher/card/v;

    invoke-direct {p0, p1}, Lq2/m;->addCardWidgetFromDrop(Lcom/nothing/launcher/card/v;)V

    goto :goto_0

    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    :goto_0
    return-void
.end method

.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 1
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

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq2/m;->getHiddenAppsModel()Lg4/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lg4/g;->bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher;->bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    return-void
.end method

.method protected closeOpenViewsExcept(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->closeOpenViewsExcept(I)V

    const-string p0, "homekey"

    invoke-static {p0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    return-void
.end method

.method public createCardWidgetHost()Lcom/nothing/launcher/card/p;
    .locals 4

    sget-object v0, Lcom/nothing/launcher/card/b;->a:Lcom/nothing/launcher/card/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "this.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lcom/nothing/launcher/card/p;

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v3, v2}, Lcom/nothing/launcher/card/b;->a(Landroid/content/Context;ILjava/lang/Class;)Lcom/nothing/cardhost/d;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.nothing.launcher.card.LauncherCardWidgetHost"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nothing/launcher/card/p;

    invoke-direct {p0}, Lq2/m;->getWidgetOnRemove()Lq2/m$b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/nothing/launcher/card/p;->O(Ly5/l;)V

    return-object v0
.end method

.method public final getCardWidgetHost()Lcom/nothing/launcher/card/p;
    .locals 0

    iget-object p0, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    return-object p0
.end method

.method public getDeviceProfile()Lj3/a;
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.nothing.launcher.grid.NTDeviceProfile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getHiddenAppsModel()Lg4/g;
    .locals 0

    iget-object p0, p0, Lq2/m;->hiddenAppsModel$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg4/g;

    return-object p0
.end method

.method public final getOSCoreProxy()Lcom/nothing/launcher/ossupport/core/NothingOSCore;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lq2/m;->osCoreProxy:Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    return-object p0
.end method

.method public final getResizeManager()La4/g;
    .locals 0

    iget-object p0, p0, Lq2/m;->resizeManager:La4/g;

    return-object p0
.end method

.method protected handleCardResult(IILandroid/content/Intent;Lcom/android/launcher3/util/PendingRequestArgs;)Z
    .locals 4

    const-string p3, "requestArgs"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_4

    invoke-virtual {p4}, Lcom/android/launcher3/util/PendingRequestArgs;->getCardId()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x1f4

    const-string v2, "Launcher"

    if-ltz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p2

    iget v3, p4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p2, v3}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/nothing/launcher/card/p;->r(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreen(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Handle card activity result error, can not found screen with id = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return p3

    :cond_2
    invoke-virtual {p2, v0}, Lcom/android/launcher3/CellLayout;->setDropPending(Z)V

    new-instance v2, Lq2/k;

    invoke-direct {v2, p0, p1, p4, p2}, Lq2/k;-><init>(Lq2/m;ILcom/android/launcher3/util/PendingRequestArgs;Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0, v1, p3, v2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v3, "Error: widgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity."

    invoke-static {v2, v3}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1, p4}, Lq2/m;->completeTwoStageCardDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    new-instance p2, Lq2/h;

    invoke-direct {p2, p0}, Lq2/h;-><init>(Lq2/m;)V

    invoke-virtual {p1, v1, p3, p2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    :goto_1
    return v0

    :cond_4
    return p3
.end method

.method protected inflateCardWidget(Lcom/nothing/launcher/card/s;)Landroid/view/View;
    .locals 10

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/BaseDraggingActivity;->mIsSafeModeEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lq2/m;->getCardWidgetManager()Lcom/nothing/launcher/card/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nothing/launcher/card/s;->getWidgetId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/nothing/launcher/card/h;->c(I)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->i0()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    invoke-virtual {v6}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->j0()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lq2/m;->getCardWidgetManager()Lcom/nothing/launcher/card/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/launcher/card/h;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iget-object p0, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing invalid card: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nothing/launcher/card/s;->getWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", belongs to component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nothing/launcher/card/s;->h()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", as the provider info is null and card service is connected."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, p0, v2}, Lcom/android/launcher3/model/ModelWriter;->deleteCardInfo(Lcom/nothing/launcher/card/s;Lcom/nothing/launcher/card/p;Ljava/lang/String;)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateCardWidget error, can not found card provider info for item = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher"

    invoke-static {v2, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/nothing/launcher/card/s;->getWidgetId()I

    move-result v5

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/nothing/cardhost/d;->q(Lcom/nothing/cardhost/d;Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;ZILjava/lang/Object;)Lcom/nothing/cardhost/e;

    move-result-object v0

    move-object v1, v0

    :cond_3
    invoke-direct {p0, v1, p1}, Lq2/m;->prepareCardWidget(Lcom/nothing/cardhost/e;Lcom/nothing/launcher/card/s;)V

    :goto_1
    return-object v1
.end method

.method protected initDragController()V
    .locals 1

    new-instance v0, La3/b;

    invoke-direct {v0, p0}, La3/b;-><init>(Lq2/m;)V

    iput-object v0, p0, Lcom/android/launcher3/Launcher;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lq2/m;->createCardWidgetHost()Lcom/nothing/launcher/card/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/cardhost/d;->n()V

    iput-object v0, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    invoke-virtual {v0}, Lcom/nothing/launcher/card/p;->Q()V

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, La4/g;

    invoke-direct {p1, p0}, La4/g;-><init>(Lq2/m;)V

    iput-object p1, p0, Lq2/m;->resizeManager:La4/g;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lq2/i;

    invoke-direct {v0, p0}, Lq2/i;-><init>(Lq2/m;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    invoke-direct {p1}, Lcom/nothing/launcher/ossupport/core/NothingOSCore;-><init>()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object p1, p0, Lq2/m;->osCoreProxy:Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    sget-object p1, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p1}, Lo3/b$b;->a()Lo3/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo3/b;->F(Ls3/d;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onDestroy()V

    iget-object v0, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nothing/cardhost/d;->G()V

    invoke-virtual {v0}, Lcom/nothing/launcher/card/p;->R()V

    :cond_0
    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->I(Ls3/d;)V

    return-void
.end method

.method public onIdpChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onIdpChanged(Z)V

    new-instance p1, La4/g;

    invoke-direct {p1, p0}, La4/g;-><init>(Lq2/m;)V

    iput-object p1, p0, Lq2/m;->resizeManager:La4/g;

    return-void
.end method

.method public onNewPackSelected(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardhost/d;->w()V

    :cond_1
    return-void
.end method

.method public onStateSetEnd(Lcom/android/launcher3/LauncherState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateSetEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recent"

    invoke-static {v1, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public bridge synthetic onStateSetEnd(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lq2/m;->onStateSetEnd(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateSetStart(Lcom/android/launcher3/LauncherState;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateSetStart = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recent"

    invoke-static {v1, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onStateSetStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public bridge synthetic onStateSetStart(Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lq2/m;->onStateSetStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->onStop()V

    iget-object p0, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nothing/cardhost/d;->x()V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/Launcher;->onTrimMemory(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTrimMemory: level = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Launcher"

    invoke-static {v0, p0}, Ly2/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0xa

    if-eq p1, p0, :cond_0

    const/16 p0, 0xf

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lz4/e;->a:Lz4/e;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lz4/e;->b(Lz4/e;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z
    .locals 1

    const-string v0, "itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/nothing/launcher/card/s;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p1

    check-cast p2, Lcom/nothing/launcher/card/s;

    iget-object p0, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    invoke-virtual {p1, p2, p0, p4}, Lcom/android/launcher3/model/ModelWriter;->deleteCardInfo(Lcom/nothing/launcher/card/s;Lcom/nothing/launcher/card/p;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public setTipsViewState(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object p0, p0, Lq2/m;->mOverviewTip:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/View;->setActivated(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected setupViews()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->setupViews()V

    invoke-static {p0}, Lcom/android/quickstep/utils/ThumbnailOverlayHelp;->update(Landroid/content/Context;)V

    const v0, 0x7f0b02be

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lq2/m;->mOverviewTip:Landroid/view/View;

    return-void
.end method

.method public startBinding()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/Launcher;->startBinding()V

    iget-object p0, p0, Lq2/m;->cardWidgetHost:Lcom/nothing/launcher/card/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/nothing/launcher/card/p;->o()V

    :cond_0
    return-void
.end method
