.class public final Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final availableSpace:I

.field private cellSizePx:I

.field private final cells:I

.field private endPaddingPx:I

.field private gutterPx:I

.field private startPaddingPx:I

.field private final workspaceSpec:Lcom/android/launcher3/workspace/WorkspaceSpec;


# direct methods
.method public constructor <init>(IILcom/android/launcher3/workspace/WorkspaceSpec;)V
    .locals 4

    const-string v0, "workspaceSpec"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->availableSpace:I

    iput p2, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->cells:I

    iput-object p3, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->workspaceSpec:Lcom/android/launcher3/workspace/WorkspaceSpec;

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getStartPadding()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getFixedSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getStartPadding()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getFixedSize()F

    move-result v0

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->startPaddingPx:I

    :cond_0
    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getEndPadding()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getFixedSize()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getEndPadding()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getFixedSize()F

    move-result v0

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->endPaddingPx:I

    :cond_1
    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getGutter()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getFixedSize()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getGutter()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getFixedSize()F

    move-result v0

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->gutterPx:I

    :cond_2
    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getCellSize()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getFixedSize()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getCellSize()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getFixedSize()F

    move-result v0

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->cellSizePx:I

    :cond_3
    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getStartPadding()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getOfAvailableSpace()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getStartPadding()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getOfAvailableSpace()F

    move-result v0

    int-to-float v2, p1

    mul-float/2addr v0, v2

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->startPaddingPx:I

    :cond_4
    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getEndPadding()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getOfAvailableSpace()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getEndPadding()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getOfAvailableSpace()F

    move-result v0

    int-to-float v2, p1

    mul-float/2addr v0, v2

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->endPaddingPx:I

    :cond_5
    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getGutter()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getOfAvailableSpace()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getGutter()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getOfAvailableSpace()F

    move-result v0

    int-to-float v2, p1

    mul-float/2addr v0, v2

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->gutterPx:I

    :cond_6
    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getCellSize()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getOfAvailableSpace()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getCellSize()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->getOfAvailableSpace()F

    move-result v0

    int-to-float v2, p1

    mul-float/2addr v0, v2

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->cellSizePx:I

    :cond_7
    add-int/lit8 v0, p2, -0x1

    iget v2, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->startPaddingPx:I

    iget v3, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->endPaddingPx:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->gutterPx:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iget v0, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->cellSizePx:I

    mul-int/2addr v0, p2

    add-int/2addr v2, v0

    sub-int/2addr p1, v2

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getStartPadding()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/workspace/SizeSpec;->getOfRemainderSpace()F

    move-result p2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_8

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getStartPadding()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/workspace/SizeSpec;->getOfRemainderSpace()F

    move-result p2

    int-to-float v0, p1

    mul-float/2addr p2, v0

    invoke-static {p2}, La6/a;->b(F)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->startPaddingPx:I

    :cond_8
    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getEndPadding()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/workspace/SizeSpec;->getOfRemainderSpace()F

    move-result p2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_9

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getEndPadding()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/workspace/SizeSpec;->getOfRemainderSpace()F

    move-result p2

    int-to-float v0, p1

    mul-float/2addr p2, v0

    invoke-static {p2}, La6/a;->b(F)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->endPaddingPx:I

    :cond_9
    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getGutter()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/workspace/SizeSpec;->getOfRemainderSpace()F

    move-result p2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_a

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getGutter()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/workspace/SizeSpec;->getOfRemainderSpace()F

    move-result p2

    int-to-float v0, p1

    mul-float/2addr p2, v0

    invoke-static {p2}, La6/a;->b(F)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->gutterPx:I

    :cond_a
    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getCellSize()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/workspace/SizeSpec;->getOfRemainderSpace()F

    move-result p2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_b

    invoke-virtual {p3}, Lcom/android/launcher3/workspace/WorkspaceSpec;->getCellSize()Lcom/android/launcher3/workspace/SizeSpec;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/workspace/SizeSpec;->getOfRemainderSpace()F

    move-result p2

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-static {p2}, La6/a;->b(F)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/workspace/CalculatedWorkspaceSpec;->cellSizePx:I

    :cond_b
    return-void
.end method
