.class public final Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;
.super Lcom/android/launcher3/popup/ArrowPopup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
        ">",
        "Lcom/android/launcher3/popup/ArrowPopup<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$Companion;


# instance fields
.field private alwaysShowTaskbarOn:Z

.field private final arrowHeight:F

.field private final arrowPointRadius:F

.field private final arrowWidth:F

.field private changePreference:Ly5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/a<",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private didPreferenceChange:Z

.field private dividerView:Landroid/view/View;

.field private final menuWidth:I

.field private onCloseCallback:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private final popupCornerRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->Companion:Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$Companion;

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

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/i;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/ArrowPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070552

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->menuWidth:I

    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->popupCornerRadius:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07049d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->arrowWidth:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07049a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->arrowHeight:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070499

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->arrowPointRadius:F

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->alwaysShowTaskbarOn:Z

    sget-object p1, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$onCloseCallback$1;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$onCloseCallback$1;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->onCloseCallback:Ly5/l;

    sget-object p1, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$changePreference$1;->INSTANCE:Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$changePreference$1;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->changePreference:Ly5/a;

    iget p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenFadeStartDelay:I

    iput p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenChildFadeStartDelay:I

    iget p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenFadeDuration:I

    iput p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mOpenChildFadeDuration:I

    iget p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseChildFadeStartDelay:I

    iput p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseFadeStartDelay:I

    iget p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseChildFadeDuration:I

    iput p1, p0, Lcom/android/launcher3/popup/ArrowPopup;->mCloseFadeDuration:I

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
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$populateForView(Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;Landroid/view/View;)Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->populateForView(Landroid/view/View;)Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/widget/Switch;Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->onFinishInflate$lambda$0(Landroid/widget/Switch;Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->onFinishInflate$lambda$1(Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;Landroid/view/View;)V

    return-void
.end method

.method private final onClickAlwaysShowTaskbarSwitchOption()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->didPreferenceChange:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->changePreference:Ly5/a;

    invoke-interface {v0}, Ly5/a;->invoke()Ljava/lang/Object;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$onClickAlwaysShowTaskbarSwitchOption$$inlined$postDelayed$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$onClickAlwaysShowTaskbarSwitchOption$$inlined$postDelayed$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static final onFinishInflate$lambda$0(Landroid/widget/Switch;Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/Switch;->setClickable(Z)V

    iget-boolean v0, p1, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->alwaysShowTaskbarOn:Z

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->onClickAlwaysShowTaskbarSwitchOption()V

    return-void
.end method

.method private static final onFinishInflate$lambda$1(Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.NAVIGATION_MODE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.settings"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final populateForView(Landroid/view/View;)Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/android/launcher3/taskbar/TaskbarDividerPopupView<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->dividerView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->tryUpdateBackground()V

    return-object p0
.end method

.method private final tryUpdateBackground()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06038f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected addArrow()V
    .locals 5

    invoke-super {p0}, Lcom/android/launcher3/popup/ArrowPopup;->addArrow()V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->dividerView:Landroid/view/View;

    const/4 v2, 0x0

    const-string v3, "dividerView"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->dividerView:Landroid/view/View;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrowWidth:I

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    return-void
.end method

.method protected closeComplete()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->onCloseCallback:Ly5/l;

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->didPreferenceChange:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/android/launcher3/popup/ArrowPopup;->closeComplete()V

    return-void
.end method

.method public final getChangePreference()Ly5/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly5/a<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->changePreference:Ly5/a;

    return-object p0
.end method

.method public final getOnCloseCallback()Ly5/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly5/l<",
            "Ljava/lang/Boolean;",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->onCloseCallback:Ly5/l;

    return-object p0
.end method

.method protected getTargetObjectLocation(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "outPos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->dividerView:Landroid/view/View;

    if-nez p0, :cond_0

    const-string p0, "dividerView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    const/high16 p0, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/popup/ArrowPopup;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->dividerView:Landroid/view/View;

    if-nez p0, :cond_2

    const-string p0, "dividerView"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_2
    invoke-virtual {v2, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method protected onFinishInflate()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSwitchCompatOrMaterialCode"
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b03b9

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b03b7

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    const v2, 0x7f0b0292

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->alwaysShowTaskbarOn:Z

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v3, Lcom/android/launcher3/taskbar/n1;

    invoke-direct {v3, v1, p0}, Lcom/android/launcher3/taskbar/n1;-><init>(Landroid/widget/Switch;Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/launcher3/taskbar/o1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/o1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected orientAboutObject()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/popup/ArrowPopup;->orientAboutObject()V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->menuWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setX(F)V

    return-void
.end method

.method public final setChangePreference(Ly5/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/a<",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->changePreference:Ly5/a;

    return-void
.end method

.method public final setOnCloseCallback(Ly5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->onCloseCallback:Ly5/l;

    return-void
.end method

.method protected updateArrowColor()V
    .locals 14

    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mGravity:I

    invoke-static {v0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    new-instance v13, Lcom/android/launcher3/popup/RoundedArrowDrawable;

    iget v2, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->arrowWidth:F

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->arrowHeight:F

    iget v4, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->arrowPointRadius:F

    iget v5, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->popupCornerRadius:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v8, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->arrowWidth:F

    sub-float/2addr v1, v8

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float v8, v1, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v12, 0x7f06038f

    invoke-virtual {v1, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/android/launcher3/popup/RoundedArrowDrawable;-><init>(FFFFFFFFZZI)V

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mElevation:F

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

    iget-object v0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mArrow:Landroid/view/View;

    iget p0, p0, Lcom/android/launcher3/popup/ArrowPopup;->mElevation:F

    invoke-virtual {v0, p0}, Landroid/view/View;->setElevation(F)V

    :cond_0
    return-void
.end method
