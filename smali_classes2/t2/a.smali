.class public final Lt2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private final g:Lcom/android/launcher3/Launcher;

.field private h:Lcom/nothing/launcher/card/r;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/a;->g:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 1

    iget-object v0, p0, Lt2/a;->h:Lcom/nothing/launcher/card/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nothing/launcher/card/r;->k0()V

    :cond_0
    iget-object v0, p0, Lt2/a;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1

    const-string p2, "dragObject"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/nothing/launcher/card/r;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Lcom/nothing/launcher/card/r;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lt2/a;->h:Lcom/nothing/launcher/card/r;

    invoke-virtual {p1}, Lcom/nothing/launcher/card/r;->n0()V

    sget-object v0, Ln5/t;->a:Ln5/t;

    :cond_1
    if-nez v0, :cond_2

    iget-object p1, p0, Lt2/a;->g:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_2
    return-void
.end method
