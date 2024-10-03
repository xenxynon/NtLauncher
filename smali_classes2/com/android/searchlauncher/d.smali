.class public Lcom/android/searchlauncher/d;
.super Lcom/android/launcher3/qsb/QsbWidgetHostView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/views/BaseDragLayer$TouchCompleteListener;


# instance fields
.field private final g:Lcom/android/launcher3/Launcher;

.field private final h:Lcom/android/launcher3/CheckLongPressHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/qsb/QsbWidgetHostView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/searchlauncher/d;->g:Lcom/android/launcher3/Launcher;

    new-instance p1, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {p1, p0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    iput-object p1, p0, Lcom/android/searchlauncher/d;->h:Lcom/android/launcher3/CheckLongPressHelper;

    return-void
.end method

.method public static synthetic f(Lcom/android/searchlauncher/d;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/searchlauncher/d;->j(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static g()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.gsa.smartspace.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x50080000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private h(Landroid/view/View;ILandroid/graphics/Rect;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/android/searchlauncher/d;->h(Landroid/view/View;ILandroid/graphics/Rect;)I

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/searchlauncher/d;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_2
    return p2
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/android/searchlauncher/d;->g()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private j(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/searchlauncher/d;->g()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    iget-object p0, p0, Lcom/android/searchlauncher/d;->h:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/android/searchlauncher/SmartspaceQsbWidget;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/searchlauncher/d;->h:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/android/searchlauncher/d;->h:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result p0

    return p0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/searchlauncher/d;->i(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->performHapticFeedback(I)Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/searchlauncher/d;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iput v2, v1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p0, v2, p1}, Lcom/android/searchlauncher/d;->h(Landroid/view/View;ILandroid/graphics/Rect;)I

    move-result p1

    int-to-float p1, p1

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v1, Landroid/graphics/RectF;->bottom:F

    new-instance p1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    iget-object v3, p0, Lcom/android/searchlauncher/d;->g:Lcom/android/launcher3/Launcher;

    const v4, 0x7f12024d

    const v5, 0x7f0802d9

    sget-object v6, Lcom/android/searchlauncher/b;->h:Lcom/android/searchlauncher/b;

    new-instance v7, Lcom/android/searchlauncher/c;

    invoke-direct {v7, p0}, Lcom/android/searchlauncher/c;-><init>(Lcom/android/searchlauncher/d;)V

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    iget-object p0, p0, Lcom/android/searchlauncher/d;->g:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, v1, p1, v0}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/views/ActivityContext;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchComplete()V
    .locals 1

    iget-object v0, p0, Lcom/android/searchlauncher/d;->h:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/searchlauncher/d;->h:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/searchlauncher/d;->h:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method
