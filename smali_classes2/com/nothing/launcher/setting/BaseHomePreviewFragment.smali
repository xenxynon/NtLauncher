.class public abstract Lcom/nothing/launcher/setting/BaseHomePreviewFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/BaseHomePreviewFragment$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/nothing/launcher/setting/BaseHomePreviewFragment$a;


# instance fields
.field private final g:F

.field private final h:F

.field private i:Ln4/h;

.field private final j:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->k:Lcom/nothing/launcher/setting/BaseHomePreviewFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const v0, 0x3eeb851f    # 0.46f

    iput v0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->g:F

    const v0, 0x3f07ae14    # 0.53f

    iput v0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->h:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->j:[F

    return-void
.end method

.method public static final synthetic a(Lcom/nothing/launcher/setting/BaseHomePreviewFragment;)Ln4/h;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->i:Ln4/h;

    return-object p0
.end method

.method private final b()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->d(Landroid/app/Activity;)F

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    int-to-float v0, v0

    add-float/2addr v2, v0

    sub-float/2addr v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->i(FF)F

    move-result v0

    invoke-virtual {p0, v3, v2}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->g(FF)F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateItemSize item width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseHomePreview"

    invoke-static {v3, v2}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->j:[F

    const/4 v2, 0x0

    aput v0, p0, v2

    const/4 v0, 0x1

    aput v1, p0, v0

    return-void
.end method

.method private final l(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 4

    new-instance v0, Ln4/h;

    invoke-direct {v0, p0}, Ln4/h;-><init>(Lcom/nothing/launcher/setting/BaseHomePreviewFragment;)V

    iput-object v0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->i:Ln4/h;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->k()I

    move-result v2

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    :cond_1
    new-instance v0, Landroidx/viewpager2/widget/MarginPageTransformer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    iget-object p0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->i:Ln4/h;

    if-nez p0, :cond_2

    const-string p0, "previewAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    :goto_1
    invoke-virtual {p1, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public abstract c(I)Lcom/nothing/launcher/setting/PreviewItemFragment;
.end method

.method public d(Landroid/app/Activity;)F
    .locals 3

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x10102eb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public abstract e()Ln4/d;
.end method

.method public abstract f()Landroidx/viewpager2/widget/ViewPager2;
.end method

.method public g(FF)F
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->h()F

    move-result p0

    mul-float/2addr p2, p0

    return p2
.end method

.method public h()F
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->h:F

    return p0
.end method

.method public i(FF)F
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->j()F

    move-result p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public j()F
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->g:F

    return p0
.end method

.method public k()I
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->j()F

    move-result p0

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    const/4 p0, 0x2

    int-to-float p0, p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public m()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment$b;-><init>(Lcom/nothing/launcher/setting/BaseHomePreviewFragment;Lq5/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->b()V

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->e()Ln4/d;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->j:[F

    const/4 v2, 0x0

    aget v3, p0, v2

    float-to-int v3, v3

    const/4 v4, 0x1

    aget p0, p0, v4

    float-to-int p0, p0

    invoke-direct {v1, v2, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v1}, Ln4/d;->f(Landroid/content/Context;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->f()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->l(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->m()V

    return-void
.end method
