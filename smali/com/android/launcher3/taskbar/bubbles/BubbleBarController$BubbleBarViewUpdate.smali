.class Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BubbleBarViewUpdate"
.end annotation


# instance fields
.field addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

.field bubbleKeysInOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field currentBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;",
            ">;"
        }
    .end annotation
.end field

.field expanded:Z

.field expandedChanged:Z

.field removedBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/common/bubbles/RemovedBubble;",
            ">;"
        }
    .end annotation
.end field

.field selectedBubbleKey:Ljava/lang/String;

.field suppressedBubbleKey:Ljava/lang/String;

.field unsuppressedBubbleKey:Ljava/lang/String;

.field updatedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->g:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expandedChanged:Z

    iget-boolean v0, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->h:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expanded:Z

    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->selectedBubbleKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->suppressedBubbleKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->unsuppressedBubbleKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->n:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->removedBubbles:Ljava/util/List;

    iget-object p1, p1, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->o:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->bubbleKeysInOrder:Ljava/util/List;

    return-void
.end method
