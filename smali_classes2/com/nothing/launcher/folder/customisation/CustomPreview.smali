.class public final Lcom/nothing/launcher/folder/customisation/CustomPreview;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/views/ClipPathView;


# instance fields
.field private final g:Lcom/android/launcher3/views/ActivityContext;

.field private final h:Lcom/android/launcher3/folder/PreviewBackground;

.field public i:Lcom/android/launcher3/model/data/FolderInfo;

.field public j:Lcom/android/launcher3/model/data/FolderInfo;

.field private k:Lcom/android/launcher3/folder/BaseFolderIcon;

.field private l:Lc3/a;

.field private m:Lcom/android/launcher3/folder/FolderIconPreviewManager;

.field private n:Landroid/animation/AnimatorSet;

.field private o:Landroid/graphics/Path;


# direct methods
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

    invoke-direct/range {v1 .. v7}, Lcom/nothing/launcher/folder/customisation/CustomPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "lookupContext(context)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->g:Lcom/android/launcher3/views/ActivityContext;

    new-instance p1, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {p1}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nothing/launcher/folder/customisation/CustomPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/launcher/folder/customisation/CustomPreview;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->d(Lcom/nothing/launcher/folder/customisation/CustomPreview;)V

    return-void
.end method

.method public static final synthetic b(Lcom/nothing/launcher/folder/customisation/CustomPreview;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->n:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private final c(Landroid/animation/AnimatorSet;)V
    .locals 6

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/PreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getCornerRadius()F

    move-result v4

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo;->isGridType()Z

    move-result v1

    xor-int/lit8 v5, v1, 0x1

    move-object v1, p0

    move-object v2, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v1, Lc3/a;->p:Lc3/a$b;

    invoke-virtual {v1}, Lc3/a$b;->a()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/nothing/launcher/folder/customisation/b;

    invoke-direct {v1, p0}, Lcom/nothing/launcher/folder/customisation/b;-><init>(Lcom/nothing/launcher/folder/customisation/CustomPreview;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private static final d(Lcom/nothing/launcher/folder/customisation/CustomPreview;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    iput p0, v0, Lcom/android/launcher3/folder/PreviewBackground;->circleType:I

    return-void
.end method

.method private final e(Landroid/animation/AnimatorSet;)V
    .locals 5

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->getBgColor()I

    move-result v0

    sget-object v1, Lz3/d;->a:Lz3/d;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lz3/d;->d(Landroid/content/Context;Z)I

    move-result v1

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    sget-object v2, Lcom/android/launcher3/folder/PreviewBackground;->COLOR:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lc3/a;->p:Lc3/a$b;

    invoke-virtual {v0}, Lc3/a$b;->a()Landroid/view/animation/PathInterpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private final g()V
    .locals 1

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->n:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method private final i(Landroid/animation/AnimatorSet;)V
    .locals 1

    new-instance v0, Lcom/nothing/launcher/folder/customisation/CustomPreview$a;

    invoke-direct {v0, p0, p1}, Lcom/nothing/launcher/folder/customisation/CustomPreview$a;-><init>(Lcom/nothing/launcher/folder/customisation/CustomPreview;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->o:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    sget-object v0, Ln5/t;->a:Ln5/t;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackground(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->m:Lcom/android/launcher3/folder/FolderIconPreviewManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final f(Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 7

    const-string v0, "folderIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->k:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->setFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease(Lcom/android/launcher3/model/data/FolderInfo;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.model.data.FolderInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->setOriginalFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease(Lcom/android/launcher3/model/data/FolderInfo;)V

    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/launcher3/folder/PreviewBackground;->isCover:Z

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    invoke-static {p1}, Lb3/m;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    iput v0, p1, Lcom/android/launcher3/folder/PreviewBackground;->circleType:I

    new-instance p1, Lc3/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v0, "context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lc3/a;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;Ly5/l;ILkotlin/jvm/internal/i;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lc3/a;->G(Lc3/a;ZILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->l:Lc3/a;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/launcher3/folder/FolderIconPreviewManager;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/FolderIconPreviewManager;-><init>(Lcom/nothing/launcher/folder/customisation/CustomPreview;)V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->m:Lcom/android/launcher3/folder/FolderIconPreviewManager;

    :goto_0
    return-void
.end method

.method public final getBackground$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/folder/PreviewBackground;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    return-object p0
.end method

.method public final getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->i:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "folderInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOriginalFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->j:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "originalFolderInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    const-string v1, "custom:smile"

    iput-object v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getOriginalFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getOriginalFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    sget-object v0, Ly4/c;->a:Ly4/c;

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Ly4/c;->b(Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0, v4, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->g:Lcom/android/launcher3/views/ActivityContext;

    const/4 v5, 0x0

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->l:Lc3/a;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/PreviewBackground;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->l:Lc3/a;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->measure(II)V

    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->m:Lcom/android/launcher3/folder/FolderIconPreviewManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->onMeasure(II)V

    :cond_2
    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->o:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public final setCoverValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/android/launcher3/model/data/FolderInfo;->coverValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->setFolderType(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->l:Lc3/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc3/a;->u()V

    :cond_1
    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->m:Lcom/android/launcher3/folder/FolderIconPreviewManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->onCoverValueChange()V

    :cond_2
    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->k:Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/BaseFolderIcon;->onCoverValueChange()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->i:Lcom/android/launcher3/model/data/FolderInfo;

    return-void
.end method

.method public final setFolderType(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->l:Lc3/a;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    iput p1, v3, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    iput v4, v3, Lcom/android/launcher3/folder/PreviewBackground;->circleType:I

    :cond_1
    invoke-virtual {v1, v0, v2}, Lc3/a;->w(Landroid/animation/AnimatorSet;I)V

    invoke-direct {p0, v0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->c(Landroid/animation/AnimatorSet;)V

    :cond_2
    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->m:Lcom/android/launcher3/folder/FolderIconPreviewManager;

    if-eqz v1, :cond_4

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v2

    iput p1, v2, Lcom/android/launcher3/model/data/FolderInfo;->folderType:I

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->onFolderTypeChange()V

    :cond_4
    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->getFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/launcher3/folder/PreviewBackground;->isCover:Z

    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->k:Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->onFolderTypeChange()V

    :cond_5
    invoke-direct {p0, v0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->e(Landroid/animation/AnimatorSet;)V

    invoke-direct {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->g()V

    invoke-direct {p0, v0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->i(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public final setOriginalFolderInfo$NothingLauncher3_searchWithQuickstepOnGooglePlayRelease(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->j:Lcom/android/launcher3/model/data/FolderInfo;

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const-string v0, "who"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/CustomPreview;->m:Lcom/android/launcher3/folder/FolderIconPreviewManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderIconPreviewManager;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method
