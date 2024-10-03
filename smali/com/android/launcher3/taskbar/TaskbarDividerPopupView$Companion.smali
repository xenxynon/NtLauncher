.class public final Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAndPopulate(Landroid/view/View;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
            ")",
            "Lcom/android/launcher3/taskbar/TaskbarDividerPopupView<",
            "*>;"
        }
    .end annotation

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "taskbarActivityContext"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p2

    const v0, 0x7f0e0159

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type com.android.launcher3.taskbar.TaskbarDividerPopupView<*>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;->access$populateForView(Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;Landroid/view/View;)Lcom/android/launcher3/taskbar/TaskbarDividerPopupView;

    move-result-object p0

    return-object p0
.end method
