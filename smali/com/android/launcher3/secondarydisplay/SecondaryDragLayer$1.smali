.class Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->onIconLongClicked(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDragView:Lcom/android/launcher3/dragndrop/DragView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/dragndrop/DragView<",
            "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

.field final synthetic val$options:Lcom/android/launcher3/dragndrop/DragOptions;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    iput-object p2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->val$options:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->lambda$onPreDragStart$0(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-void
.end method

.method private synthetic lambda$onPreDragStart$0(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    invoke-static {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->access$600(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->this$0:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    invoke-static {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->access$500(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-void
.end method


# virtual methods
.method public onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    return-void
.end method

.method public onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->shouldStartDrag(D)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->val$options:Lcom/android/launcher3/dragndrop/DragOptions;

    new-instance v2, Lcom/android/launcher3/secondarydisplay/a;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/launcher3/secondarydisplay/a;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V

    invoke-virtual {p1, v2}, Lcom/android/launcher3/dragndrop/DragView;->setOnAnimationEndCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public shouldStartDrag(D)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragView;->isScaleAnimationFinished()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
