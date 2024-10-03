.class public final Lcom/nothing/launcher/card/r;
.super Lcom/nothing/launcher/card/a;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/widget/LocalColorExtractor$Listener;


# instance fields
.field private final V:Lcom/android/launcher3/CheckLongPressHelper;

.field private final W:Lcom/android/launcher3/Launcher;

.field private final X:Lcom/android/launcher3/widget/LocalColorExtractor;

.field private final Y:Landroid/graphics/Rect;

.field private Z:Z

.field private a0:Z

.field private b0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lw1/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/card/a;-><init>(Landroid/content/Context;Lw1/a;)V

    new-instance p2, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {p2, p0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    iput-object p2, p0, Lcom/nothing/launcher/card/r;->V:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/launcher/card/r;->W:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/widget/LocalColorExtractor;->defaultInstance()Lcom/android/launcher3/widget/LocalColorExtractor;

    move-result-object p1

    iput-object p1, p0, Lcom/nothing/launcher/card/r;->X:Lcom/android/launcher3/widget/LocalColorExtractor;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/nothing/launcher/card/r;->Y:Landroid/graphics/Rect;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lw1/a;ILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/card/r;-><init>(Landroid/content/Context;Lw1/a;)V

    return-void
.end method

.method public static synthetic g0(Lcom/nothing/launcher/card/r;Landroid/util/SparseIntArray;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/card/r;->m0(Lcom/nothing/launcher/card/r;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method private final h0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nothing/launcher/card/r;->b0:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/nothing/launcher/card/s;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final i0(Landroid/view/ViewGroup;)Z
    .locals 3

    instance-of v0, p1, Lcom/nothing/cardwidget/IHorizontalScrollableView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/nothing/cardwidget/IHorizontalScrollableView;

    invoke-interface {v0}, Lcom/nothing/cardwidget/IHorizontalScrollableView;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object p1

    invoke-interface {p1}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/nothing/launcher/card/r;->i0(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private final j0(Landroid/view/ViewGroup;)Z
    .locals 3

    instance-of v0, p1, Landroid/widget/AdapterView;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_3

    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object p1

    invoke-interface {p1}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/nothing/launcher/card/r;->j0(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private static final m0(Lcom/nothing/launcher/card/r;Landroid/util/SparseIntArray;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/nothing/cardhost/e;->setColorResources(Landroid/util/SparseIntArray;)V

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    iget-object p0, p0, Lcom/nothing/launcher/card/r;->V:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public final getCardWidgetInfo()Lcom/nothing/launcher/card/CardWidgetProviderInfo;
    .locals 3

    invoke-virtual {p0}, Lcom/nothing/cardhost/e;->getAppWidgetInfo()Lcom/nothing/cardservice/CardWidgetMetaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->N:Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;->a(Landroid/content/Context;Lcom/nothing/cardservice/CardWidgetMetaInfo;)Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final k0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nothing/launcher/card/r;->b0:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public final l0(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 1

    const-string v0, "rectInView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nothing/launcher/card/r;->b0:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/card/r;->X:Lcom/android/launcher3/widget/LocalColorExtractor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/widget/LocalColorExtractor;->setWorkspaceLocation(Landroid/graphics/Rect;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final n0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nothing/launcher/card/r;->b0:Z

    return-void
.end method

.method public final o0()V
    .locals 4

    invoke-direct {p0}, Lcom/nothing/launcher/card/r;->h0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.nothing.launcher.card.LauncherCardWidgetInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nothing/launcher/card/s;

    iget-object v1, p0, Lcom/nothing/launcher/card/r;->X:Lcom/android/launcher3/widget/LocalColorExtractor;

    iget-object v2, p0, Lcom/nothing/launcher/card/r;->Y:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string v3, "null cannot be cast to non-null type android.view.View"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, v2, p0, v0}, Lcom/android/launcher3/widget/LocalColorExtractor;->setWorkspaceLocation(Landroid/graphics/Rect;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/nothing/cardhost/e;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/nothing/launcher/card/r;->X:Lcom/android/launcher3/widget/LocalColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LocalColorExtractor;->setListener(Lcom/android/launcher3/widget/LocalColorExtractor$Listener;)V

    return-void
.end method

.method public onColorsChanged(Landroid/util/SparseIntArray;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/nothing/launcher/card/q;

    invoke-direct {v0, p0, p1}, Lcom/nothing/launcher/card/q;-><init>(Lcom/nothing/launcher/card/r;Landroid/util/SparseIntArray;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/nothing/cardhost/e;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/nothing/launcher/card/r;->X:Lcom/android/launcher3/widget/LocalColorExtractor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/LocalColorExtractor;->setListener(Lcom/android/launcher3/widget/LocalColorExtractor$Listener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nothing/launcher/card/r;->W:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    const-string v1, "launcher.dragLayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/nothing/launcher/card/r;->Z:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lb3/x;->d(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V

    iget-object v0, p0, Lcom/nothing/launcher/card/r;->W:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nothing/launcher/card/r;->a0:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lb3/x;->d(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->setTouchCompleteListener(Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;)V

    :cond_2
    iget-object v0, p0, Lcom/nothing/launcher/card/r;->V:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/nothing/launcher/card/r;->V:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/nothing/launcher/card/a;->onLayout(ZIIII)V

    invoke-direct {p0, p0}, Lcom/nothing/launcher/card/r;->j0(Landroid/view/ViewGroup;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nothing/launcher/card/r;->Z:Z

    invoke-direct {p0, p0}, Lcom/nothing/launcher/card/r;->i0(Landroid/view/ViewGroup;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nothing/launcher/card/r;->a0:Z

    invoke-direct {p0}, Lcom/nothing/launcher/card/r;->h0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.nothing.launcher.card.LauncherCardWidgetInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/nothing/launcher/card/s;

    iget-object v0, p0, Lcom/nothing/launcher/card/r;->Y:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lcom/nothing/launcher/card/r;->X:Lcom/android/launcher3/widget/LocalColorExtractor;

    iget-object p3, p0, Lcom/nothing/launcher/card/r;->Y:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const-string p4, "null cannot be cast to non-null type android.view.View"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p2, p3, p0, p1}, Lcom/android/launcher3/widget/LocalColorExtractor;->setWorkspaceLocation(Landroid/graphics/Rect;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/nothing/launcher/card/r;->Z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nothing/launcher/card/r;->W:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    const-string v2, "launcher.dragLayer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/nothing/launcher/card/r;->a0:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/nothing/launcher/card/r;->W:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/PagedView;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onTouchComplete()V
    .locals 1

    iget-object v0, p0, Lcom/nothing/launcher/card/r;->V:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/nothing/launcher/card/r;->V:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/card/r;->V:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method
