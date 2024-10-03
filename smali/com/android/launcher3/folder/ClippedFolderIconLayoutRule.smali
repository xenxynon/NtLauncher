.class public Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAvailableSpace:F

.field private mBaselineIconScale:F

.field private mIconSize:F

.field private mIsRtl:Z

.field private mRadius:F

.field private mSpace:F

.field private mTmpPoint:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    return-void
.end method

.method private getGridPosition(II[F)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getGridPositionByNT(II[F)V

    aget v2, p3, v0

    const/4 v3, 0x1

    aget v4, p3, v3

    const/4 v5, 0x3

    invoke-direct {p0, v5, v1, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getGridPositionByNT(II[F)V

    aget p0, p3, v0

    sub-float/2addr p0, v2

    aget v1, p3, v3

    sub-float/2addr v1, v4

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float/2addr v2, p2

    aput v2, p3, v0

    int-to-float p0, p1

    mul-float/2addr p0, v1

    add-float/2addr v4, p0

    aput v4, p3, v3

    return-void
.end method

.method private getGridPositionByNT(II[F)V
    .locals 2

    const/4 v0, 0x4

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPositionByNT(II[F)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, v1, v0, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPositionByNT(II[F)V

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    if-nez p2, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    if-ne p2, v1, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .locals 5

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne p1, v4, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, v3, v1, p1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getGridPosition(II[F)V

    goto :goto_0

    :cond_0
    const/4 v4, -0x3

    if-ne p1, v4, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-direct {p0, v2, v1, p1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getGridPosition(II[F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-lt p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    iget p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    iget v4, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    mul-float/2addr v4, v0

    div-float/2addr v4, v1

    sub-float/2addr p2, v4

    aput p2, p1, v2

    aput p2, p1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPositionByNT(II[F)V

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mTmpPoint:[F

    aget p1, p0, v3

    aget p0, p0, v2

    if-nez p3, :cond_3

    new-instance p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {p3, p1, p0, v0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    goto :goto_1

    :cond_3
    invoke-virtual {p3, p1, p0, v0}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    :goto_1
    return-object p3
.end method

.method public getIconSize()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    return p0
.end method

.method public getPositionByNT(II[F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPositionByNT(II[FF)V

    return-void
.end method

.method public getPositionByNT(II[FF)V
    .locals 6

    rem-int/lit8 v0, p1, 0x2

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result p2

    iget v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    mul-float/2addr v1, p2

    mul-float/2addr v1, p4

    iget p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    mul-float/2addr p2, p4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    iget v3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mSpace:F

    mul-float/2addr v3, p4

    iget-boolean p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    const/4 p4, 0x1

    if-eqz p0, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    if-eqz p0, :cond_1

    add-float p0, p2, v3

    goto :goto_1

    :cond_1
    sub-float p0, p2, v1

    sub-float/2addr p0, v3

    :goto_1
    sub-float/2addr p2, v1

    sub-float/2addr p2, v3

    const/4 v5, 0x0

    if-nez v0, :cond_2

    aput p0, p3, v5

    goto :goto_2

    :cond_2
    mul-float v0, v3, v2

    add-float/2addr v0, v1

    int-to-float v4, v4

    mul-float/2addr v0, v4

    add-float/2addr p0, v0

    aput p0, p3, v5

    :goto_2
    if-nez p1, :cond_3

    aput p2, p3, p4

    goto :goto_3

    :cond_3
    if-ne p1, p4, :cond_4

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    add-float/2addr p2, v1

    aput p2, p3, p4

    :cond_4
    :goto_3
    return-void
.end method

.method public init(IFZ)V
    .locals 2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mAvailableSpace:F

    const v0, 0x3f933333    # 1.15f

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mRadius:F

    iput p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIconSize:F

    iput-boolean p3, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    return-void
.end method

.method public init(IFZF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->init(IFZ)V

    iput p4, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mSpace:F

    return-void
.end method

.method public scaleForItem(I)F
    .locals 0

    const p1, 0x3eaf1aa0    # 0.342f

    iget p0, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    mul-float/2addr p1, p0

    return p1
.end method
