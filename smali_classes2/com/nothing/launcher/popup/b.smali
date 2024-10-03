.class public abstract Lcom/nothing/launcher/popup/b;
.super Lcom/android/launcher3/popup/ArrowPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/popup/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/popup/ArrowPopup<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nothing/launcher/popup/b$a;


# instance fields
.field private backgroundMaskView:Lcom/android/launcher3/views/ScrimView;

.field private final deepShortcutsContainerTag:Ljava/lang/String;

.field private highlightIconView:Landroid/view/View;

.field private final itemBgColorIds:[I

.field private final itemBgDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final itemVerticalGap:I

.field private final iterateChildrenTag:Ljava/lang/String;

.field private oldScrimViewSysUiFlags:I

.field private final stateManager$delegate:Ln5/e;

.field private final systemUiController:Lcom/android/launcher3/util/SystemUiController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/popup/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/popup/b$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/popup/b;->Companion:Lcom/nothing/launcher/popup/b$a;

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

    invoke-direct/range {v1 .. v6}, Lcom/nothing/launcher/popup/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/nothing/launcher/popup/b$b;

    invoke-direct {p2, p0}, Lcom/nothing/launcher/popup/b$b;-><init>(Lcom/nothing/launcher/popup/b;)V

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p2

    iput-object p2, p0, Lcom/nothing/launcher/popup/b;->stateManager$delegate:Ln5/e;

    iget-object p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p2

    const-string p3, "fromContext<BaseActivity\u2026ntext).systemUiController"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/nothing/launcher/popup/b;->systemUiController:Lcom/android/launcher3/util/SystemUiController;

    const/4 p3, 0x3

    new-array v0, p3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nothing/launcher/popup/b;->itemBgColorIds:[I

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/SystemUiController;->getUIStateFlags(I)I

    move-result p2

    iput p2, p0, Lcom/nothing/launcher/popup/b;->oldScrimViewSysUiFlags:I

    const p2, 0x7f04042a

    invoke-static {p1, p2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0704a3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 v2, 0x0

    aput p2, p1, v2

    aput p2, p1, v0

    const/4 v0, 0x2

    aput p2, p1, v0

    aput p2, p1, p3

    const/4 p3, 0x4

    aput p2, p1, p3

    const/4 p3, 0x5

    aput p2, p1, p3

    const/4 p3, 0x6

    aput p2, p1, p3

    const/4 p3, 0x7

    aput p2, p1, p3

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iput-object v1, p0, Lcom/nothing/launcher/popup/b;->itemBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704a7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/popup/b;->itemVerticalGap:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120221

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resources.getString(R.st\u2026ntainer_iterate_children)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/popup/b;->iterateChildrenTag:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120222

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resources.getString(R.st\u2026deep_shortcuts_container)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/popup/b;->deepShortcutsContainerTag:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f060395
        0x7f060392
        0x7f060376
    .end array-data
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
    invoke-direct {p0, p1, p2, p3}, Lcom/nothing/launcher/popup/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMActivityContext$p$s1108349065(Lcom/nothing/launcher/popup/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    return-object p0
.end method

.method private final addItemVerticalGap(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz p0, :cond_0

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    return-void
.end method

.method private final assignDeepShortcutsBackgrounds(Landroid/view/ViewGroup;[IILandroid/animation/AnimatorSet;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    array-length v2, p2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    xor-int/2addr v2, v1

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/nothing/launcher/popup/b;->deepShortcutsContainerTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    array-length v2, p2

    rem-int/2addr p3, v2

    array-length v2, p2

    if-eq v2, v1, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    array-length v2, p2

    add-int/lit8 v2, v2, -0x3

    if-gt p3, v2, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move p3, v2

    :goto_3
    add-int/lit8 v2, p3, 0x2

    goto :goto_4

    :cond_4
    move p3, v0

    move v2, v1

    goto :goto_4

    :cond_5
    move v2, p3

    :goto_4
    aget p3, p2, p3

    aget p2, p2, v2

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/launcher3/popup/ArrowPopup;->setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    :goto_5
    if-ge v0, p3, :cond_6

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(index)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2, p4}, Lcom/android/launcher3/popup/ArrowPopup;->setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    move v0, v1

    :cond_7
    return v0
.end method

.method private static final assignMarginsAndBackgrounds$lambda$1(Lcom/nothing/launcher/popup/b;I)I
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/nothing/launcher/popup/b;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/popup/b;->assignMarginsAndBackgrounds$lambda$1(Lcom/nothing/launcher/popup/b;I)I

    move-result p0

    return p0
.end method

.method private final createBackgroundScrim()Lcom/android/launcher3/views/ScrimView;
    .locals 3

    new-instance v0, Lcom/android/launcher3/views/ScrimView;

    iget-object v1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/views/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v1, 0x7f0b02d8

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    new-instance v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    const v1, 0x7f06039a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/ScrimView;->setBackgroundColor(I)V

    return-object v0
.end method

.method private final getStateManager()Lcom/android/launcher3/statemanager/StateManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager<",
            "Lcom/android/launcher3/LauncherState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/nothing/launcher/popup/b;->stateManager$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/statemanager/StateManager;

    return-object p0
.end method

.method private final getVisibleItemCount(Landroid/view/ViewGroup;)I
    .locals 6

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->iterator(Landroid/view/ViewGroup;)Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v3, :cond_0

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nothing/launcher/popup/b;->iterateChildrenTag:Ljava/lang/String;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lcom/nothing/launcher/popup/b;->getVisibleItemCount(Landroid/view/ViewGroup;)I

    move-result v4

    :cond_2
    add-int/2addr v1, v4

    goto :goto_0

    :cond_3
    return v1
.end method

.method private final hasNextChild(II)Z
    .locals 2

    iget-boolean p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_0
    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method private final reverseOrder(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    if-ne v3, p1, :cond_0

    invoke-static {v1}, Lo5/j;->y(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lo5/j;->y(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final addHighlightIconView()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/popup/b;->highlightIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getZ()F

    move-result p0

    const/4 v1, 0x1

    int-to-float v1, v1

    sub-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setZ(F)V

    :cond_0
    return-void
.end method

.method protected assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V
    .locals 13

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/nothing/launcher/popup/b;->itemBgColorIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/nothing/launcher/popup/a;

    invoke-direct {v2, p0}, Lcom/nothing/launcher/popup/a;-><init>(Lcom/nothing/launcher/popup/b;)V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutOrWrapper(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-boolean v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v6, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v2, -0x1

    :goto_2
    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    move-object v6, v0

    move v8, v3

    move v9, v8

    :cond_5
    :goto_4
    invoke-direct {p0, v7, v2}, Lcom/nothing/launcher/popup/b;->hasNextChild(II)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v11, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, -0x1

    :goto_5
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_5

    if-eqz v6, :cond_7

    iget v11, p0, Lcom/nothing/launcher/popup/b;->itemVerticalGap:I

    invoke-direct {p0, v6, v11}, Lcom/nothing/launcher/popup/b;->addItemVerticalGap(Landroid/view/View;I)V

    :cond_7
    invoke-direct {p0, v10, v3}, Lcom/nothing/launcher/popup/b;->addItemVerticalGap(Landroid/view/View;I)V

    if-eqz v1, :cond_9

    array-length p2, v1

    if-lt v8, p2, :cond_8

    add-int/lit8 p2, v8, -0x1

    goto :goto_6

    :cond_8
    move p2, v8

    :goto_6
    array-length v6, v1

    rem-int/2addr p2, v6

    aget p2, v1, p2

    :cond_9
    instance-of v6, v10, Landroid/view/ViewGroup;

    if-eqz v6, :cond_a

    iget-object v11, p0, Lcom/nothing/launcher/popup/b;->iterateChildrenTag:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move-object v6, v10

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {p0, v6, p2}, Lcom/nothing/launcher/popup/b;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;I)V

    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-object v6, v10

    goto :goto_4

    :cond_a
    if-eqz v6, :cond_b

    move-object v6, v10

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v1, v8, v4}, Lcom/nothing/launcher/popup/b;->assignDeepShortcutsBackgrounds(Landroid/view/ViewGroup;[IILandroid/animation/AnimatorSet;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p0, v10}, Lcom/android/launcher3/popup/ArrowPopup;->isShortcutOrWrapper(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    const v6, 0x7f080388

    invoke-virtual {v10, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_b

    :cond_c
    if-le v5, v6, :cond_10

    if-nez v9, :cond_e

    iget-object v6, p0, Lcom/nothing/launcher/popup/b;->itemBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-eqz v6, :cond_d

    :goto_8
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_9

    :cond_d
    move-object v6, v0

    :goto_9
    invoke-virtual {v10, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_e
    add-int/lit8 v6, v5, -0x1

    if-ne v9, v6, :cond_f

    iget-object v6, p0, Lcom/nothing/launcher/popup/b;->itemBgDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_f
    const v6, 0x7f080382

    invoke-virtual {v10, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_a
    add-int/lit8 v9, v9, 0x1

    :cond_10
    :goto_b
    invoke-virtual {p0, v10, p2, v4}, Lcom/android/launcher3/popup/ArrowPopup;->setChildColor(Landroid/view/View;ILandroid/animation/AnimatorSet;)V

    goto :goto_7

    :cond_11
    const-wide/16 p1, 0x0

    invoke-virtual {v4, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    return-void
.end method

.method protected closeComplete()V
    .locals 2

    invoke-virtual {p0}, Lcom/nothing/launcher/popup/b;->restoreOriginalView()V

    invoke-super {p0}, Lcom/android/launcher3/popup/ArrowPopup;->closeComplete()V

    invoke-direct {p0}, Lcom/nothing/launcher/popup/b;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nothing/launcher/popup/b;->systemUiController:Lcom/android/launcher3/util/SystemUiController;

    const/4 v1, 0x1

    iget p0, p0, Lcom/nothing/launcher/popup/b;->oldScrimViewSysUiFlags:I

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    :cond_1
    return-void
.end method

.method public final createHighlightView(Lcom/android/launcher3/BubbleTextView;)Landroid/view/View;
    .locals 7

    const-string v0, "originalIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b02d9

    invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v3}, Lcom/android/launcher3/BubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    aget v5, v1, v4

    iget v6, v3, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    const/4 v5, 0x1

    aget v1, v1, v5

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    new-instance v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v6

    invoke-direct {v1, v3, v6}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v3

    sub-int/2addr p0, v3

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfoWithIcon"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {p0, v5}, Lq4/h;->a(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)I

    move-result p0

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v2
.end method

.method protected final getHighlightIconView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/popup/b;->highlightIconView:Landroid/view/View;

    return-object p0
.end method

.method public final hideHighlightIconView()V
    .locals 1

    iget-object p0, p0, Lcom/nothing/launcher/popup/b;->highlightIconView:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected letItemAnim(Landroid/view/View;[FJJLandroid/animation/AnimatorSet;)V
    .locals 1

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "alphaValues"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outAnim"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    aget p0, p2, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    sget-object p0, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p2

    invoke-static {p1, p0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p0, p5, p6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p7, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/popup/ArrowPopup;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object p3

    const-string p5, "dragLayer.getInsets()"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p5

    int-to-float p2, p2

    add-float/2addr p5, p2

    iget p2, p3, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    cmpg-float p2, p5, p2

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p2

    int-to-float p4, p4

    add-float/2addr p2, p4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    iget p3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p3

    int-to-float p3, p4

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    :cond_0
    iget p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    :cond_1
    iget p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {p2}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setX(F)V

    :cond_2
    iget p2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {p2}, Landroid/view/Gravity;->isVertical(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setY(F)V

    :cond_3
    return-void
.end method

.method protected onOpenCloseAnimUpdate(Landroid/animation/ValueAnimator;FZ)V
    .locals 0

    iget-object p1, p0, Lcom/nothing/launcher/popup/b;->backgroundMaskView:Lcom/android/launcher3/views/ScrimView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    if-nez p3, :cond_2

    iget-object p0, p0, Lcom/nothing/launcher/popup/b;->highlightIconView:Landroid/view/View;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected orientAboutObject()V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    sget-object v1, Lcom/nothing/launcher/popup/b;->Companion:Lcom/nothing/launcher/popup/b$a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/nothing/launcher/popup/b$a;->a(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p0}, Lcom/nothing/launcher/popup/b;->getVisibleItemCount(Landroid/view/ViewGroup;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v4, p0, Lcom/nothing/launcher/popup/b;->itemVerticalGap:I

    mul-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/popup/ArrowPopup;->getTargetObjectLocation(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsRtl:Z

    if-eqz v5, :cond_0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v5, v2, Landroid/graphics/Rect;->left:I

    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTop()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    if-le v7, v8, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v0

    :goto_1
    iput-boolean v8, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez v8, :cond_2

    iget-object v7, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v6

    add-int/2addr v7, v1

    :cond_2
    add-int/2addr v7, v4

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    if-ge v7, v4, :cond_3

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    if-nez v8, :cond_4

    if-nez v3, :cond_4

    const/16 v0, 0x10

    :cond_4
    iput v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    int-to-float v0, v5

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setX(F)V

    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v1

    sub-int/2addr v2, p0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_6
    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v6

    add-int/2addr p0, v1

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_3
    return-void
.end method

.method protected reorderAndShow(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/nothing/launcher/popup/b;->setupForDisplay()V

    iget-boolean v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/popup/b;->reverseOrder(I)V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/launcher3/popup/ArrowPopup;->assignMarginsAndBackgrounds(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/popup/b;->shouldAddArrow()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->addArrow()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->animateOpen()V

    return-void
.end method

.method public final restoreOriginalView()V
    .locals 4

    iget-object v0, p0, Lcom/nothing/launcher/popup/b;->backgroundMaskView:Lcom/android/launcher3/views/ScrimView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v1, p0, Lcom/nothing/launcher/popup/b;->backgroundMaskView:Lcom/android/launcher3/views/ScrimView;

    :cond_1
    iget-object v0, p0, Lcom/nothing/launcher/popup/b;->highlightIconView:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v1, p0, Lcom/nothing/launcher/popup/b;->highlightIconView:Landroid/view/View;

    :cond_3
    return-void
.end method

.method protected final setHighlightIconView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/popup/b;->highlightIconView:Landroid/view/View;

    return-void
.end method

.method protected setupForDisplay()V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    invoke-virtual {p0}, Lcom/nothing/launcher/popup/b;->showBackgroundScrim()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nothing/launcher/popup/b;->createBackgroundScrim()Lcom/android/launcher3/views/ScrimView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/nothing/launcher/popup/b;->backgroundMaskView:Lcom/android/launcher3/views/ScrimView;

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setZ(F)V

    invoke-virtual {p0}, Lcom/nothing/launcher/popup/b;->orientAboutObject()V

    return-void
.end method

.method protected shouldAddArrow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showBackgroundScrim()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
