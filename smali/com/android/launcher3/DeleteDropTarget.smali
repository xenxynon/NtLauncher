.class public Lcom/android/launcher3/DeleteDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "SourceFile"


# instance fields
.field private mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/DeleteDropTarget;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-void
.end method

.method private canRemove(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setControlTypeBasedOnDragSource(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_REMOVE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_CANCEL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    return-void
.end method

.method private setTextBasedOnDragSource(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->canRemove(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120231

    goto :goto_0

    :cond_0
    const/high16 p1, 0x1040000

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_1
    return-void
.end method


# virtual methods
.method public completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->canRemove(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/DeleteDropTarget;->onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DropTargetHandler;->onDeleteComplete(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_0
    return-void
.end method

.method public getAccessibilityAction()I
    .locals 0

    const p0, 0x7f0b005f

    return p0
.end method

.method public onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12013d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/DropTargetHandler;->onAccessibilityDelete(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, p2}, Lcom/android/launcher3/DeleteDropTarget;->setTextBasedOnDragSource(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->setControlTypeBasedOnDragSource(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/DeleteDropTarget;->canRemove(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetHandler;->prepareToUndoDelete()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    iget-object p2, p0, Lcom/android/launcher3/DeleteDropTarget;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p2

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {p2, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/DeleteDropTarget;->mLauncherEvent:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    const v0, 0x7f0802d2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setDrawable(I)V

    return-void
.end method

.method protected setupItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    return-void
.end method

.method public supportsAccessibilityDrop(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    instance-of p2, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/DeleteDropTarget;->canRemove(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :cond_0
    instance-of p0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez p0, :cond_2

    instance-of p0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez p0, :cond_2

    instance-of p0, p1, Lcom/nothing/launcher/card/s;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected supportsDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
