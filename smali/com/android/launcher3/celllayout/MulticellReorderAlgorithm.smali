.class public Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;
.super Lcom/android/launcher3/celllayout/ReorderAlgorithm;
.source "SourceFile"


# instance fields
.field private final mSeam:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;-><init>(Lcom/android/launcher3/CellLayout;)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mSeam:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->lambda$removeSeamFromSolution$0(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->lambda$findReorderSolution$2(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIILandroid/view/View;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->lambda$dropInPlaceSolution$3(IIIILandroid/view/View;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->lambda$closestEmptySpaceReorder$1(IIIIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$closestEmptySpaceReorder$1(IIIIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->closestEmptySpaceReorder(IIIIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$dropInPlaceSolution$3(IIIILandroid/view/View;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->dropInPlaceSolution(IIIILandroid/view/View;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$findReorderSolution$2(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 0

    invoke-super/range {p0 .. p10}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$removeSeamFromSolution$0(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V
    .locals 0

    iget p1, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget-object p0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    if-le p1, p0, :cond_0

    iget p0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_0
    iput p0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    return-void
.end method

.method private removeSeamFromSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 2

    iget-object v0, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    new-instance v1, Lg/a;

    invoke-direct {v1, p0}, Lg/a;-><init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget v0, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget-object p0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    if-le v0, p0, :cond_0

    iget p0, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_0
    iput p0, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    return-object p1
.end method


# virtual methods
.method addSeam()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    check-cast v0, Lcom/android/launcher3/MultipageCellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MultipageCellLayout;->setSeamWasAdded(Z)V

    new-instance v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v1, v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(IIII)V

    iput-boolean v5, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/android/launcher3/MultipageCellLayout;->setCountX(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mSeam:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->addViewInLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->createGridOccupancyWithSeam()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/MultipageCellLayout;->setOccupied(Lcom/android/launcher3/util/GridOccupancy;)V

    new-instance p0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object p0, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    return-void
.end method

.method public closestEmptySpaceReorder(IIIIII)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 9

    new-instance v8, Lg/b;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lg/b;-><init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {p0, p1}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->removeSeamFromSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method createGridOccupancyWithSeam()Lcom/android/launcher3/util/GridOccupancy;
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    new-instance v7, Lcom/android/launcher3/util/GridOccupancy;

    iget-object v1, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    invoke-direct {v7, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v9, v1, :cond_1

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_0

    iget-boolean v3, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v8

    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v3

    iget v4, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v5, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object p0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    aget-object p0, v0, p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    return-object v7
.end method

.method public dropInPlaceSolution(IIIILandroid/view/View;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 8

    new-instance v7, Lg/d;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lg/d;-><init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIILandroid/view/View;)V

    invoke-virtual {p0, v7}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {p0, p1}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->removeSeamFromSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 14

    move-object v12, p0

    new-instance v13, Lg/c;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lg/c;-><init>(Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)V

    invoke-virtual {p0, v13}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {p0, v0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->removeSeamFromSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0
.end method

.method removeSeam()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    check-cast v0, Lcom/android/launcher3/MultipageCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MultipageCellLayout;->setCountX(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->mSeam:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    new-instance p0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object p0, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/MultipageCellLayout;->setSeamWasAdded(Z)V

    return-void
.end method

.method public simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->mCellLayout:Lcom/android/launcher3/CellLayout;

    check-cast v0, Lcom/android/launcher3/MultipageCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/MultipageCellLayout;->isSeamWasAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getOccupied()Lcom/android/launcher3/util/GridOccupancy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->addSeam()V

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->removeSeam()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MultipageCellLayout;->setOccupied(Lcom/android/launcher3/util/GridOccupancy;)V

    return-object p1
.end method
