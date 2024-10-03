.class public Lcom/nothing/launcher/popup/l$d;
.super Lcom/nothing/launcher/popup/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/popup/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nothing/launcher/popup/l<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 6

    const v1, 0x7f080379

    const v2, 0x7f120231

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nothing/launcher/popup/l;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/ModelWriter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/launcher/popup/l$d;->I(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/ModelWriter;)V

    return-void
.end method

.method static synthetic H(Lcom/nothing/launcher/popup/l$d;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/popup/l$d;->J()V

    return-void
.end method

.method private static synthetic I(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/ModelWriter;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V

    invoke-virtual {p2}, Lcom/android/launcher3/model/ModelWriter;->abortDelete()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method private J()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v1

    const v2, 0x7f12013d

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nothing/launcher/popup/l$d;->K(Lcom/android/launcher3/Launcher;Z)V

    return-void
.end method

.method private K(Lcom/android/launcher3/Launcher;Z)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter;->commitDelete()V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    :cond_1
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aput p2, v1, v2

    invoke-static {v1}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/Workspace;->getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;

    move-result-object p2

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter;->prepareToUndoDelete()V

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    new-instance p0, Lcom/nothing/launcher/popup/m;

    invoke-direct {p0, p1, p2, v0}, Lcom/nothing/launcher/popup/m;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/ModelWriter;)V

    const p2, 0x7f12013d

    const v1, 0x7f12027a

    new-instance v2, Lcom/nothing/launcher/popup/n;

    invoke-direct {v2, v0}, Lcom/nothing/launcher/popup/n;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    invoke-static {p1, p2, v1, v2, p0}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/popup/l;->q(Z)V

    iget-object v0, p0, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ly4/e;->h:Ly4/e;

    invoke-virtual {v0}, Ly4/e;->c()V

    iget-object v0, p0, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    iget-object p1, p0, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    invoke-static {p1}, Lz4/f;->a(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance v0, Lcom/nothing/launcher/popup/l$d$a;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/popup/l$d$a;-><init>(Lcom/nothing/launcher/popup/l$d;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nothing/launcher/popup/l$d;->J()V

    :goto_0
    return-void
.end method
