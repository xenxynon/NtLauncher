.class public Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public dropped:Z

.field public isLockedToGrid:Z

.field private mCellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mCellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mTmpCellX:I

.field private mTmpCellY:I

.field public useTmpCoords:Z

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    iput-boolean v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    iput p2, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    iput p3, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iput p4, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    iput-boolean p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    iput-boolean p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    return-void
.end method


# virtual methods
.method public getCellX()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    return p0
.end method

.method public getCellY()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    return p0
.end method

.method public getTmpCellX()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellX:I

    return p0
.end method

.method public getTmpCellY()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellY:I

    return p0
.end method

.method public setCellX(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellX:I

    return-void
.end method

.method public setCellXY(Landroid/graphics/Point;)V
    .locals 1

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    return-void
.end method

.method public setCellY(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mCellY:I

    return-void
.end method

.method public setTmpCellX(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellX:I

    return-void
.end method

.method public setTmpCellY(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->mTmpCellY:I

    return-void
.end method

.method public setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 4
    .param p9    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-boolean p5, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    if-eqz p5, :cond_3

    iget p5, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v0, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget-boolean v1, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v1

    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v2

    :goto_1
    if-eqz p3, :cond_2

    sub-int/2addr p4, v1

    iget p3, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    sub-int v1, p4, p3

    :cond_2
    add-int/lit8 p3, p5, -0x1

    iget p4, p8, Landroid/graphics/Point;->x:I

    mul-int/2addr p3, p4

    add-int/lit8 p4, v0, -0x1

    iget v3, p8, Landroid/graphics/Point;->y:I

    mul-int/2addr p4, v3

    mul-int/2addr p5, p1

    add-int/2addr p5, p3

    int-to-float p3, p5

    div-float/2addr p3, p6

    mul-int/2addr v0, p2

    add-int/2addr v0, p4

    int-to-float p4, v0

    div-float/2addr p4, p7

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p3, p5

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p3, p5

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p3

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p3, p4

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p3, p5

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p5, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    mul-int/2addr p1, v1

    add-int/2addr p5, p1

    iget p1, p8, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, p1

    add-int/2addr p5, v1

    iput p5, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    mul-int/2addr p2, v2

    add-int/2addr p4, p2

    iget p1, p8, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, p1

    add-int/2addr p4, v2

    iput p4, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    if-eqz p9, :cond_3

    iget p1, p9, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, p1

    iput p5, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    iget p2, p9, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, p2

    iput p4, p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    iget p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p5, p9, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p5

    sub-int/2addr p4, p1

    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget p1, p9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p1

    sub-int/2addr p3, p2

    iput p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_3
    return-void
.end method

.method public setup(IIZIILandroid/graphics/Point;)V
    .locals 10

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
