.class public final Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/card/CardWidgetResizeFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V
    .locals 0

    invoke-static {p0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame$a;->c(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V

    return-void
.end method

.method private static final c(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V
    .locals 1

    const-string v0, "$this_run"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->g(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Z)V

    invoke-virtual {p0}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->tryShowReconfigurableWidgetEducationTip()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V
    .locals 3

    const-string p0, "card"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cellLayout"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0e0052

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    instance-of v1, p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p0, Lcom/nothing/launcher/card/CardWidgetResizeFrame;

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_3

    invoke-static {p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->h(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/nothing/launcher/card/r;)V

    invoke-static {p0, p1, p2}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->f(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Lcom/nothing/launcher/card/r;Lcom/android/launcher3/CellLayout;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    if-eqz p2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    :cond_1
    const/4 p1, 0x1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean p1, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {p0, p1}, Lcom/nothing/launcher/card/CardWidgetResizeFrame;->e(Lcom/nothing/launcher/card/CardWidgetResizeFrame;Z)V

    new-instance p1, Lcom/nothing/launcher/card/n;

    invoke-direct {p1, p0}, Lcom/nothing/launcher/card/n;-><init>(Lcom/nothing/launcher/card/CardWidgetResizeFrame;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
