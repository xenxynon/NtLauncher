.class public final Lcom/android/launcher3/folder/FolderIconPreviewManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final activityContext:Lcom/android/launcher3/views/ActivityContext;

.field private final context:Landroid/content/Context;

.field private final coverView$delegate:Ln5/e;

.field private final customPreview:Lcom/nothing/launcher/folder/customisation/CustomPreview;

.field private final firstPageParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/folder/PreviewItemDrawingParams;",
            ">;"
        }
    .end annotation
.end field

.field private final folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field private final folderSpace:F

.field private final iconSize:I

.field private intrinsicIconSize:F

.field private final previewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

.field private final previewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

.field private referenceDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/nothing/launcher/folder/customisation/CustomPreview;)V
    .locals 2

    const-string v0, "customPreview"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->customPreview:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-direct {v1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->previewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lookupContext(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->activityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpace:F

    iput v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->folderSpace:F

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iput v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->iconSize:I

    new-instance v1, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->previewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {p1}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->firstPageParams:Ljava/util/ArrayList;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->intrinsicIconSize:F

    new-instance v1, Lcom/android/launcher3/folder/FolderIconPreviewManager$coverView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager$coverView$2;-><init>(Lcom/android/launcher3/folder/FolderIconPreviewManager;)V

    invoke-static {v1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->coverView$delegate:Ln5/e;

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->buildParams()V

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->getCoverView()Lc3/b;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getActivityContext$p(Lcom/android/launcher3/folder/FolderIconPreviewManager;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->activityContext:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/launcher3/folder/FolderIconPreviewManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getFolderInfo$p(Lcom/android/launcher3/folder/FolderIconPreviewManager;)Lcom/android/launcher3/model/data/FolderInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method private final buildParams()V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->previewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->firstPageParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_1

    new-instance v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v5}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_2

    invoke-static {}, Lo5/j;->m()V

    :cond_2
    check-cast v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "items[i]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v4, v6}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    iget-object v6, v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->anim:Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->cancel()V

    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->previewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-virtual {v6, v2, v3, v4}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->referenceDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    iget-object v2, v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->referenceDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    move v2, v5

    goto :goto_2

    :cond_5
    return-void
.end method

.method private final drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Landroid/graphics/PointF;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    add-float/2addr v0, v1

    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget v1, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    add-float/2addr p3, v1

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    iget p3, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object p2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    neg-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->intrinsicIconSize:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget p0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->intrinsicIconSize:F

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p0, p3

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final getCoverView()Lc3/b;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->coverView$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc3/b;

    return-object p0
.end method

.method private final recomputePreviewDrawingParams(I)V
    .locals 4

    iget v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->intrinsicIconSize:F

    int-to-float p1, p1

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iput p1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->intrinsicIconSize:F

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->previewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->customPreview:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    invoke-virtual {v0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    iget v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->intrinsicIconSize:F

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->folderSpace:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->init(IFZF)V

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->buildParams()V

    :cond_1
    return-void
.end method

.method private final setDrawable(Lcom/android/launcher3/folder/PreviewItemDrawingParams;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 3

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->context:Landroid/content/Context;

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->newPendingIcon(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isAppStartable()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    goto :goto_0

    :goto_2
    iget-object v0, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->iconSize:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-object p2, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->item:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object p1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->customPreview:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->referenceDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->recomputePreviewDrawingParams(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->customPreview:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    invoke-virtual {v2}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->customPreview:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    invoke-virtual {v3}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->firstPageParams:Ljava/util/ArrayList;

    invoke-static {v2}, Lo5/j;->U(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-boolean v4, v3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->hidden:Z

    if-nez v4, :cond_2

    invoke-direct {p0, p1, v3, v1}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/folder/PreviewItemDrawingParams;Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final onCoverValueChange()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->getCoverView()Lc3/b;

    move-result-object p0

    invoke-virtual {p0}, Lc3/b;->a()V

    return-void
.end method

.method public final onFolderTypeChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->folderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->customPreview:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->getCoverView()Lc3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->getCoverView()Lc3/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->customPreview:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->getCoverView()Lc3/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->customPreview:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->getCoverView()Lc3/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ln5/k;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0}, Ln5/k;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->getCoverView()Lc3/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->measure(II)V

    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const-string v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIconPreviewManager;->firstPageParams:Ljava/util/ArrayList;

    invoke-static {p0}, Lo5/j;->U(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget-object v0, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    return v1
.end method
