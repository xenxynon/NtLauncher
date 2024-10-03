.class public final Lj3/a;
.super Lcom/android/launcher3/DeviceProfile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/a$a;
    }
.end annotation


# static fields
.field public static final j:Lj3/a$a;


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj3/a$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lj3/a;->j:Lj3/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;Landroid/util/SparseArray;ZZZZLcom/android/launcher3/DeviceProfile$ViewScaleProvider;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher3/InvariantDeviceProfile;",
            "Lcom/android/launcher3/util/DisplayController$Info;",
            "Lcom/android/launcher3/util/WindowBounds;",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/icons/DotRenderer;",
            ">;ZZZZ",
            "Lcom/android/launcher3/DeviceProfile$ViewScaleProvider;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/launcher3/DeviceProfile;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inv"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowBounds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dotRendererCache"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewScaleProvider"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dimensionOverrideProvider"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p11}, Lcom/android/launcher3/DeviceProfile;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/util/WindowBounds;Landroid/util/SparseArray;ZZZZLcom/android/launcher3/DeviceProfile$ViewScaleProvider;Ljava/util/function/Consumer;)V

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07043b

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07043c

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lj3/a;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070458

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lj3/a;->g:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070457

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lj3/a;->h:I

    iget p2, p0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070590

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Lj3/a;->i:I

    return-void
.end method

.method private final e()F
    .locals 3

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v0, v0

    invoke-direct {p0}, Lj3/a;->v()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-direct {p0}, Lj3/a;->m()F

    move-result v1

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    sub-float/2addr v0, p0

    const/4 p0, 0x0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    :goto_0
    return v0
.end method

.method private final m()F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatHeightPercent:F

    return p0
.end method

