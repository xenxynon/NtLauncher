.class public final Lcom/android/launcher3/folder/FolderIcon;
.super Lcom/android/launcher3/folder/BaseFolderIcon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;,
        Lcom/android/launcher3/folder/FolderIcon$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/FolderIcon$Companion;


# instance fields
.field private animating:Z

.field private final coverView$delegate:Ln5/e;

.field private final currentPreviewItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final previewItemManager$delegate:Ln5/e;

.field private final previewLayoutRule$delegate:Ln5/e;

.field private previewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

.field private tmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/folder/FolderIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderIcon$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/folder/FolderIcon;->Companion:Lcom/android/launcher3/folder/FolderIcon$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/folder/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/BaseFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->tmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->currentPreviewItems:Ljava/util/List;

    new-instance p2, Lcom/android/launcher3/folder/FolderIcon$previewItemManager$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/folder/FolderIcon$previewItemManager$2;-><init>(Lcom/android/launcher3/folder/FolderIcon;)V

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->previewItemManager$delegate:Ln5/e;

    new-instance p2, Lcom/android/launcher3/folder/FolderIcon$coverView$2;

    invoke-direct {p2, p1, p0}, Lcom/android/launcher3/folder/FolderIcon$coverView$2;-><init>(Landroid/content/Context;Lcom/android/launcher3/folder/FolderIcon;)V

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->coverView$delegate:Ln5/e;

    sget-object p1, Lcom/android/launcher3/folder/FolderIcon$previewLayoutRule$2;->INSTANCE:Lcom/android/launcher3/folder/FolderIcon$previewLayoutRule$2;

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->previewLayoutRule$delegate:Ln5/e;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/FolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getAccessibilityTitle(Lcom/android/launcher3/folder/FolderIcon;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->getAccessibilityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCoverView(Lcom/android/launcher3/folder/FolderIcon;)Lc3/b;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->getCoverView()Lc3/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPreviewVerifier$p(Lcom/android/launcher3/folder/FolderIcon;)Lcom/android/launcher3/folder/FolderGridOrganizer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->previewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    return-object p0
.end method

.method public static final synthetic access$setPreviewVerifier$p(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/folder/FolderGridOrganizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->previewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    return-void
.end method

.method public static final synthetic access$updatePreviewItems(Lcom/android/launcher3/folder/FolderIcon;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/FolderIcon;->onDrop$lambda$0(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method private final getAccessibilityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    if-ge v0, v4, :cond_0

    const v4, 0x7f1200f1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0x7f1200f2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final getCoverView()Lc3/b;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->coverView$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc3/b;

    return-object p0
.end method

.method private final getLocalCenterForIndex(II[II)F
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, p1}, Le6/e;->e(II)I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderIcon;->tmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object p1

    const-string p2, "previewItemManager.compu\u2026tems, tmpParams\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->tmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/PreviewItemManager;->getIntrinsicIconSize()F

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/folder/PreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    aput v2, p3, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    aput p2, p3, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->tmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->tmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderIcon;->tmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    iget v3, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float v4, v3, p1

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iget p2, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    mul-float/2addr v3, p1

    div-float/2addr v3, v5

    add-float/2addr p2, v3

    invoke-static {v2}, La6/a;->b(F)I

    move-result v2

    aput v2, p3, v1

    invoke-static {p2}, La6/a;->b(F)I

    move-result p2

    aput p2, p3, v0

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->tmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget p0, p0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    mul-float/2addr p0, p1

    int-to-float p1, p4

    div-float/2addr p0, p1

    return p0
.end method

.method private final getPreviewLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->previewLayoutRule$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    return-object p0
.end method

.method public static final inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;
    .locals 1

    sget-object v0, Lcom/android/launcher3/folder/FolderIcon;->Companion:Lcom/android/launcher3/folder/FolderIcon$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/launcher3/folder/FolderIcon$Companion;->inflateIcon(ILcom/android/launcher3/views/ActivityContext;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object p0

    return-object p0
.end method

.method private static final onDrop$lambda$0(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/Folder;->showItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method private final updatePreviewItems(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->currentPreviewItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/launcher3/folder/FolderIcon;->currentPreviewItems:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public clearLeaveBehindIfExists()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.FolderIcon.FolderIconParent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;

    invoke-interface {v0, p0}, Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;->clearFolderLeaveBehind(Lcom/android/launcher3/folder/FolderIcon;)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackgroundIsVisible$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->currentPreviewItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderIcon;->animating:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->drawingDelegated()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->drawDot(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawPreview(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->getCoverView()Lc3/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getIconBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewBounds(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "outBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Lcom/android/launcher3/Utilities;->scaleRectAboutCenter(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public final getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderIcon;->previewItemManager$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/folder/PreviewItemManager;

    return-object p0
.end method

.method public final getPreviewItemsOnPage(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderIcon;->previewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    if-nez v0, :cond_0

    const-string v0, "previewVerifier"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/folder/FolderGridOrganizer;->previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    const-string p1, "previewVerifier.setFolde\u2026Page(page, info.contents)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/folder/BaseFolderIcon;->onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->getAccessibilityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onCoverValueChange()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->getCoverView()Lc3/b;

    move-result-object p0

    invoke-virtual {p0}, Lc3/b;->a()V

    return-void
.end method

.method protected onDrop(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    const-string v4, "item"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "d"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x1

    iput v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v6, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/Launcher;

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v5

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez p3, :cond_0

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v10

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {v5, v0, v8}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v11

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    goto :goto_0

    :cond_0
    move-object/from16 v8, p3

    move/from16 v11, p4

    :goto_0
    add-int/lit8 v4, v3, 0x1

    const/4 v9, 0x4

    invoke-static {v9, v4}, Le6/e;->e(II)I

    move-result v4

    const/4 v10, 0x0

    const/4 v15, 0x1

    if-nez p6, :cond_1

    if-lt v3, v9, :cond_4

    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    iget-object v13, v0, Lcom/android/launcher3/folder/FolderIcon;->currentPreviewItems:Ljava/util/List;

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v13

    invoke-virtual {v13, v1, v3, v10}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V

    iget-object v13, v0, Lcom/android/launcher3/folder/FolderIcon;->currentPreviewItems:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    iget-object v13, v0, Lcom/android/launcher3/folder/FolderIcon;->currentPreviewItems:Ljava/util/List;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemsOnPage(I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v13, v0, Lcom/android/launcher3/folder/FolderIcon;->currentPreviewItems:Ljava/util/List;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v13, v0, Lcom/android/launcher3/folder/FolderIcon;->currentPreviewItems:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_2

    goto :goto_1

    :cond_2
    move v13, v3

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v3

    invoke-virtual {v3, v13, v15}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v3

    iget-object v14, v0, Lcom/android/launcher3/folder/FolderIcon;->currentPreviewItems:Ljava/util/List;

    invoke-virtual {v3, v12, v14, v1}, Lcom/android/launcher3/folder/PreviewItemManager;->onDrop(Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move v3, v13

    move/from16 v16, v15

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1, v10}, Lcom/android/launcher3/folder/BaseFolderIcon;->removeItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    :cond_4
    move/from16 v16, v10

    :goto_2
    if-nez v16, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v12

    invoke-virtual {v12, v1, v3, v15}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/WorkspaceItemInfo;IZ)V

    :cond_5
    const/4 v12, 0x2

    new-array v13, v12, [I

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    invoke-virtual {v6}, Lcom/android/launcher3/dragndrop/DragView;->getBlurSizeOutline()I

    move-result v17

    sub-int v14, v14, v17

    invoke-direct {v0, v3, v4, v13, v14}, Lcom/android/launcher3/folder/FolderIcon;->getLocalCenterForIndex(II[II)F

    move-result v4

    aget v14, v13, v10

    int-to-float v14, v14

    mul-float/2addr v14, v11

    invoke-static {v14}, La6/a;->b(F)I

    move-result v14

    aput v14, v13, v10

    aget v14, v13, v15

    int-to-float v14, v14

    mul-float/2addr v14, v11

    invoke-static {v14}, La6/a;->b(F)I

    move-result v14

    aput v14, v13, v15

    aget v10, v13, v10

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    div-int/2addr v14, v12

    sub-int/2addr v10, v14

    aget v13, v13, v15

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v14

    div-int/2addr v14, v12

    sub-int/2addr v13, v14

    invoke-virtual {v8, v10, v13}, Landroid/graphics/Rect;->offset(II)V

    if-ge v3, v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v9

    if-nez v9, :cond_6

    move v9, v7

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    mul-float/2addr v4, v11

    iget-object v10, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v10, v10, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v10

    const-string v11, "activity.deviceProfile"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v11, v10, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v11, v11

    mul-float/2addr v11, v7

    iget v7, v10, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v7, v7

    div-float/2addr v11, v7

    mul-float/2addr v4, v11

    :cond_7
    move v10, v4

    const/16 v11, 0x190

    sget-object v12, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    new-instance v13, Lcom/android/launcher3/folder/o;

    invoke-direct {v13, v0, v3, v1}, Lcom/android/launcher3/folder/o;-><init>(Lcom/android/launcher3/folder/FolderIcon;ILcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    const/4 v14, 0x0

    const/4 v4, 0x0

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v0, v15

    move-object v15, v4

    invoke-virtual/range {v5 .. v15}, Lcom/android/launcher3/dragndrop/DragLayer;->animateView(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Rect;FFFILandroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/folder/Folder;->hideItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    if-nez v16, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->hidePreviewItem(IZ)V

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/BaseFolderIcon;->showFolderSuggestName(Lcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_4

    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    :goto_4
    return-void
.end method

.method public onFolderClose(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->onFolderClose(I)V

    return-void
.end method

.method public onFolderTypeChange()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->getCoverView()Lc3/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->getCoverView()Lc3/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->getCoverView()Lc3/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->refreshFolderBgColor()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->updatePreviewItems(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->getCoverView()Lc3/b;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p1, p4

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p4

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->getCoverView()Lc3/b;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    instance-of v0, p5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    move-object p5, p3

    :goto_0
    if-eqz p5, :cond_1

    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    move p5, p2

    :goto_1
    add-int/2addr p4, p5

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->getCoverView()Lc3/b;

    move-result-object p5

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->getCoverView()Lc3/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderIcon;->getCoverView()Lc3/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p4

    invoke-virtual {p5, p1, p4, v0, v1}, Landroid/widget/TextView;->layout(IIII)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p5, :cond_3

    move-object p3, p4

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_3
    if-eqz p3, :cond_4

    iget p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->onRemove(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->getAccessibilityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->onTitleChanged(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->getAccessibilityTitle(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public performCreateAnimation(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;F)V
    .locals 7

    const-string v0, "destInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "srcInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "d"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->addItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;FIZ)V

    return-void
.end method

.method public performDestroyAnimation(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "onCompleteRunnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->createFirstItemAnimation(ZLjava/lang/Runnable;)Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->start()V

    :cond_0
    return-void
.end method

.method public prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public updatePreviewItems(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemCheck"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->updatePreviewItems(Ljava/util/function/Predicate;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    const-string v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewItemManager;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->willAcceptItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
