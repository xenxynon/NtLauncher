.class public final Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/AbstractSlideInView<",
        "Lcom/android/launcher3/Launcher;",
        ">;",
        "Lcom/android/launcher3/Insettable;"
    }
.end annotation


# static fields
.field public static final t:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$a;

.field private static final u:Landroid/view/animation/PathInterpolator;

.field private static final v:Landroid/view/animation/PathInterpolator;


# instance fields
.field public g:Lcom/android/launcher3/folder/BaseFolderIcon;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroidx/recyclerview/widget/RecyclerView;

.field private j:Lcom/nothing/launcher/folder/customisation/CustomPreview;

.field private k:Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;

.field private l:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field

.field private m:Lcom/android/launcher3/Hotseat;

.field private final n:Landroid/graphics/Rect;

.field private final o:Landroid/graphics/Rect;

.field private final p:Landroid/graphics/PointF;

.field private q:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

.field private r:Z

.field private final s:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->t:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$a;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->u:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->v:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->n:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->o:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->p:Landroid/graphics/PointF;

    new-instance p1, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b;

    invoke-direct {p1, p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$b;-><init>(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->s:Ln5/e;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->t(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    return-void
.end method

.method public static synthetic b(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->u(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    return-void
.end method

.method public static final synthetic c(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->attachToContainer()V

    return-void
.end method

.method public static final synthetic d(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Lcom/nothing/launcher/folder/customisation/CustomPreview;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->j:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    return-object p0
.end method

.method public static final synthetic e(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->k:Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;

    return-object p0
.end method

.method public static final synthetic f(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->i:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic g(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Lcom/nothing/launcher/folder/customisation/g;
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->getImageCoverAdapter()Lcom/nothing/launcher/folder/customisation/g;

    move-result-object p0

    return-object p0
.end method

.method private final getImageCoverAdapter()Lcom/nothing/launcher/folder/customisation/g;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->s:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/folder/customisation/g;

    return-object p0
.end method

.method public static final synthetic h(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static final synthetic i(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->q(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    return-void
.end method

.method public static final synthetic j(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->r()V

    return-void
.end method

.method public static final synthetic k(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->s()V

    return-void
.end method

.method public static final synthetic l(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->open(Z)V

    return-void
.end method

.method public static final synthetic m(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->setFolderFirstPageVisibility(Z)V

    return-void
.end method

.method public static final synthetic n(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;Lcom/android/launcher3/Hotseat;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->m:Lcom/android/launcher3/Hotseat;

    return-void
.end method

.method public static final synthetic o(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    return-void
.end method

.method private final open(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->setTranslationShift(F)V

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object v0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->u:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$d;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$d;-><init>(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/nothing/launcher/folder/customisation/d;

    invoke-direct {p1, p0}, Lcom/nothing/launcher/folder/customisation/d;-><init>(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->setTranslationShift(F)V

    new-instance p1, Lcom/nothing/launcher/folder/customisation/e;

    invoke-direct {p1, p0}, Lcom/nothing/launcher/folder/customisation/e;-><init>(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static final synthetic p(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;Lcom/android/launcher3/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->l:Lcom/android/launcher3/Workspace;

    return-void
.end method

.method private final q(Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 6

    const v0, 0x7f0b0128

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.customPreview)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nothing/launcher/folder/customisation/CustomPreview;

    iput-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->j:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->setFolderIcon(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getIconBounds(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher3/icons/IconNormalizer;->formatBigSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int v3, v2, v1

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    int-to-float v1, v1

    add-float/2addr v1, v4

    iget-object v5, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->n:Landroid/graphics/Rect;

    invoke-static {v4}, La6/a;->b(F)I

    move-result v4

    invoke-static {v1}, La6/a;->b(F)I

    move-result v1

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->p:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->n:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->p:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    iget-object v2, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->n:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->j:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    if-nez p0, :cond_0

    const-string p0, "customPreview"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->f(Lcom/android/launcher3/folder/BaseFolderIcon;)V

    return-void
.end method

.method private final r()V
    .locals 3

    const v0, 0x7f0b0129

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.customTypeSelect)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;

    iput-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->k:Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->getFolderIcon()Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->k:Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;

    if-nez v1, :cond_0

    const-string v1, "customTypeSelectView"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    new-instance v2, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$c;

    invoke-direct {v2, p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$c;-><init>(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V

    invoke-virtual {v1, v0, v2}, Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;->b(Lcom/android/launcher3/model/data/FolderInfo;Ly5/l;)V

    return-void
.end method

.method private final s()V
    .locals 7

    const v0, 0x7f0b0193

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.folder_cover_recyclerview)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->i:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "folderCoverRecycleView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    new-instance v3, Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v2}, Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/i;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->i:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    new-instance v3, Lcom/nothing/launcher/folder/customisation/h;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070125

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/nothing/launcher/folder/customisation/h;-><init>(I)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->i:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-direct {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->getImageCoverAdapter()Lcom/nothing/launcher/folder/customisation/g;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0, v6}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->x(Z)V

    return-void
.end method

.method private final setFolderFirstPageVisibility(Z)V
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->q:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    if-nez v0, :cond_0

    sget-object v0, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->s:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$a;

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    const-string v2, "mContent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout$a;->a(Landroid/view/ViewGroup;Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->q:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->setInsets(Landroid/graphics/Rect;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "folderFirstPage"

    const/16 v3, 0x8

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->q:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->h:Landroid/widget/LinearLayout;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    :cond_3
    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->h:Landroid/widget/LinearLayout;

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, p1

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->q:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->q:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->q()V

    :cond_6
    :goto_4
    return-void
.end method

.method private static final t(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private static final u(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method public static final w(Lcom/android/launcher3/Launcher;ZLcom/android/launcher3/folder/BaseFolderIcon;)Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;
    .locals 1

    sget-object v0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->t:Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView$a;->a(Lcom/android/launcher3/Launcher;ZLcom/android/launcher3/folder/BaseFolderIcon;)Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;

    move-result-object p0

    return-object p0
.end method

.method private final x(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->getImageCoverAdapter()Lcom/nothing/launcher/folder/customisation/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nothing/launcher/folder/customisation/g;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v1, "folderCoverRecycleView"

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->i:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    if-nez p0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v2, p0

    :goto_2
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_4

    :cond_3
    if-nez p0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v2, p0

    :goto_3
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_5
    :goto_4
    return-void
.end method

.method static synthetic y(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->x(Z)V

    return-void
.end method


# virtual methods
.method public final getFolderIcon()Lcom/android/launcher3/folder/BaseFolderIcon;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->g:Lcom/android/launcher3/folder/BaseFolderIcon;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "folderIcon"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getIdleInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    sget-object p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->v:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method protected getScrimColor(Landroid/content/Context;)I
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f0600d6

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method protected handleClose(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->handleClose(ZJ)V

    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    const/high16 p0, 0x2000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBackInvoked()V
    .locals 3

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->q:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->q:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->t()V

    :cond_2
    invoke-direct {p0, v2}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->setFolderFirstPageVisibility(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :goto_1
    return-void
.end method

.method protected onCloseComplete()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onCloseComplete()V

    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->getFolderIcon()Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/BaseFolderIcon;->setIconVisible(Z)V

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->j:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    if-nez p0, :cond_0

    const-string p0, "customPreview"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->h()V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mNoIntercept:Z

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->h:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    const-string v1, "folderFirstPage"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->q:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->q:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mNoIntercept:Z

    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {v0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->getDistanceY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mSwipeDetector:Lcom/android/launcher3/touch/SingleAxisSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/touch/BaseSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onDragEnd(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->r:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onDragEnd(F)V

    :cond_0
    return-void
.end method

.method public onDragStart(ZF)V
    .locals 0

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->r:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0107

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    const v0, 0x7f0b0195

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.folder_customisation_first_page)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->h:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    iget-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->n:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->j:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    if-nez p3, :cond_0

    const-string p3, "customPreview"

    invoke-static {p3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p3, 0x0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v0, v1, v2, p1}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    sub-int p1, p5, p1

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2, p1, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p2, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->n:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->n:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->j:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    if-nez v2, :cond_0

    const-string v2, "customPreview"

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2, p2, v1}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->o:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, v1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    return-void
.end method

.method public final setFolderIcon(Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->g:Lcom/android/launcher3/folder/BaseFolderIcon;

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->q:Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/nothing/launcher/folder/emoji/EmojiSelectPanelLayout;->setInsets(Landroid/graphics/Rect;)V

    :cond_0
    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->o:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected setTranslationShift(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->setTranslationShift(F)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->j:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    const-string v1, "customPreview"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v3, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->p:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->j:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->p:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->l:Lcom/android/launcher3/Workspace;

    if-nez v0, :cond_2

    const-string v0, "workspace"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->m:Lcom/android/launcher3/Hotseat;

    if-nez p0, :cond_3

    const-string p0, "hotSeat"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_4
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 3

    const-string v0, "emojiValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->j:Lcom/nothing/launcher/folder/customisation/CustomPreview;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "customPreview"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/nothing/launcher/folder/customisation/CustomPreview;->setCoverValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->k:Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;

    if-nez v0, :cond_1

    const-string v0, "customTypeSelectView"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/nothing/launcher/folder/customisation/CustomTypeSelectView;->e()V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2, v1}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->y(Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;ZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->getImageCoverAdapter()Lcom/nothing/launcher/folder/customisation/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nothing/launcher/folder/customisation/g;->g(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nothing/launcher/folder/customisation/FolderCustomisationView;->getImageCoverAdapter()Lcom/nothing/launcher/folder/customisation/g;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