.method private final n()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lj3/a;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/DeviceProfile;->getCellContentHeight(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    :goto_0
    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private final s()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method private final v()F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceHeightPercent:F

    return p0
.end method

.method private final w(Landroid/content/res/Resources;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const v1, 0x7f0700a6

    goto :goto_0

    :cond_0
    const v1, 0x7f0700a7

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lj3/a;->d:I

    sget-object v1, Lz4/g;->a:Lz4/g;

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lz4/g;->c(F)F

    move-result p1

    invoke-static {p1}, La6/a;->b(F)I

    move-result p1

    iput p1, p0, Lj3/a;->d:I

    invoke-virtual {p0}, Lj3/a;->r()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p1, p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->bigCellHeightRatio:I

    mul-int/2addr v2, v0

    iget v3, p0, Lj3/a;->d:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    sub-int/2addr v2, v1

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v0, p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v0, p1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    if-gez v0, :cond_1

    int-to-float p1, v2

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v0

    invoke-static {p1}, La6/a;->b(F)I

    move-result v0

    :cond_1
    iput v0, p0, Lj3/a;->f:I

    sub-int/2addr v2, v0

    iput v2, p0, Lj3/a;->e:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lj3/a;->e:I

    iget p1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->bigCellHeightRatio:I

    mul-int/2addr p1, v0

    iget v0, p0, Lj3/a;->d:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lj3/a;->f:I

    :goto_1
    return-void
.end method

.method private final x(Landroid/content/res/Resources;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x7f0701b4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    const v0, 0x7f0701b2

    goto :goto_0

    :cond_0
    const v0, 0x7f0701b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    const v0, 0x7f0701b1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    return-void
.end method


# virtual methods
.method protected adjustWorkspaceLabelPadding(Z)V
    .locals 1

    invoke-virtual {p0}, Lj3/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/DeviceProfile;->adjustWorkspaceLabelPadding(Z)V

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lj3/a;->c:I

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lj3/a;->e:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lj3/a;->f:I

    return p0
.end method

.method protected getCalculatedWorkspaceSpringLoadScale(Landroid/content/Context;)F
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->springLoadedHotseatBarTopMarginPx:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutSpringLoadShrunkTop()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method protected getConfiguredGridHorizontalMargin(Landroid/content/res/Resources;)I
    .locals 2

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    const/4 v1, 0x4

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-eqz v0, :cond_1

    if-ne p0, v1, :cond_0

    const p0, 0x7f0700ff

    goto :goto_0

    :cond_0
    const p0, 0x7f070101

    goto :goto_0

    :cond_1
    if-ne p0, v1, :cond_2

    const p0, 0x7f0700fe

    goto :goto_0

    :cond_2
    const p0, 0x7f070100

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getDesiredIconDrawablePadding()I
    .locals 1

    invoke-virtual {p0}, Lj3/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/DeviceProfile;->getDesiredIconDrawablePadding()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getFixedAllAppsIconDrawablePaddingPx(Landroid/content/res/Resources;)I
    .locals 0

    const-string p0, "resources"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f07043d

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getFixedAllAppsLeftRightPadding(Landroid/content/res/Resources;I)I
    .locals 0

    const-string p2, "resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    const/4 p2, 0x4

    if-ne p0, p2, :cond_0

    const p0, 0x7f07007b

    goto :goto_0

    :cond_0
    const p0, 0x7f07007c

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method protected getFixedCellHeight()I
    .locals 1

    invoke-virtual {p0}, Lj3/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/DeviceProfile;->getFixedCellHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    :goto_0
    return p0
.end method

.method protected getFixedCellWidth()I
    .locals 1

    invoke-virtual {p0}, Lj3/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/DeviceProfile;->getFixedCellWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    :goto_0
    return p0
.end method

.method public getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->numShownHotseatIcons:I

    div-int/2addr v0, v1

    invoke-direct {p0}, Lj3/a;->s()I

    move-result p0

    sub-int/2addr p0, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1
.end method

.method protected getScaleFactorOfCell()F
    .locals 0

    const p0, 0x3f733333    # 0.95f

    return p0
.end method

.method protected getWorkspacePageIndicatorExpectedHeight(Landroid/content/res/Resources;)I
    .locals 1

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lj3/a;->e()F

    move-result p0

    const/4 p1, 0x2

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, La6/a;->b(F)I

    move-result p0

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lj3/a;->d:I

    return p0
.end method

.method public final i(I)Landroid/graphics/Rect;
    .locals 5

    if-lez p1, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->widgetPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    sget-object p1, Lz4/g;->a:Lz4/g;

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {p1, v1}, Lz4/g;->a(I)I

    move-result p1

    invoke-direct {p0}, Lj3/a;->n()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lj3/a;->n()I

    move-result v2

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    add-int/2addr v2, p0

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    goto :goto_0

    :cond_0
    sget-object p1, Lz4/g;->a:Lz4/g;

    iget v1, p0, Lj3/a;->d:I

    invoke-virtual {p1, v1}, Lz4/g;->a(I)I

    move-result v1

    iget v3, p0, Lj3/a;->f:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v2

    iget v2, p0, Lj3/a;->f:I

    iget p0, p0, Lj3/a;->d:I

    add-int/2addr v2, p0

    sub-int/2addr v1, v2

    invoke-virtual {p1, p0}, Lz4/g;->a(I)I

    move-result p0

    add-int/2addr v1, p0

    :goto_0
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    invoke-direct {p0}, Lj3/a;->n()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    div-int/2addr v4, v2

    add-int/2addr v3, v4

    mul-int/2addr v3, v2

    invoke-static {v1, v3}, Le6/e;->e(II)I

    move-result v1

    sub-int v3, p1, v1

    if-lez v3, :cond_2

    invoke-direct {p0}, Lj3/a;->n()I

    move-result v3

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr p0, v1

    div-int/2addr p0, v2

    add-int/2addr v3, p0

    iput v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v3

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get padding for illegal size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Ljava/lang/Integer;Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lj3/a;->i(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lj3/a;->a:I

    return p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lj3/a;->b:I

    return p0
.end method

.method public final o(Landroid/graphics/Point;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    :cond_0
    iget v0, p0, Lj3/a;->g:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    iget p0, p0, Lj3/a;->h:I

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method protected obtainDefaultCellStyle(Landroid/content/Context;)Landroid/content/res/TypedArray;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/R$styleable;->CellStyle:[I

    const v0, 0x7f13016d

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const-string p1, "context.obtainStyledAttr\u2026eable.CellStyle\n        )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public p()I
    .locals 2

    invoke-direct {p0}, Lj3/a;->e()F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->mInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    invoke-static {v0}, La6/a;->b(F)I

    move-result p0

    return p0
.end method

.method public final q()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportShowSearchBar:Z

    return p0
.end method

.method public final r()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportShowWorkspaceLabel:Z

    return p0
.end method

.method public final t()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Le6/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    const/4 v2, 0x1

    if-gt v2, v1, :cond_3

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v4

    mul-int/2addr v5, v3

    invoke-virtual {p0, v3}, Lj3/a;->i(I)Landroid/graphics/Rect;

    move-result-object v6

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v6

    add-int/2addr v7, v4

    sub-int/2addr v5, v7

    if-ne v3, v2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le6/d;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Le6/b;->c()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v6, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-ne v3, v6, :cond_2

    const v5, 0x7fffffff

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Le6/d;

    invoke-direct {v7, v4, v5}, Le6/d;-><init>(II)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final u()I
    .locals 0

    iget p0, p0, Lj3/a;->i:I

    return p0
.end method

.method protected updateAvailableDimensions(Landroid/content/res/Resources;)I
    .locals 1

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/DeviceProfile;->updateAvailableDimensions(Landroid/content/res/Resources;)I

    move-result v0

    invoke-direct {p0, p1}, Lj3/a;->w(Landroid/content/res/Resources;)V

    return v0
.end method

.method protected updateAvailableFolderCellDimensions(Landroid/content/res/Resources;)V
    .locals 5

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lj3/a;->x(Landroid/content/res/Resources;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, p1}, Lj3/a;->updateFolderCellSize(FLandroid/content/res/Resources;)V

    invoke-virtual {p0}, Lj3/a;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    :goto_0
    iget v2, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lj3/a;->getScaleFactorOfCell()F

    move-result v3

    mul-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iget v3, p0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lj3/a;->getScaleFactorOfCell()F

    move-result v4

    mul-float/2addr v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-static {v3, v2}, Le6/e;->d(FF)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    invoke-virtual {p0, v1, p1}, Lj3/a;->updateFolderCellSize(FLandroid/content/res/Resources;)V

    :cond_1
    return-void
.end method

.method protected updateCellLayoutPadding(Landroid/content/res/Resources;)V
    .locals 2

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isGestureMode:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f070232

    goto :goto_0

    :cond_0
    const v0, 0x7f070234

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-ne v0, v1, :cond_2

    const v0, 0x7f070231

    goto :goto_0

    :cond_2
    const v0, 0x7f070233

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, v0, p1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    return-void
.end method

.method protected updateFolderCellSize(FLandroid/content/res/Resources;)V
    .locals 4

    const-string v0, "res"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    aget v0, v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v3, p1}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iget-object v0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/DeviceProfile;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/Utilities;->pxFromSp(FLandroid/util/DisplayMetrics;F)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    invoke-virtual {p0}, Lj3/a;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildTextSizePx:I

    int-to-float p1, p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->calculateTextHeight(F)I

    move-result p1

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x3

    invoke-static {v2, v0}, Le6/e;->b(II)I

    move-result v2

    :cond_1
    iput v2, p0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    const p1, 0x7f0701b7

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    return-void
.end method

.method protected updateFolderIconSize()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    return-void
.end method

.method protected updateHotseatDsbSize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070179

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lj3/a;->a:I

    iget-object p1, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->mTypeIndex:I

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DeviceProfile;->getIconToIconWidthForColumns(I)I

    move-result p1

    iput p1, p0, Lj3/a;->b:I

    return-void
.end method

.method protected updateHotseatSizes(I)V
    .locals 2

    iget p1, p0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float p1, p1

    invoke-direct {p0}, Lj3/a;->m()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-direct {p0}, Lj3/a;->e()F

    move-result v0

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    invoke-static {p1}, La6/a;->b(F)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    return-void
.end method

.method protected updateWorkspacePadding()V
    .locals 4

    invoke-super {p0}, Lcom/android/launcher3/DeviceProfile;->updateWorkspacePadding()V

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v1, p0, Lcom/android/launcher3/DeviceProfile;->workspacePageIndicatorHeight:I

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
