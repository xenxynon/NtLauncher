.class Lcom/android/launcher3/popup/PopupContainerWithArrow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field final synthetic val$updateIconUi:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iput-boolean p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->val$updateIconUi:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->val$updateIconUi:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object p1, p1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-boolean p2, p1, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-nez p2, :cond_2

    iget-object p1, p1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->val$updateIconUi:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-boolean v0, p1, Lcom/android/launcher3/popup/ArrowPopup;->mIsAboveIcon:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mOriginalIcon:Lcom/android/launcher3/BubbleTextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public shouldStartDrag(D)Z
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    int-to-double v0, p0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
