.class public Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;
.super Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0b005f

    const v2, 0x7f120231

    const/16 v3, 0x34

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0b0067

    const v2, 0x7f12027b

    const/16 v4, 0x31

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0b0042

    const v2, 0x7f1200ce

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0b005d

    const v2, 0x7f1200fe

    const/16 v3, 0x21

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0b0034

    const v2, 0x7f12004a

    const/16 v3, 0x2c

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0b004a

    const v2, 0x7f120051

    const/16 v4, 0x29

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0b0056

    const v2, 0x7f120053

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0b0060

    const v2, 0x7f120054

    const/16 v3, 0x2e

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v1, 0x7f0b0040

    const v2, 0x7f12004d

    const/16 v3, 0x2f

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    const v2, 0x7f120249

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;-><init>(Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;III)V

    const p0, 0x7f0b0063

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$moveToWorkspace$7(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$addToWorkspace$5(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$getSupportedResizeActions$4(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$addToWorkspace$6(Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$getSupportedResizeActions$2(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$performAction$0(Landroid/view/View;)V

    return-void
.end method

.method public static getSupportedActions(Lcom/android/launcher3/Launcher;Landroid/view/View;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
            "Lcom/android/launcher3/Launcher;",
            ">.",
            "LauncherAction;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V

    return-object v0

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/views/OptionsPopupView$OptionItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewParent()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_0
    check-cast v2, Lcom/android/launcher3/CellLayout;

    iget v3, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr v3, v5

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v2, v3, v5, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr v3, v4

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v2, v3, v5, v4, v6}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v6, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    const v7, 0x7f120050

    const v8, 0x7f0802f4

    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v10, Le/d;

    invoke-direct {v10, p0, p1, p2}, Le/d;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-le v3, v5, :cond_4

    if-le v3, v4, :cond_4

    new-instance v3, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v7, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    const v8, 0x7f12004c

    const v9, 0x7f0802f3

    sget-object v10, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v11, Le/c;

    invoke-direct {v11, p0, p1, p2}, Le/c;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v3, v5

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v2, v1, v3, v5, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    sub-int/2addr v3, v4

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v2, v1, v3, v5, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    new-instance v1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v6, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    const v7, 0x7f12004f

    const v8, 0x7f0802f1

    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v10, Le/e;

    invoke-direct {v10, p0, p1, p2}, Le/e;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-le v1, v2, :cond_7

    if-le v1, v4, :cond_7

    new-instance v1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v6, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    const v7, 0x7f12004b

    const v8, 0x7f0802f0

    sget-object v9, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->IGNORE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    new-instance v10, Le/b;

    invoke-direct {v10, p0, p1, p2}, Le/b;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method public static synthetic h(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$getSupportedResizeActions$1(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->lambda$getSupportedResizeActions$3(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addToWorkspace$5(Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 6

    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    return-void
.end method

.method private synthetic lambda$addToWorkspace$6(Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V
    .locals 10

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    const/16 v5, -0x64

    aget v7, p3, v1

    aget v8, p3, v2

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object p2, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1, v2, p4}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    const p1, 0x7f12013b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_1

    move-object v4, p1

    check-cast v4, Lcom/android/launcher3/PendingAddItemInfo;

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    move-object v3, p0

    check-cast v3, Lcom/android/launcher3/Launcher;

    const/16 v5, -0x64

    iget v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->clone()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    const/16 v5, -0x64

    aget v7, p3, v1

    aget v8, p3, v2

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v2, p4}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;ZZ)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    const/16 v5, -0x64

    aget v7, p3, v1

    aget v8, p3, v2

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    iget-object p2, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    new-instance p3, Le/i;

    invoke-direct {p3, p0, p1}, Le/i;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$getSupportedResizeActions$1(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 0

    const p3, 0x7f120050

    invoke-direct {p0, p3, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getSupportedResizeActions$2(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 0

    const p3, 0x7f12004c

    invoke-direct {p0, p3, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getSupportedResizeActions$3(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 0

    const p3, 0x7f12004f

    invoke-direct {p0, p3, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getSupportedResizeActions$4(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z
    .locals 0

    const p3, 0x7f12004b

    invoke-direct {p0, p3, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$moveToWorkspace$7(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    const p1, 0x7f12013c

    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    return-void
.end method

.method private static synthetic lambda$performAction$0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return-void
.end method

.method private performResizeAction(ILandroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    const/4 v2, 0x1

    const v3, 0x7f120050

    if-ne p1, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v2, :cond_0

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr p1, v2

    iget v3, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v4, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr p1, v3

    iget v3, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v4, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v1, p1, v3, v2, v4}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr p1, v2

    iput p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    :cond_2
    iget p1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    add-int/2addr p1, v2

    iput p1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr p1, v2

    goto :goto_0

    :cond_3
    const v3, 0x7f12004c

    if-ne p1, v3, :cond_4

    iget p1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    sub-int/2addr p1, v2

    :goto_0
    iput p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    goto :goto_2

    :cond_4
    const v3, 0x7f12004f

    if-ne p1, v3, :cond_6

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v4, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr v3, v4

    iget v4, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v1, p1, v3, v4, v2}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    sub-int/2addr p1, v2

    iput p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :cond_5
    iget p1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    add-int/2addr p1, v2

    iput p1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    add-int/2addr p1, v2

    goto :goto_1

    :cond_6
    const v3, 0x7f12004b

    if-ne p1, v3, :cond_7

    iget p1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    sub-int/2addr p1, v2

    :goto_1
    iput p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :cond_7
    :goto_2
    invoke-virtual {v1, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    instance-of p1, p2, Lcom/nothing/launcher/widget/h;

    if-eqz p1, :cond_8

    move-object p1, p2

    check-cast p1, Lcom/nothing/launcher/widget/h;

    iget v0, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-interface {p1, v0, v1}, Lcom/nothing/launcher/widget/h;->applyDisplaySpan(II)V

    :cond_8
    move-object p1, p2

    check-cast p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    iget v1, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {p1, v0, v1, v3}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    const p2, 0x7f12028d

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v3, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    iget p3, p3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public addToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .locals 9

    const/4 v0, 0x2

    new-array v5, v0, [I

    invoke-virtual {p0, p1, v5}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/model/data/ItemInfo;[I)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v7, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    new-instance v8, Le/h;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Le/h;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;I[IZ)V

    invoke-static {v8}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {v0, v7, p1, p0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    return p1
.end method

.method announceConfirmation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    return-void
.end method

.method protected beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z
    .locals 6

    invoke-virtual {p0, p2}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->itemSupportsAccessibleDrag(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    invoke-direct {v0}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mDragInfo:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    iput-object p2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p1, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    sget-object v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;->ICON:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    iput-object v2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    instance-of v2, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;->FOLDER:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    :goto_0
    iput-object v2, v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    goto :goto_1

    :cond_1
    instance-of v2, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v2, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    new-instance v2, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v2}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    iput-boolean p3, v2, Lcom/android/launcher3/dragndrop/DragOptions;->isKeyboardDrag:Z

    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-direct {v4, v5, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, v2, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p3, Lcom/android/launcher3/Launcher;

    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0e009f

    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->showForIcon(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p1, p0, p2, v2}, Lcom/android/launcher3/touch/ItemLongClickListener;->beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    :goto_2
    return v3
.end method

.method protected findSpaceOnWorkspace(Lcom/android/launcher3/model/data/ItemInfo;[I)I
    .locals 7

    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScreenOrder()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v1, p2, v3, v4}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v1, p2, v5, v6}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreens()V

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "LauncherAccessibilityDelegate"

    const-string p1, "Not enough space on an empty screen"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method protected getSupportedActions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate<",
            "Lcom/android/launcher3/Launcher;",
            ">.",
            "LauncherAction;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b0063

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0040

    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DropTargetBar;->getDropTargets()[Lcom/android/launcher3/ButtonDropTarget;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3, p2, p1}, Lcom/android/launcher3/ButtonDropTarget;->supportsAccessibilityDrop(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/android/launcher3/ButtonDropTarget;->getAccessibilityAction()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->itemSupportsAccessibleDrag(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v0, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v0, 0x7f0b0056

    :goto_2
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v0, 0x7f0b0060

    goto :goto_2

    :cond_5
    :goto_3
    instance-of p1, p2, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-nez p1, :cond_6

    instance-of p1, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez p1, :cond_6

    instance-of p1, p2, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz p1, :cond_7

    :cond_6
    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p1, 0x7f0b0034

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$LauncherAction;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public moveToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/android/launcher3/model/data/ItemInfo;[I)I

    move-result v5

    const/4 v4, -0x1

    if-ne v5, v4, :cond_0

    return v2

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v4

    const/16 v6, -0x64

    aget v7, v0, v2

    aget v0, v0, v1

    move-object v2, v4

    move v4, v6

    move v6, v7

    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Le/g;

    invoke-direct {v2, p0, p1}, Le/g;-><init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method protected performAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;IZ)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-ne p3, v3, :cond_4

    instance-of p0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/android/launcher3/views/BubbleTextHolder;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/android/launcher3/views/BubbleTextHolder;

    invoke-interface {p1}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object p0

    move-object v0, p0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    const v3, 0x7f0b004a

    if-ne p3, v3, :cond_5

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->beginAccessibleDrag(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result p0

    return p0

    :cond_5
    const p4, 0x7f0b0034

    if-ne p3, p4, :cond_6

    invoke-virtual {p0, p2, v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->addToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result p0

    return p0

    :cond_6
    const p4, 0x7f0b0056

    if-ne p3, p4, :cond_7

    invoke-virtual {p0, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->moveToWorkspace(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :cond_7
    const p4, 0x7f0b0060

    if-ne p3, p4, :cond_8

    check-cast p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Ljava/util/List;

    move-result-object p2

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iget-object p4, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p4, Lcom/android/launcher3/Launcher;

    invoke-virtual {p4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p4

    invoke-virtual {p4, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {p0, p4, p2, v1}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    new-instance p2, Le/f;

    invoke-direct {p2, p1}, Le/f;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/popup/ArrowPopup;->addOnCloseCallback(Ljava/lang/Runnable;)V

    return v2

    :cond_8
    const p4, 0x7f0b0040

    if-eq p3, p4, :cond_c

    const p4, 0x7f0b0063

    if-ne p3, p4, :cond_9

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getDropTargets()[Lcom/android/launcher3/ButtonDropTarget;

    move-result-object p0

    array-length p4, p0

    move v0, v1

    :goto_1
    if-ge v0, p4, :cond_b

    aget-object v3, p0, v0

    invoke-virtual {v3, p2, p1}, Lcom/android/launcher3/ButtonDropTarget;->supportsAccessibilityDrop(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/android/launcher3/ButtonDropTarget;->getAccessibilityAction()I

    move-result v4

    if-ne p3, v4, :cond_a

    invoke-virtual {v3, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    return v2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return v1

    :cond_c
    :goto_2
    instance-of p0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_d

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    goto :goto_3

    :cond_d
    instance-of p0, p1, Lcom/android/launcher3/views/BubbleTextHolder;

    if-eqz p0, :cond_e

    check-cast p1, Lcom/android/launcher3/views/BubbleTextHolder;

    invoke-interface {p1}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    :cond_e
    :goto_3
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object p0

    if-eqz p0, :cond_f

    move v1, v2

    :cond_f
    return v1
.end method
