.class public Lcom/android/launcher3/folder/LauncherDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;
    }
.end annotation


# instance fields
.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/folder/LauncherDelegate$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/LauncherDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/LauncherDelegate;)Lcom/android/launcher3/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method static from(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/LauncherDelegate;
    .locals 1

    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/folder/LauncherDelegate;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/LauncherDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-void
.end method

.method forEachVisibleWorkspacePage(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    return-void
.end method

.method getLauncher()Lcom/android/launcher3/Launcher;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object p0

    return-object p0
.end method

.method init(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/BaseFolderIcon;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->setDragController(Lcom/android/launcher3/dragndrop/DragController;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getFocusHandler()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method interceptOutsideTouch(Landroid/view/MotionEvent;Lcom/android/launcher3/views/BaseDragLayer;Lcom/android/launcher3/folder/Folder;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p3, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return v1
.end method

.method isDraggingEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result p0

    return p0
.end method

.method replaceFolderWithFinalItem(Lcom/android/launcher3/folder/Folder;)Z
    .locals 2

    new-instance v0, Lcom/android/launcher3/folder/LauncherDelegate$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/folder/LauncherDelegate$1;-><init>(Lcom/android/launcher3/folder/LauncherDelegate;Lcom/android/launcher3/folder/Folder;)V

    iget-object p0, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->performDestroyAnimation(Ljava/lang/Runnable;)V

    :goto_1
    return v1
.end method
